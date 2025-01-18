<template>
  <h1>アカウントを作成</h1>
  <p><input type="text" placeholder="Email" v-model="email" /></p>
  <p><input type="password" placeholder="Password" v-model="password" /></p>
  <p><button @click="register">作成</button></p>
</template>

<script setup lang="ts">
  import { ref } from 'vue';
  import { getAuth, createUserWithEmailAndPassword } from 'firebase/auth';
  import { useRouter } from 'vue-router';

  const email = ref('')
  const password = ref('')
  const router = useRouter();

  const register = () => {
    createUserWithEmailAndPassword(getAuth(), email.value, password.value)
    .then((data) => {
      console.log("Successfully registered!")
      router.push('/');
    })
    .catch((error) => {
      console.log(error.code);
      alert(error.message)
    });
  }
</script>