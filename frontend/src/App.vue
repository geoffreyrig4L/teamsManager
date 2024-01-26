<script setup lang="ts">
import axios from "axios";
import Drawer from "./components/Drawer.vue";
import { useRoute } from "vue-router";
import { onMounted, onUpdated, ref } from "vue";
import { useCasdoor } from "casdoor-vue-sdk";

const casdoor = useCasdoor();

function login() {
  window.location.href = casdoor.getSigninUrl();
  const urlParams = new URLSearchParams(window.location.search);
  const authorizationCode = urlParams.get('code');
  if (authorizationCode) {
    const code : string = authorizationCode;
    try {
      axios.get(`http://localhost:8080/getToken?code=${code}`).then((response : any) => {
        localStorage.setItem("token", response.data.token);
      })
    } catch(e) {
      console.log(e);
    }
  }
}

onUpdated(() => {
  const token = localStorage.getItem("token") ?? "";
    try {
      axios.get(`http://localhost:8080/verifyToken?token=${token}`).then((response : any) => {
        if(!response.data.active){
          login()
        }
      })
    } catch(e) {
      console.log(e);
    }
  })

const route = useRoute();
const teams = ref([]);

const fetchData = async () => {
  try {
    const res = await axios.get(`http://localhost:8080/teams`);
    teams.value = Object.values(res.data);
  } catch (error) {
    console.error("Error fetching teams:", error);
  }
};

onMounted(fetchData);
</script>

<template>
  <router-view v-if="route.path == '/login'"></router-view>
  <Drawer v-else>
    <router-view :teams="teams"></router-view>
  </Drawer>
</template>
