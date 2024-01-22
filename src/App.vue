<script setup lang="ts">
import { computed, ref } from "vue";
import Drawer from "./components/container/Drawer.vue";
import TeamList from "./components/view/TeamList.vue";
import Create from "./components/view/Create.vue";
import Update from "./components/view/Update.vue";
import Delete from "./components/view/Delete.vue";

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
