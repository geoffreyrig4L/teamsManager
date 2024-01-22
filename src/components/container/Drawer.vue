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
    <div class="drawer-content flex flex-col items-center justify-center">
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
        <button><img src="/images/register.png" className="text-white hover:scale-[120%] duration-400 transition-all"  alt="login" width="30" height="30"/></button>
      </ul>
    </div>
    </div>
</template>
