<script setup lang="ts">
import Drawer from "./components/Drawer.vue";
import { useRoute } from "vue-router";
import { useCasdoor } from "casdoor-vue-sdk";
import { onUpdated } from 'vue';
import axios from "axios";

const route = useRoute();
const casdoor = useCasdoor();

onUpdated(() => {
  if(localStorage.getItem("token") === undefined || localStorage.getItem("token") === null){
      window.location.href = casdoor.getSigninUrl();
      const urlParams = new URLSearchParams(window.location.search);
      const authorizationCode = urlParams.get('code');
      if (authorizationCode) {
      const code : string = authorizationCode;
      try {
        axios.get(`http://localhost:8080/getToken?code=${code}`).then((response : any) => {
            console.log(response.data.token);
            localStorage.setItem("token", response.data.token);
          })
      } catch(e) {
        console.log(e);
      }
    }
  }
});
</script>

<template>
  <router-view v-if="route.path == '/login'"></router-view>
  <Drawer v-else>
    <router-view></router-view>
  </Drawer>
</template>
