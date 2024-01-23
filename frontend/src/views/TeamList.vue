<script setup lang="ts">
import TeamContainer from "../components/TeamContainer.vue";

const teams = {
  arsenal: {
    name: "Arsenal",
    description: "L'OM de la première league",
    urlLogo: "arsenal.svg",
  },
  barca: {
    name: "FC Barcelone",
    description: "La Macia et MESSIIIIIII",
    urlLogo: "barca.svg",
  },
  bayern: {
    name: "Bayern de Munich",
    description: "Les puissants en Allemagne",
    urlLogo: "bayern.svg",
  },
  lens: {
    name: "RC Lens",
    description:
      "Oh nord, c etait les corons, la terre c etait le charbon, le ciel c etait l'horizon, les hommes des mineurs de fond.",
    urlLogo: "lens.svg",
  },
  city: {
    name: "Manchester City",
    description: "Erling Halland",
    urlLogo: "manchester_city.svg",
  },
  united: {
    name: "Manchester Unity",
    description: "City mais en moins bien",
    urlLogo: "manchester_united.svg",
  },
  ol: {
    name: "Olympique Lyonnais",
    description: "Partir d'en bas et rester en bas",
    urlLogo: "ol.svg",
  },
  om: {
    name: "Olympique de Marseille",
    description: "Droit au but, Le vrai olympique, Aux armes",
    urlLogo: "om.svg",
  },
  psg: {
    name: "Paris Saint Germain",
    description: "Rêvons encore de la LDC",
    urlLogo: "psg.svg",
  },
  real: {
    name: "Real Madrid",
    description: "On y croit même avec des retraités et des bléssés",
    urlLogo: "real.svg",
  },
};
</script>

<template>
  <div class="p-4 flex flex-wrap gap-4 justify-center">
    <div v-for="(value, key) in teams" :key="key">
      <TeamContainer
        :name="value.name"
        :description="value.description"
        :url-logo="value.urlLogo"
      />
    </div>
  </div>
</template>
