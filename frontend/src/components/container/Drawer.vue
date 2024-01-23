<script setup lang="ts">
import { ref } from "vue";

const path = ref(window.location.pathname);

window.addEventListener("hashchange", () => {
  path.value = window.location.pathname;
});

const isTeamList = ref(path.value == "/");
const isCreateTeam = ref(path.value == "/create");
const isUpdateTeam = ref(path.value == "/update");
const isDeleteTeam = ref(path.value == "/delete");
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
            src="/images/logos/om.svg"
            alt="My Image"
            width="50"
            height="auto"
          />
          <h1 class="text-2xl font-bold">Team Manager</h1>
        </div>
        <li>
          <h2 className="menu-title">View</h2>
          <ul>
            <li><a :class="{ active: isTeamList }" href="/">Teams List</a></li>
          </ul>
        </li>
        <li>
          <h2 className="menu-title">Manage</h2>
          <ul>
            <li>
              <a :class="{ active: isCreateTeam }" href="/create"
                >Create Team</a
              >
            </li>
            <li>
              <a :class="{ active: isUpdateTeam }" href="/update"
                >Update Team</a
              >
            </li>
            <li>
              <a :class="{ active: isDeleteTeam }" href="/delete"
                >Delete Team</a
              >
            </li>
          </ul>
        </li>
      </ul>
      <div class="absolute bottom-4 left-0 p-4 w-full">
        <button class="btn btn-ghost w-full text-xl">
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
              d="M8.25 9V5.25A2.25 2.25 0 0 1 10.5 3h6a2.25 2.25 0 0 1 2.25 2.25v13.5A2.25 2.25 0 0 1 16.5 21h-6a2.25 2.25 0 0 1-2.25-2.25V15M12 9l3 3m0 0-3 3m3-3H2.25"
            />
          </svg>
        </button>
      </div>
    </div>
  </div>
</template>
