<script setup lang="ts">
import { useCasdoor } from "casdoor-vue-sdk";

const casdoor = useCasdoor();

function login() {
  window.location.href = casdoor.getSigninUrl();
}

defineProps<{
  token?: boolean;
  logout?: any;
}>();
</script>

<template>
  <div class="drawer drawer-open">
    <input type="checkbox" className="drawer-toggle" />
    <div class="drawer-content">
      <slot></slot>
    </div>
    <div class="drawer-side">
      <ul class="menu p-4 w-80 min-h-full bg-base-200 text-base-content">
        <div class="flex items-center gap-4 my-4">
          <img
            :src="token ? '/logos/om.svg' : '/logos/arsenal.svg'"
            alt="My Image"
            width="50"
            height="auto"
          />
          <h1 class="text-2xl font-bold">Team Manager</h1>
        </div>
        <li>
          <h2 className="menu-title">Voir</h2>
          <ul>
            <li>
              <router-link to="/" :class="{ active: $route.path == '/' }">
                Voir les équipes
              </router-link>
            </li>
          </ul>
        </li>
        <li v-if="token">
          <h2 className="menu-title">Gérer</h2>
          <ul>
            <li>
              <router-link
                to="/create"
                :class="{ active: $route.path == '/create' }"
              >
                Créer une équipe
              </router-link>
            </li>
            <li>
              <router-link
                to="/update"
                :class="{ active: $route.path == '/update' }"
              >
                Modifier une équipe
              </router-link>
            </li>
            <li :class="{ disabled: true }">
              <router-link
                to="/delete"
                :class="{ active: $route.path == '/delete' }"
              >
                Supprimer une équipe
              </router-link>
            </li>
          </ul>
        </li>
      </ul>
      <div class="absolute bottom-4 left-0 p-4 w-full" v-if="!token">
        <button class="btn btn-ghost w-full text-xl" @click="login">
          Se connecter
          <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
  <path stroke-linecap="round" stroke-linejoin="round" d="M8.25 9V5.25A2.25 2.25 0 0 1 10.5 3h6a2.25 2.25 0 0 1 2.25 2.25v13.5A2.25 2.25 0 0 1 16.5 21h-6a2.25 2.25 0 0 1-2.25-2.25V15M12 9l3 3m0 0-3 3m3-3H2.25" />
</svg>

        </button>
      </div>
      <div class="absolute bottom-4 left-0 p-4 w-full" v-else>
        <button class="btn btn-ghost w-full text-xl" @click="logout">
          Se déconnecter
          <svg
            xmlns="http://www.w3.org/2000/svg"
            fill="none"
            viewBox="0 0 24 24"
            stroke-width="1.5"
            stroke="currentColor"
            class="w-6 h-6"
          >
            <path
              stroke-linecap="round"
              stroke-linejoin="round"
              d="M15.75 9V5.25A2.25 2.25 0 0 0 13.5 3h-6a2.25 2.25 0 0 0-2.25 2.25v13.5A2.25 2.25 0 0 0 7.5 21h6a2.25 2.25 0 0 0 2.25-2.25V15m3 0 3-3m0 0-3-3m3 3H9"
            />
          </svg>
        </button>
      </div>
    </div>
  </div>
</template>
