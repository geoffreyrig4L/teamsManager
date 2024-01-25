import { createRouter, createWebHistory } from "vue-router";
import TeamList from "../views/TeamList.vue";
import Create from "../views/Create.vue";
import Update from "../views/Update.vue";
import Delete from "../views/Delete.vue";
import Login from "../views/Login.vue";

const routes = [
  { path: "/", component: TeamList },
  { path: "/login", component: Login },
  {
    path: "/create",
    component: Create,
    meta: {
      requiresAuth: true,
    },
  },
  {
    path: "/update",
    component: Update,
    meta: {
      requiresAuth: true,
    },
  },
  {
    path: "/delete",
    component: Delete,
    meta: {
      requiresAuth: true,
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
