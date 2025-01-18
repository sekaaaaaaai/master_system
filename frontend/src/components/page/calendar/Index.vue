<template>
  <v-btn block rounded="0" size="x-large">カレンダーのページです</v-btn>
  <p>
    <router-link to="/">Go to Home</router-link>
    <router-link to="/second">Go to Second</router-link>
  </p>
</template>

<script setup lang="ts">
import { ref } from 'vue'
</script>

<style scoped>
</style>