import { test, expect } from "vitest";
import { mount } from "@vue/test-utils";
import { createRouter, createWebHistory } from "vue-router";
import { routes } from "../router";
import App from "../App.vue";

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

test(`TEST (just changing url by router) go to home page with the team list without a logged `, async () => {
  router.push("/");

  await router.isReady();

  expect(window.location.pathname).toEqual("/");
});

test(`TEST (check html loaded) go to home page with the team list without a logged `, async () => {
  router.push("/");

  await router.isReady();

  const wrapper = mount(App, {
    global: {
      plugins: [router],
    },
  });

  expect(wrapper.html()).toContain("FC Barcelone");
});
