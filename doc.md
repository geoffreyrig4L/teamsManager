
## Explication du test back-end

Le seul [test](https://github.com/geoffreyrig4L/teamsManager/blob/main/backend/tests/json.test.js) back-end à valider permet de vérifier que le parsing du fichier json contenant les données fonctionne.

```js
test('JSON parsing', () => {
  
    let json = require("../data/teams.json");
    const expected = JSON.stringify({name: 'Paris Saint Germain',
    description: 'Rêvons plus grand',
    urlLogo: 'psg.svg'});
    expect(JSON.stringify(json.psg)).toBe(expected);
    
})
```

Il prend comme entrée de validation l'objet représentant l'équipe du PSG dans le fichier json parsé stringifié. Il est attendu un objet JSON instancié stringifié.

## Explication des test front-end

Il y a 8 sections de test pour le front-end

- La section de la page d'accueil 

[Le test de redirection vers la page d'accueil](https://github.com/geoffreyrig4L/teamsManager/blob/main/frontend/src/test/router.test.ts#L14)

```js
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
```

Le test prend en entrée l'url actuelle du navigateur sensé avoir été redirigé vers l'accueil, et attend le chemin / car c'est le chemin de l'accueil du site

[Le test de rendu de la liste des équipes via le routing ](https://github.com/geoffreyrig4L/teamsManager/blob/main/frontend/src/test/router.test.ts#L35)

```js
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
```

Le test prend en entrée le component généré par Vue sensé contenir la liste des équipes et vérifie qu'il a été généré par Vue

- La page de création d'équipe

[Le test de redirection vers la page de création d'équipe](https://github.com/geoffreyrig4L/teamsManager/blob/main/frontend/src/test/router.test.ts#L64)

```js
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
```

Le test prend en entrée l'url du navigateur après la redirection, et on attend que l'url soit /login et non /create, car l'utilisateur n'est pas connecté.

[Le test de rendu de la page de création](https://github.com/geoffreyrig4L/teamsManager/blob/main/frontend/src/test/router.test.ts#L86)

```js
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
```

Le test prend en entrée le component généré par Vue sensé contenir la page de création et la page de login et vérifie que le component de création n'est pas créé mais que le component de login est créé car l'utilisateur n'est pas connecté.

- La page de mise à jour d'une équipe

[Le test de redirection vers la page de mise à jour d'une équipe](https://github.com/geoffreyrig4L/teamsManager/blob/main/frontend/src/test/router.test.ts#L116)

```js
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
```

Le test prend en entrée l'url du navigateur après la redirection, et on attend que l'url soit /login et non /update, car l'utilisateur n'est pas connecté.

[Le test de rendu de la page de mise à jour d'une équipe](https://github.com/geoffreyrig4L/teamsManager/blob/main/frontend/src/test/router.test.ts#L138)

```js
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
  ```

  Le test prend en entrée le component généré par Vue sensé contenir la page de mise à jour et la page de login et vérifie que le component de mise à jour n'est pas créé mais que le component de login est créé car l'utilisateur n'est pas connecté.

- La page de suppression d'une équipe

[Le test de redirection vers la page de suppression d'une équipe](https://github.com/geoffreyrig4L/teamsManager/blob/main/frontend/src/test/router.test.ts#L168)

```js
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
```

Le test prend en entrée l'url du navigateur après la redirection, et on attend que l'url soit /login et non /delete, car l'utilisateur n'est pas connecté.

[Le test de rendu de la page de suppression d'une équipe](https://github.com/geoffreyrig4L/teamsManager/blob/main/frontend/src/test/router.test.ts#L190)

```js
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
```

Le test prend en entrée le component généré par Vue sensé contenir la page de suppression et la page de login et vérifie que le component de suppression n'est pas créé mais que le component de login est créé car l'utilisateur n'est pas connecté.

## Les pages avec un utilisateur connecté

- La page d'accueil

[Le test de redirection vers la page d'accueil](https://github.com/geoffreyrig4L/teamsManager/blob/main/frontend/src/test/router.test.ts#L222)

```js
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
```

Le test prend en entrée l'url actuelle du navigateur sensé avoir été redirigé vers l'accueil, et attend le chemin / car c'est le chemin de l'accueil du site

[Le test de rendu de la liste des équipes](https://github.com/geoffreyrig4L/teamsManager/blob/main/frontend/src/test/router.test.ts#L247)

```js
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
```

Le test prend en entrée le component généré par Vue sensé contenir la liste des équipes et vérifie qu'il a été généré par Vue

- La page de création d'une équipe

[Le test de redirection vers la page de création d'équipe](https://github.com/geoffreyrig4L/teamsManager/blob/main/frontend/src/test/router.test.ts#L280)

```js
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
```

Le test prend en entrée l'url du navigateur après la redirection, et on attend que l'url soit /Create.

[Le test de rendu de la page de création](https://github.com/geoffreyrig4L/teamsManager/blob/main/frontend/src/test/router.test.ts#L305)

```js
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
```

Le test prend en entrée le component généré par Vue sensé contenir la page de création et vérifie que le component de création est créé.

- La page de mise à jour d'une équipe

[Le test de redirection vers la page de mise à jour d'une équipe](https://github.com/geoffreyrig4L/teamsManager/blob/main/frontend/src/test/router.test.ts#L338)

```js
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
```

Le test prend en entrée l'url du navigateur après la redirection, et on attend que l'url soit /update.

[Le test de rendu de la page de mise à jour d'une équipe](https://github.com/geoffreyrig4L/teamsManager/blob/main/frontend/src/test/router.test.ts#L363)

```js
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
```

Le test prend en entrée le component généré par Vue sensé contenir la page de mise à jour et vérifie que le component de mise à jour est créé.

- La page de suppression d'une équipe

[Le test de redirection vers la page de suppression d'une équipe](https://github.com/geoffreyrig4L/teamsManager/blob/main/frontend/src/test/router.test.ts#L396)

```js
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
```

Le test prend en entrée l'url du navigateur après la redirection, et on attend que l'url soit /delete.

[Le test de rendu de la page de suppression d'une équipe](https://github.com/geoffreyrig4L/teamsManager/blob/main/frontend/src/test/router.test.ts#L421)

```js
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
```