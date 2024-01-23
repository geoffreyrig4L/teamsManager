import { createRouter, createWebHistory } from "vue-router";
import TeamList from "../views/TeamList.vue";
import Create from "../views/Create.vue";
import Update from "../views/Update.vue";
import Delete from "../views/Delete.vue";
import Login from "../views/Login.vue";

const routes = [
  { path: "/", component: TeamList },
  { path: "/login", component: Login },
  { path: "/create", component: Create },
  { path: "/update", component: Update },
  { path: "/delete", component: Delete },
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

export default router;
