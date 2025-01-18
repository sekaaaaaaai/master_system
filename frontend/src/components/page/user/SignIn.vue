<template>
  <v-container height="100vh">
    <div class="d-flex align-center justify-center fill-height">
      <v-form @submit.prevent="signIn">
        <v-card width="400px" class="mx-auto my-auto">
          <!-- タイトル -->
          <v-card-title class="headline text-center my-2">ログイン</v-card-title>
    
          <!-- 入力欄 -->
          <v-card-text>
            <v-text-field label="メールアドレス" type="email" variant="outlined" v-model="email"></v-text-field>
            <v-text-field label="パスワード" type="password" variant="outlined" v-model="password"></v-text-field>
            <p class="text-red" v-if="errorMessage">
              <b>{{ errorMessage }}</b>
            </p>
    
            <v-btn :loading="loading" class="mt-2" type="submit" block color="primary">ログイン</v-btn>
          </v-card-text>
        </v-card>
        <!-- <p><input type="text" placeholder="Email" v-model="email" /></p>
        <p><input type="password" placeholder="Password" v-model="password" /></p>
        <p><button @click="signIn">作成</button></p> -->
    
      </v-form>
    </div>
  </v-container>
</template>

<script setup lang="ts">
  import { ref } from 'vue';
  import { getAuth, signInWithEmailAndPassword } from 'firebase/auth';
  import { useRouter } from 'vue-router';

  const email = ref('')
  const password = ref('')
  const router = useRouter();
  const errorMessage = ref('');
  const loading = ref(false);

  const signIn = () => {
    loading.value = true; // ロード表示

    const auth = getAuth()
    signInWithEmailAndPassword(auth, email.value, password.value)
    .then((data) => {
      console.log("Successfully sign in!")
      router.push('/calendar');
    })
    .catch((error) => {
      console.log(error.code);
      switch (error.code) {
        case "auth/invalid-email": // emailの形式が正しくない
          errorMessage.value = "メールアドレスを入力し直してください.";
          break;
        case "auth/missing-password": // パスワードが異なる
          errorMessage.value = "パスワードを入力し直してください.";
          break;
        case "auth/invalid-credential": // 認証結果NG
          errorMessage.value = "パスワードまたはメールアドレスが間違っています.";
          break;
        default: 
          errorMessage.value = error.code;
          break;
      }
    })
    .finally(() => {
      loading.value = false; // ロード非表示
    });
  }
</script>