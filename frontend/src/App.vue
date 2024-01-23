<script setup lang="ts">
import Drawer from "./components/Drawer.vue";
import { useRoute } from "vue-router";

const route = useRoute();
</script>

<template>
  <router-view v-if="route.path == '/login'"></router-view>
  <Drawer v-if="route.path != '/login'">
    <router-view></router-view>
  </Drawer>
</template>
