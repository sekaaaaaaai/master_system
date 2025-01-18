<template>
  <!-- 左ナビゲーションメニュー -->
  <v-navigation-drawer permanent>
    <v-list-item title="sales"></v-list-item>
    <v-divider></v-divider>

    <!-- ユーザ行 -->
     <UserListItem />
     <v-divider />

    <!-- メニューリスト -->
    <v-list-item
      v-for="(menu, i) in menus"
      :key="i"
      :value="menu"
      link>
      <template v-slot:prepend>
        <v-icon :color="menu.color" :icon="menu.icon"></v-icon>
      </template>
      <v-list-item-title v-text="menu.title"></v-list-item-title>
    </v-list-item>

  </v-navigation-drawer>
</template>

<script setup lang="ts">
import UserListItem from './User/UserListItem.vue';
import { ref, onMounted } from 'vue';
import { Auth, User, getAuth, onAuthStateChanged, signOut } from 'firebase/auth';
import { collection, doc, DocumentData, getDoc } from 'firebase/firestore';
import { db } from '../../../main';
import router from '../../../plugins/router';

const menus = [
  {
    color: 'blue-darken-2',
    icon: 'mdi-calendar',
    title: 'カレンダー',
    action: () => { router.push('/'); }, // ルートに遷移
  },
  {
    color: 'green-darken-2',
    icon: 'mdi-timeline',
    title: 'タイムライン',
  },
  {
    color: 'purple-darken-2',
    icon: 'mdi-office-building',
    title: '顧客',
  },
  {
    color: 'indigo-darken-2',
    icon: 'mdi-card-account-details',
    title: '名刺',
  },
  {
    color: 'teal-darken-2',
    icon: 'mdi-folder-open',
    title: '案件',
  },
  {
    color: 'light-green-darken-2',
    icon: 'mdi-notebook',
    title: '取引商品',
  },
  {
    color: 'orange-darken-2',
    icon: 'mdi-note',
    title: '活動',
  },
  {
    color: 'indigo-darken-2',
    icon: 'mdi-card-account-details',
    title: '社員',
  },
  {
    color: 'orange-darken-2',
    icon: 'mdi-package',
    title: '商品',
  },
  {
    color: 'pink-darken-2',
    icon: 'mdi-checkbox-marked',
    title: 'タスク',
  },
  {
    color: 'black-darken-2',
    icon: 'mdi-view-dashboard',
    title: 'ダッシュボード',
  },
  {
    color: 'red-darken-2',
    icon: 'mdi-chart-box',
    title: '分析',
  },
  {
    color: 'blue-grey-darken-2',
    icon: 'mdi-cog',
    title: 'システム設定',
  },
]

let auth: Auth
const isLoggedIn = ref(false);

const currentUser = ref<User | null>(null);
const syainData = ref<DocumentData>();

onMounted(() => {
  auth = getAuth();

  // ログイン中ユーザの取得
  onAuthStateChanged(auth, async (user) => {
    isLoggedIn.value = (user != null);
    if (user != null) {
      currentUser.value = user;
    }

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
  })
});
</script>