<script setup lang="ts">
import { ref } from "vue";

interface Team {
  name: string;
  description: string;
  urlLogo: string;
}

defineProps<{
  teams?: Team[];
}>();
const selected = ref({ name: "", description: "" });
</script>

<template>
  <div class="flex justify-center items-center h-full">
    <div
      class="bg-base-300 shadow p-4 w-[50rem] rounded-box flex flex-col gap-4"
    >
      <h1 class="text-2xl font-bold">Supprimer une équipe</h1>
      <div class="flex justify-center">
        <select
          className="select select-primary w-full max-w-lg"
          v-model="selected"
        >
          <option disabled :value="{ name: '', description: '' }">
            Sélectionner une équipe
          </option>
          <option v-for="value in teams" :value="value">
            {{ value.name }}
          </option>
        </select>
      </div>
      <div className="divider"></div>
      <div className="flex flex-col gap-6">
        <label className="form-control w-full max-w-md">
          <div className="label">
            <span className="label-text text-lg opacity-45 font-semibold italic">Nom :</span>
          </div>
          <p class="ml-4">{{ selected?.name }}</p>
        </label>
        <label className="form-control w-full max-w-md">
          <div className="label">
            <span className="label-text text-lg opacity-45 font-semibold italic"
              >Description :</span
            >
          </div>
          <p class="ml-4">{{ selected?.description }}</p>
        </label>
        <div class="flex justify-end">
          <button className="btn btn-neutral">
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
                d="m14.74 9-.346 9m-4.788 0L9.26 9m9.968-3.21c.342.052.682.107 1.022.166m-1.022-.165L18.16 19.673a2.25 2.25 0 0 1-2.244 2.077H8.084a2.25 2.25 0 0 1-2.244-2.077L4.772 5.79m14.456 0a48.108 48.108 0 0 0-3.478-.397m-12 .562c.34-.059.68-.114 1.022-.165m0 0a48.11 48.11 0 0 1 3.478-.397m7.5 0v-.916c0-1.18-.91-2.164-2.09-2.201a51.964 51.964 0 0 0-3.32 0c-1.18.037-2.09 1.022-2.09 2.201v.916m7.5 0a48.667 48.667 0 0 0-7.5 0"
              />
            </svg>
            Supprimer
          </button>
        </div>
      </div>
    </div>
  </div>
</template>
