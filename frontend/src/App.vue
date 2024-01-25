<script setup lang="ts">
import axios from "axios";
import Drawer from "./components/Drawer.vue";
import { onMounted, ref } from "vue";
import { useRoute } from "vue-router";

const route = useRoute();
const teams = ref([]);

const fetchData = async () => {
  try {
    const res = await axios.get(`http://localhost:8080/teams`);
    teams.value = Object.values(res.data);
    console.log(teams.value); // Log the teams after fetching
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
