<template>
  <v-app>
    <NavigationBar v-if="!$route.meta.hideNavbar"/>

    <v-main>
      <RouterView />
    </v-main>
  </v-app>
</template>

<script setup lang="ts">
import { ref } from 'vue';
import { RouterView } from 'vue-router';
import { getAuth, User, onAuthStateChanged } from 'firebase/auth';
import NavigationBar from './components/ui/SideNavigationBar/SideNavigationBar.vue';
import { onMounted } from 'vue';


const currentUser = ref<User | null>(null);

onMounted(() => {
  const auth = getAuth();
  // ログインしているユーザーを取得する
  onAuthStateChanged(auth, (user) => {
    currentUser.value = user;
  });
});
</script>