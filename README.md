# :rocket: Projet TeamsManager

Bienvenue dans la documentation du projet TeamsManager. Ce projet vise à gérer des équipes de football, permettant aux utilisateurs de créer, modifier des équipes, descriptions des clubs, des joueurs, etc. Cependant, certaines fonctionnalités seront modérées par leurs rôles.

## Technologies utilisées

- :computer: [NodeJS](https://nodejs.org/en/)
- :art: [VueJS](https://vuejs.org/)
- :file_folder: [MySQL](https://www.mysql.com/fr/)
- :whale: [Docker](https://www.docker.com/)
- :lock: [Casdoor](https://casdoor.org/)

## Installation du projet

Il vous faudra installer le projet. Pour cela, un git clone du projet est nécessaire.

```bash
git clone https://github.com/geoffreyrig4L/teamsManager
```

## Installation de Docker

Pour installer Docker, suivez les instructions de la documentation officielle de Docker [:whale: Docker](https://docs.docker.com/get-docker/).

## Installation de NodeJS

Premièrement, vous devez installer Node.js sur votre machine. Vous pouvez le télécharger depuis le site officiel de Node.js. Après avoir téléchargé Node.js, vous pouvez vérifier son installation avec la commande:

```bash
node -v
```

Déplacez-vous ensuite dans le répertoire backend avec la commande:

```bash
cd backend/
```

Pour lancer le projet backend, installez les dépendances avec la commande:

```bash
npm install
```

Pour lancer le projet, utilisez la commande:

```bash
npm run dev
```

Le projet backend est maintenant lancé sur le port 8000.

## Installation de VueJS

déplacez-vous dans le dossier frontend avec la commande:

```bash
cd frontend/
```

Pour installer Vue.js et ces dépendances, utilisez la commande:

```bash
npm install
```

Enfin, pour lancer le projet frontend, utilisez la commande:

```bash
npm run dev
```

Le projet frontend est maintenant lancé sur le port 8080.

## Lancer le conteneur Docker de Casdoor et remplir la base de données

Pull l'image Docker de Casdoor:

```bash
docker pull casbin/casdoor-all-in-one
```

Lancez le conteneur Docker et attachez-le à un volume:

```bash
docker run -d -v volume_casdoor:/mnt -p 8000:8000 casbin/casdoor-all-in-one
```

Copiez le fichier dumpfile.sql dans le volume (backend/dumpfile.sql):

```bash
docker cp dumpfile.sql id_conteneur:/mnt
```

Accédez au fichier dumpfile dans le conteneur avec la commande:

```bash
docker exec -it id_conteneur bash
cd /mnt
```

Restaurez la base de données:

```bash
mysql -u root -p casdoor < dumpfile.sql
```

## Lancement des tests unitaires et fonctionnels du projet backend

Pour lancer les tests unitaires et fonctionnels du projet backend, utilisez la commande:

```bash
npm run test
```

## Lancement des tests unitaires et fonctionnels du projet frontend

Pour lancer les tests unitaires et fonctionnels du projet frontend, utilisez la commande:

```bash
npm run test
```

Un fichier de tests sur les routes vérifie si le changement de route est bien fonctionnel et si le bon composant est appelé en fonction de la route.
Le composant LoginVue est unique aux tests.

Les tests sont automatisés grâce à GitHub Actions au moment du push sur la branche principale.

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

Le test prend en entrée le component généré par Vue sensé contenir la page de suppression et vérifie que le component de suppression est créé.