<script setup lang="ts">
import { computed, ref } from "vue";
import Drawer from "./components/Drawer.vue";
import TeamList from "./components/TeamList.vue";
import Create from "./components/Create.vue";
import Update from "./components/Update.vue";
import Delete from "./components/Delete.vue";

interface RouteConfig {
  [key: string]: any;
}

const routes: RouteConfig = {
  "/": TeamList,
  "/create": Create,
  "/update": Update,
  "/delete": Delete,
};

const currentPath = ref(window.location.pathname);

window.addEventListener("hashchange", () => {
  currentPath.value = window.location.pathname;
});

const componentToLoad = computed(() => {
  return routes[currentPath.value];
});
</script>

<template>
  <Drawer>
    <component :is="componentToLoad" />
  </Drawer>
</template>
