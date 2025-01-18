<template>
  <div class="position-relative h-100">
    <!-- ヘッダー -->
    <v-app-bar :height="40" :elevation="2" class="border-t-lg border-opacity-100 border-primary">
      <template v-slot:prepend>
        <v-app-bar-nav-icon icon="mdi-account"></v-app-bar-nav-icon>
      </template>
  
      <v-app-bar-title>
        <b>{{syainData?.name}} | 社員詳細</b>
      </v-app-bar-title>
    </v-app-bar>

    <v-tabs
        v-model="tab"
        color="indigo"
      >
      <v-tab :value="1">基本情報</v-tab>
      <v-tab :value="2">タスク一覧</v-tab>
      <v-tab :value="3">活動履歴</v-tab>
      <v-tab :value="4">カレンダー</v-tab>
      <v-tab :value="5">社員別予算</v-tab>
    </v-tabs>
  
    <!-- タブ -->
    <v-tabs-window v-model="tab">
      <v-tabs-window-item
        :key="1"
        :value="1"
      >
        <v-container>
          <NameValueControl title-text="住所" :value-text="syainData?.address" class="mb-4"/>
          <NameValueControl title-text="携帯番号" :value-text="syainData?.phone_number" class="mb-4"/>
          <NameValueControl title-text="担当業務" :value-text="syainData?.duty_name" class="mb-4"/>
          <NameValueControl title-text="管理者権限" :value-text="(syainData?.is_admin || false) ? 'あり' : 'なし' "/>
        </v-container>
      </v-tabs-window-item>
    </v-tabs-window>

    <v-footer class="pa-2 border-t position-absolute bottom-0 w-100">
      <div class="w-100 d-flex justify-center">
        <v-btn color="primary" style="min-width: 240px;">
          変更
        </v-btn>
      </div>
    </v-footer>
  </div>

</template>

<script setup lang="ts">
import { onMounted, ref } from 'vue';
import { onAuthStateChanged, getAuth, User } from 'firebase/auth';
import { doc, getDoc, DocumentData } from 'firebase/firestore';
import { db } from '../../../main';
import NameValueControl from '../../ui/NameValueControl.vue';

const currentUser = ref<User | null>(null);
const syainData = ref<DocumentData>();

const tab = ref(null);

onMounted(() => {
  const auth = getAuth();
  // ログインしているユーザーを取得する
  onAuthStateChanged(auth, async (user) => {
    currentUser.value = user;

    // 社員情報の取得
    if(currentUser.value != null) {
      const uid = currentUser.value.uid;
      const docRef = doc(db, "users", uid);
      const docSnap = await getDoc(docRef);

      if (docSnap.exists()) {
        syainData.value = docSnap.data();
        console.log("Document data:", docSnap.data());
      } else {
        // docSnap.data() will be undefined in this case
        console.log("No such document!");
      }
    }
  });
});
</script>