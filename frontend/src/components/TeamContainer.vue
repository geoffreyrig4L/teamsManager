<script setup lang="ts">
defineProps<{
  name?: string;
  description?: string;
  urlLogo?: string;
}>();
</script>

<template>
  <div class="w-96 h-52 bg-base-300 rounded-box p-4 flex flex-col gap-4 shadow">
    <div class="flex gap-4 items-center">
      <img
        :src="'/logos/' + urlLogo"
        alt="My Image"
        width="60"
        height="auto"
      />
      <h1 class="text-lg font-semibold">{{ name }}</h1>
    </div>
    <div>
      <h2 class="text-sm opacity-25 font-semibold italic">Description</h2>
      <p>{{ description }}</p>
    </div>
  </div>
</template>
