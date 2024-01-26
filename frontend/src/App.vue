<script setup lang="ts">
import axios from "axios";
import Drawer from "./components/Drawer.vue";
import { useRoute } from "vue-router";
import { onMounted, onUpdated, ref } from "vue";


onUpdated(() => {
  const token = localStorage.getItem("token") ?? "";
    try {
      axios.get(`http://localhost:8080/verifyToken?token=${token}`).then((response : any) => {
        if(!response.data.active){
          localStorage.removeItem("token");
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
