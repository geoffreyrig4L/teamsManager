<script setup lang="ts">
import axios from "axios";
import Drawer from "./components/Drawer.vue";
import { useRoute, useRouter } from "vue-router";
import { onMounted, onUpdated, ref } from "vue";

const tokenRef = ref(false);
const router = useRouter();

onUpdated(() => {
  const token = localStorage.getItem("token") ?? "";
  try {
    axios
      .get(`http://localhost:8080/verifyToken?token=${token}`)
      .then((response: any) => {
        if (!response.data.active) {
          localStorage.removeItem("token");
          tokenRef.value = false;
          router.push("/");
        }
      });
  } catch (e) {
    console.log(e);
  }
});

onMounted(() => {
  const urlParams = new URLSearchParams(window.location.search);
  const authorizationCode = urlParams.get("code");
  if (authorizationCode) {
    const code: string = authorizationCode;
    try {
      axios
        .get(`http://localhost:8080/getToken?code=${code}`)
        .then((response: any) => {
          localStorage.setItem("token", response.data.token);
          tokenRef.value = true;
        });
    } catch (e) {
      console.log(e);
    }
  }
});

function logout() {
  localStorage.removeItem("token");
  tokenRef.value = false;

  router.push("/");
}

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
  <Drawer v-else :token="tokenRef" :logout="logout">
    <router-view :teams="teams"></router-view>
  </Drawer>
</template>
