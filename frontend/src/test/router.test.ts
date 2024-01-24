import { test, expect } from "vitest";
import { createRouter, createWebHistory } from "vue-router";
import { routes } from "../router";

const router = createRouter({
  history: createWebHistory(),
  routes: routes,
});

router.beforeEach((to, from, next) => {
  if (to.matched.some((record) => record.meta.requiresAuth)) {
    next("/login");
  } else {
    next();
  }
});

test(`TEST go to home page with the team list without a logged `, async () => {
  router.push("/");

  await router.isReady();

  expect(window.location.pathname).toEqual("/");
});
