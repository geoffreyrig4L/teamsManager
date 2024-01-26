import { createRouter, createWebHistory } from "vue-router";
import TeamList from "../views/TeamList.vue";
import Create from "../views/Create.vue";
import Update from "../views/Update.vue";
import Delete from "../views/Delete.vue";
import Login from "../views/Login.vue";
import axios from "axios";

const routes = [
  { path: "/", component: TeamList, props: true },
  { path: "/callback", redirect: "/" },
  { path: "/login", component: Login },
  {
    path: "/create",
    component: Create,
    meta: {
      requiresAuth: true,
      canCreate: true,
    },
  },
  {
    path: "/update",
    component: Update,
    props: true,
    meta: {
      requiresAuth: true,
      canUpdate: true,
    },
  },
  {
    path: "/delete",
    component: Delete,
    props: true,
    meta: {
      requiresAuth: true,
      canDelete: true,
    },
  },
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

router.beforeEach((to, _, next) => {
  if (to.matched.some((record) => record.meta.requiresAuth)) {
    const token = localStorage.getItem("token");
    if (token) {
      if (to.matched.some((record) => record.meta.canCreate)) {
        axios
          .get(
            `http://localhost:8080/isPermited?token=${token}&isPermission=canCreate`
          )
          .then((res) => {
            if (res.data.authorized == true) {
              next();
            } else {
              next("/");
            }
          });
      } else if (to.matched.some((record) => record.meta.canUpdate)) {
        axios
          .get(
            `http://localhost:8080/isPermited?token=${token}&isPermission=canUpdate`
          )
          .then((res) => {
            if (res.data.authorized == true) {
              next();
            } else {
              next("/");
            }
          });
      } else if (to.matched.some((record) => record.meta.canDelete)) {
        axios
          .get(
            `http://localhost:8080/isPermited?token=${token}&isPermission=canDelete`
          )
          .then((res) => {
            if (res.data.authorized == true) {
              next();
            } else {
              next("/");
            }
          });
      }
    } else {
      next("/");
    }
  } else {
    next();
  }
});

export { routes };

export default router;
