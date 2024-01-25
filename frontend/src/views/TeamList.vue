<script setup lang="ts">
import TeamContainer from "../components/TeamContainer.vue";

interface Team {
  name: string;
  description: string;
  urlLogo: string;
}

defineProps<{
  teams?: Team[];
}>();
</script>

<template>
  <div class="p-4 flex flex-wrap gap-4 justify-center">
    <div v-for="(team, index) in teams" :key="index">
      <TeamContainer
        :name="team.name"
        :description="team.description"
        :url-logo="team.urlLogo"
      />
    </div>
  </div>
</template>
