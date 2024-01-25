import { mount } from "@vue/test-utils";
import { createRouter, createWebHistory } from "vue-router";
import { describe, expect, test } from "vitest";

import App from "../App.vue";
import TeamList from "../views/TeamList.vue";
import Create from "../views/Create.vue";
import Update from "../views/Update.vue";
import Delete from "../views/Delete.vue";
import { routes } from "../router";
import Login from "../views/Login.vue";

describe("Home Page", () => {
  test("change location to '/' via routing", async () => {
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

    router.push("/");

    await router.isReady();

    expect(window.location.pathname).toBe("/");
  });

  test("try to renders TeamList component via routing", async () => {
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

    router.push("/");

    await router.isReady();

    const wrapper = mount(App, {
      global: {
        plugins: [router],
      },
    });

    expect(wrapper.findComponent(TeamList).exists()).toBe(true);
  });
});

describe("Create Page", () => {
  test("change location to '/create' via routing", async () => {
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

    router.push("/create");

    await router.isReady();

    expect(window.location.pathname).not.toBe("/create");
    expect(window.location.pathname).toBe("/login");
  });

  test("try to renders Create component via routing", async () => {
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

    router.push("/create");

    await router.isReady();

    const wrapper = mount(App, {
      global: {
        plugins: [router],
      },
    });

    expect(wrapper.findComponent(Create).exists()).toBe(false);
    expect(wrapper.findComponent(Login).exists()).toBe(true);
  });
});

describe("Update Page", () => {
  test("change location to '/update' via routing", async () => {
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

    router.push("/update");

    await router.isReady();

    expect(window.location.pathname).not.toBe("/update");
    expect(window.location.pathname).toBe("/login");
  });

  test("try to renders Update component via routing", async () => {
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

    router.push("/update");

    await router.isReady();

    const wrapper = mount(App, {
      global: {
        plugins: [router],
      },
    });

    expect(wrapper.findComponent(Update).exists()).toBe(false);
    expect(wrapper.findComponent(Login).exists()).toBe(true);
  });
});

describe("Delete Page", () => {
  test("change location to '/delete' via routing", async () => {
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

    router.push("/delete");

    await router.isReady();

    expect(window.location.pathname).not.toBe("/delete");
    expect(window.location.pathname).toBe("/login");
  });

  test("try to renders Delete component via routing", async () => {
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

    router.push("/delete");

    await router.isReady();

    const wrapper = mount(App, {
      global: {
        plugins: [router],
      },
    });

    expect(wrapper.findComponent(Delete).exists()).toBe(false);
    expect(wrapper.findComponent(Login).exists()).toBe(true);
  });
});

//---------------------------------------------------------------------------------------------------------------------------------------------------//

describe("Home Page with auth", () => {
  test("change location to '/' via routing and auth", async () => {
    const router = createRouter({
      history: createWebHistory(),
      routes: routes,
    });

    router.beforeEach((to, _, next) => {
      if (to.matched.some((record) => record.meta.requiresAuth)) {
        if (to.query.auth) {
          next();
        } else {
          next("/login");
        }
      } else {
        next();
      }
    });

    router.push({ path: "/", query: { auth: 1 } });

    await router.isReady();

    expect(window.location.pathname).toBe("/");
  });

  test("try to renders TeamList component via routing and auth", async () => {
    const router = createRouter({
      history: createWebHistory(),
      routes: routes,
    });

    router.beforeEach((to, _, next) => {
      if (to.matched.some((record) => record.meta.requiresAuth)) {
        if (to.query.auth) {
          next();
        } else {
          next("/login");
        }
      } else {
        next();
      }
    });

    router.push({ path: "/", query: { auth: 1 } });

    await router.isReady();

    const wrapper = mount(App, {
      global: {
        plugins: [router],
      },
    });

    expect(wrapper.findComponent(TeamList).exists()).toBe(true);
  });
});

describe("Create Page with auth", () => {
  test("change location to '/create' via routing and auth", async () => {
    const router = createRouter({
      history: createWebHistory(),
      routes: routes,
    });

    router.beforeEach((to, _, next) => {
      if (to.matched.some((record) => record.meta.requiresAuth)) {
        if (to.query.auth) {
          next();
        } else {
          next("/login");
        }
      } else {
        next();
      }
    });

    router.push({ path: "/create", query: { auth: 1 } });

    await router.isReady();

    expect(window.location.pathname).toBe("/create");
  });

  test("try to renders Create component via routing and auth", async () => {
    const router = createRouter({
      history: createWebHistory(),
      routes: routes,
    });

    router.beforeEach((to, _, next) => {
      if (to.matched.some((record) => record.meta.requiresAuth)) {
        if (to.query.auth) {
          next();
        } else {
          next("/login");
        }
      } else {
        next();
      }
    });

    router.push({ path: "/create", query: { auth: 1 } });

    await router.isReady();

    const wrapper = mount(App, {
      global: {
        plugins: [router],
      },
    });

    expect(wrapper.findComponent(Create).exists()).toBe(true);
  });
});

describe("Update Page with auth", () => {
  test("change location to '/update' via routing and auth", async () => {
    const router = createRouter({
      history: createWebHistory(),
      routes: routes,
    });

    router.beforeEach((to, _, next) => {
      if (to.matched.some((record) => record.meta.requiresAuth)) {
        if (to.query.auth) {
          next();
        } else {
          next("/login");
        }
      } else {
        next();
      }
    });

    router.push({ path: "/update", query: { auth: 1 } });

    await router.isReady();

    expect(window.location.pathname).toBe("/update");
  });

  test("try to renders Update component via routing and auth", async () => {
    const router = createRouter({
      history: createWebHistory(),
      routes: routes,
    });

    router.beforeEach((to, _, next) => {
      if (to.matched.some((record) => record.meta.requiresAuth)) {
        if (to.query.auth) {
          next();
        } else {
          next("/login");
        }
      } else {
        next();
      }
    });

    router.push({ path: "/update", query: { auth: 1 } });

    await router.isReady();

    const wrapper = mount(App, {
      global: {
        plugins: [router],
      },
    });

    expect(wrapper.findComponent(Update).exists()).toBe(true);
  });
});

describe("Delete Page with auth", () => {
  test("change location to '/delete' via routing and auth", async () => {
    const router = createRouter({
      history: createWebHistory(),
      routes: routes,
    });

    router.beforeEach((to, _, next) => {
      if (to.matched.some((record) => record.meta.requiresAuth)) {
        if (to.query.auth) {
          next();
        } else {
          next("/login");
        }
      } else {
        next();
      }
    });

    router.push({ path: "/delete", query: { auth: 1 } });

    await router.isReady();

    expect(window.location.pathname).toBe("/delete");
  });

  test("try to renders Update component via routing and auth", async () => {
    const router = createRouter({
      history: createWebHistory(),
      routes: routes,
    });

    router.beforeEach((to, _, next) => {
      if (to.matched.some((record) => record.meta.requiresAuth)) {
        if (to.query.auth) {
          next();
        } else {
          next("/login");
        }
      } else {
        next();
      }
    });

    router.push({ path: "/delete", query: { auth: 1 } });

    await router.isReady();

    const wrapper = mount(App, {
      global: {
        plugins: [router],
      },
    });

    expect(wrapper.findComponent(Delete).exists()).toBe(true);
  });
});
