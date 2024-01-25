import { test, expect } from "vitest";
import { mount } from "@vue/test-utils";
import { createRouter, createWebHistory } from "vue-router";
import { routes } from "../router";
import App from "../App.vue";

const router = createRouter({
  history: createWebHistory(),
  routes: routes,
});

router.beforeEach((to, _, next) => {
  if (to.matched.some((record) => record.meta.requiresAuth)) {
    next("/login");
  } else {
    next();
  }
});

test(`TEST (just changing url in router) go to home page with the team list without a logged `, async () => {
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

  expect(wrapper.html()).toContain("Olympique de Marseille");
});

test(`TEST (just changing url in router) go to create team page with the team list without a logged `, async () => {
  router.push("/create");

  await router.isReady();

  expect(window.location.pathname).not.toEqual("/create");
});

test(`TEST (check html loaded) go to create team page with the team list without a logged `, async () => {
  router.push("/create");

  await router.isReady();

  const wrapper = mount(App, {
    global: {
      plugins: [router],
    },
  });

  expect(wrapper.html()).toContain("Login");
});

test(`TEST (just changing url in router) go to update team page with the team list without a logged `, async () => {
  router.push("/update");

  await router.isReady();

  expect(window.location.pathname).not.toEqual("/update");
});

test(`TEST (check html loaded) go to update team page with the team list without a logged `, async () => {
  router.push("/update");

  await router.isReady();

  const wrapper = mount(App, {
    global: {
      plugins: [router],
    },
  });

  expect(wrapper.html()).toContain("Login");
});

test(`TEST (just changing url in router) go to delete team page with the team list without a logged `, async () => {
  router.push("/delete");

  await router.isReady();

  expect(window.location.pathname).not.toEqual("/delete");
});

test(`TEST (check html loaded) go to delete team page with the team list without a logged `, async () => {
  router.push("/delete");

  await router.isReady();

  const wrapper = mount(App, {
    global: {
      plugins: [router],
    },
  });

  expect(wrapper.html()).toContain("Login");
});
