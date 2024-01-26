import { createRouter, createWebHistory } from "vue-router";
import TeamList from "../views/TeamList.vue";
import Create from "../views/Create.vue";
import Update from "../views/Update.vue";
import Delete from "../views/Delete.vue";
import Login from "../views/Login.vue";

const routes = [
  { path: "/", component: TeamList, props: true },
  { path: "/callback", redirect: "/" },
  { path: "/login", component: Login },
  {
    path: "/create",
    component: Create,
    meta: {
      requiresAuth: false,
    },
  },
  {
    path: "/update",
    component: Update,
    props: true,
    meta: {
      requiresAuth: false,
    },
  },
  {
    path: "/delete",
    component: Delete,
    props: true,
    meta: {
      requiresAuth: false,
    },
  },
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

router.beforeEach((to, _, next) => {
  if (to.matched.some((record) => record.meta.requiresAuth)) {
    next("/login");
  } else {
    next();
  }
});

export { routes };

export default router;
