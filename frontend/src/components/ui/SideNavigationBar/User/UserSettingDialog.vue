<template> 
  <v-dialog
    v-model="dialog"
    activator="parent"
  >
    <v-card
      class="mx-auto"
      min-width="400px"
    >
      <v-card-item class="bg-surface-light py-0">
        <v-card-title style="font-size: medium;">
          ユーザー設定
        </v-card-title>
        <v-spacer></v-spacer>
        <template v-slot:append>
          <v-btn icon="$close" variant="plain" @click="()=>{ dialog = false; }"></v-btn>
        </template>
      </v-card-item>

      <v-card-text class="pt-4">
        <div class="d-flex flex-row">
          <v-tabs
            v-model="tab"
            color="primary"
            direction="vertical"
            class="border-e"
          >
            <v-tab text="パスワード変更" value="option-1"></v-tab>
          </v-tabs>

          <v-tabs-window v-model="tab">
            <v-tabs-window-item value="option-1">
              <v-card flat>
                <v-card-text>
                  <v-btn @click="submitPasswordResetEmail">パスワードを再設定</v-btn>
                </v-card-text>
              </v-card>
            </v-tabs-window-item>
          </v-tabs-window>
        </div>
      </v-card-text>
    </v-card>
  </v-dialog>
</template>

<script setup lang="ts">
import { ref } from 'vue';
import { getAuth, sendPasswordResetEmail, User } from 'firebase/auth';

const dialog = ref(false);
const tab = ref('option-1');

interface Props {
  user: User|null
}

const props = defineProps<Props>()

const submitPasswordResetEmail = async () => {
  if(props.user?.email){
    await sendPasswordResetEmail(getAuth(), props.user.email)
    .then((resp) => {
      // メール送信成功
      alert(`パスワード再設定のメールを送信しました。\nメールに記載のリンクより手続きを行なってください。`)
    })
    .catch((error) => {
      // メール送信失敗
      console.log(error)
    })
  }
  
}

</script>