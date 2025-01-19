<template v-if="isLoggedIn"> 
    <!-- ユーザ行 -->
    <v-menu location="end">
      <template v-slot:activator="{ props }">
        <v-list-item 
          link
          v-bind="props">
          <template v-slot:prepend>
            <v-icon icon="mdi-account"></v-icon>
          </template>
          <v-list-item-title v-text="syainData?.name"></v-list-item-title>
        </v-list-item>
      </template>

      <v-list>
        <v-list-item 
          :key="0"
          :value="menus[0]"
          link
          @click="menus[0].action">
          <template v-slot:prepend>
            <v-icon :color="menus[0].color" :icon="menus[0].icon"></v-icon>
          </template>
          <v-list-item-title v-text="syainData?.name"></v-list-item-title>
        </v-list-item>

        <v-list-item 
          :key="1"
          :value="menus[1]"
          link>
          <template v-slot:prepend>
            <v-icon :color="menus[1].color" :icon="menus[1].icon"></v-icon>
          </template>
          <v-list-item-title v-text="menus[1].title"></v-list-item-title>
          <UserSettingDialog :user="currentUser" />
        </v-list-item>  

        <v-list-item 
          :key="2"
          :value="menus[2]"
          link
          @click="menus[2].action">
          <template v-slot:prepend>
            <v-icon :color="menus[2].color" :icon="menus[2].icon"></v-icon>
          </template>
          <v-list-item-title v-text="menus[2].title"></v-list-item-title>
        </v-list-item>  
      </v-list>
    </v-menu>


</template>

<script setup lang="ts">
import { ref, onMounted } from 'vue';
import { Auth, User, getAuth, onAuthStateChanged, signOut } from 'firebase/auth';
import { collection, doc, DocumentData, getDoc } from 'firebase/firestore';
import { db } from '../../../../main';
import router from '../../../../plugins/router';
import UserSettingDialog from './UserSettingDialog.vue';

let auth: Auth
const isLoggedIn = ref(false);

const currentUser = ref<User | null>(null);
const syainData = ref<DocumentData>();

const handleSignOut = () => { // ログアウト処理
  signOut(auth).then(() => {
    router.replace('/signin'); // ルートに遷移
  })
};

const handleUserSetting = () => { // ユーザ設定に移動
  router.push('/');
};

const handleUserDetail = () => { // ユーザ情報ページに移動
  router.push('/user/detail');
};


const menus = [
  {
    color: 'indigo-darken-2',
    icon: 'mdi-account',
    title: '',
    action: handleUserDetail
  },
  {
    color: 'indigo-darken-2',
    icon: 'mdi-account-cog',
    title: 'ユーザー設定',
    action: handleUserSetting,
  },
  {
    color: 'indigo-darken-2',
    icon: 'mdi-logout',
    title: 'ログアウト',
    action: handleSignOut,
  },
]


onMounted(() => {
  auth = getAuth();

  // ログイン中ユーザの取得
  onAuthStateChanged(auth, async (user) => {
    isLoggedIn.value = (user != null);
    if (user != null) {
      currentUser.value = user;
    }

    // 社員情報の取得
    // if(currentUser.value != null) {
    //   const uid = currentUser.value.uid;
    //   const docRef = doc(db, "users", uid);
    //   const docSnap = await getDoc(docRef);

    //   if (docSnap.exists()) {
    //     syainData.value = docSnap.data();
    //     console.log("Document data:", docSnap.data());
    //   } else {
    //     // docSnap.data() will be undefined in this case
    //     console.log("No such document!");
    //   }
    // }
  })
});
</script>