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

const selected = ref({ name: "", description: "", urlLogo: "" });
</script>

<template>
  <div class="flex justify-center items-center h-full">
    <div
      class="bg-base-300 shadow p-4 w-[50rem] rounded-box flex flex-col gap-4"
    >
      <h1 class="text-2xl font-bold">Update Team</h1>
      <div class="flex justify-center">
        <select
          className="select select-primary w-full max-w-lg"
          v-model="selected"
        >
          <option disabled :value="{ name: '', description: '', urlLogo: '' }">
            Select a team
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
            <span className="label-text text-lg">Team name :</span>
          </div>
          <input
            type="text"
            className="input input-bordered input-primary w-full"
            :value="selected.name"
          />
        </label>
        <label className="form-control w-full max-w-md">
          <div className="label">
            <span className="label-text text-lg">Team description :</span>
          </div>
          <textarea
            className="textarea textarea-primary textarea-lg w-full max-w-md"
            :value="selected.description"
          ></textarea>
        </label>
        <label className="form-control w-full max-w-md">
          <div className="label">
            <span className="label-text text-lg"
              >Team logo : {{ selected.urlLogo }}</span
            >
          </div>
          <input
            type="file"
            className="file-input file-input-bordered file-input-primary w-full  max-w-md"
          />
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
                d="m4.5 12.75 6 6 9-13.5"
              />
            </svg>
            Update
          </button>
        </div>
      </div>
    </div>
  </div>
</template>
