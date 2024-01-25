<script setup lang="ts">
import { useCasdoor } from "casdoor-vue-sdk";
import { onMounted } from "vue";
import axios from "axios";

const casdoor = useCasdoor();

onMounted(() => {
  const urlParams = new URLSearchParams(window.location.search);
  const authorizationCode = urlParams.get('code');
  if (authorizationCode) {
    const code : string = authorizationCode;
    try {
      axios.get(`http://localhost:8080/getToken?code=${code}`).then((response : any) => {
        localStorage.setItem("token", response.data.token);
      })
    } catch(e) {
      console.log(e);
    }
  }
});


function login() {
  window.location.href = casdoor.getSigninUrl();
}
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
            src="/logos/om.svg"
            alt="My Image"
            width="50"
            height="auto"
          />
          <h1 class="text-2xl font-bold">Team Manager</h1>
        </div>
        <li>
          <h2 className="menu-title">View</h2>
          <ul>
            <li>
              <router-link to="/" :class="{ active: $route.path == '/' }">
                Teams List
              </router-link>
            </li>
          </ul>
        </li>
        <li>
          <h2 className="menu-title">Manage</h2>
          <ul>
            <li>
              <router-link
                to="/create"
                :class="{ active: $route.path == '/create' }"
              >
                Create Team
              </router-link>
            </li>
            <li>
              <router-link
                to="/update"
                :class="{ active: $route.path == '/update' }"
              >
                Update Team
              </router-link>
            </li>
            <li :class="{ disabled: true }">
              <router-link
                to="/delete"
                :class="{ active: $route.path == '/delete' }"
              >
                Delete Team
              </router-link>
            </li>
          </ul>
        </li>
      </ul>
      <div class="absolute bottom-4 left-0 p-4 w-full">
        <button class="btn btn-ghost w-full text-xl" @click="login">
          Login
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
