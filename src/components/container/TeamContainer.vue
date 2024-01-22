<script setup lang="ts">
defineProps<{
  name?: String;
  description?: String;
  urlLogo?: String;
}>();
</script>
<template>
  <div class="w-96 bg-base-300 rounded-box p-4 flex flex-col gap-6">
    <div class="flex gap-4 items-center">
      <img
        :src="'/images/logos/' + urlLogo"
        alt="My Image"
        width="30"
        height="auto"
      />
      <h1 class="text-2xl">{{ name }}</h1>
    </div>

    <p class="text-lg">{{ description }}</p>
    <div>
      <p>Effectif</p>
      <ul>
        <li>Aubameyang</li>
      </ul>
    </div>
  </div>
</template>
