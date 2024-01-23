<script setup lang="ts">
defineProps<{
  name?: String;
  description?: String;
  urlLogo?: String;
}>();
</script>
<template>
  <div class="w-96 h-52 bg-base-300 rounded-box p-4 flex flex-col gap-4">
    <div class="flex gap-4 items-center">
      <img
        :src="'/images/logos/' + urlLogo"
        alt="My Image"
        width="30"
        height="auto"
      />
      <h1 class="text-2xl font-bold">{{ name }}</h1>
    </div>
    <div>
      <h2 class="text-lg font-bold">Description :</h2>
      <p class="text-md">{{ description }}</p>
    </div>
  </div>
</template>
