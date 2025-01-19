<template>
  <!-- ヘッダー -->
  <v-toolbar
    :elevation="2" 
    color="white"
    class="border-t-lg border-opacity-100 border-primary"
  >
  <v-app-bar-nav-icon icon="mdi-account-group"></v-app-bar-nav-icon>

    <v-toolbar-title>
      <b>社員マスタ - 社員を追加</b>
    </v-toolbar-title>

    <v-spacer></v-spacer>

    <v-btn
      color="grey-darken-2"
      variant="flat"
      class="me-5"
      @click="$router.back()"
    >
      戻る
    </v-btn>
  </v-toolbar>

  <!-- メイン -->
  <v-container>
    <v-form @submit.prevent="submit">
      <v-text-field
        v-model="id.value.value"
        :error-messages="id.errorMessage.value"
        label="ID"
      ></v-text-field>

      <v-row>
        <v-col>
          <v-text-field
            v-model="last_name.value.value"
            :error-messages="last_name.errorMessage.value"
            label="苗字"
          ></v-text-field>
        </v-col>
        <v-col>
          <v-text-field
            v-model="first_name.value.value"
            :error-messages="first_name.errorMessage.value"
            label="名前"
          ></v-text-field>
        </v-col>
      </v-row>
      
      <v-row class="mt-0">
        <v-col>
          <v-text-field
            v-model="last_name_kana.value.value"
            :error-messages="last_name_kana.errorMessage.value"
            label="苗字(かな)"
          ></v-text-field>
        </v-col>
        <v-col>
          <v-text-field
            v-model="first_name_kana.value.value"
            :error-messages="first_name_kana.errorMessage.value"
            label="名前(かな)"
          ></v-text-field>
        </v-col>
      </v-row>

      <v-text-field
        v-model="email.value.value"
        :error-messages="email.errorMessage.value"
        label="メールアドレス"
      ></v-text-field>

      <v-text-field
        type="date"
        v-model="joined_at.value.value"
        :error-messages="joined_at.errorMessage.value"
        label="入社日">
      </v-text-field>

      <v-btn
        color="primary"
        class="me-4"
        type="submit"
      >
        追加
      </v-btn>

      <v-btn @click="handleReset">
        クリア
      </v-btn>
    </v-form>
  </v-container>


</template>

<script setup lang="ts">
import { ref } from 'vue'
import { useField, useForm } from 'vee-validate'
import axios from 'axios';
import router from '../../../plugins/router';
axios.defaults.baseURL = 'http://192.168.128.2:53000';

const { handleSubmit, handleReset } = useForm({
    validationSchema: {
      id (value: string) {
        if (value?.length == 4) return true
        return 'IDは4文字で入力してください。'
      },
      last_name (value: string) {
        if (value) return true
        return '苗字を入力してください。'
      },
      last_name_kana (value: string) {
        if (value) return true
        return '苗字のふりがなを入力してください。'
      },
      first_name (value: string) {
        if (value) return true
        return '名前を入力してください。'
      },
      first_name_kana (value: string) {
        if (value) return true
        return '名前のふりがなを入力してください。'
      },
      email (value: string) {
        if (/^[a-z.-]+@[a-z.-]+\.[a-z]+$/i.test(value)) return true

        return 'メールアドレスを正しい形式で入力してください。'
      },
      joined_at (value: string) {
        if (value) return true
        return '入社日を入力してください。'
      },
    },
  })

  const id = useField('id')
  const first_name = useField('first_name')
  const first_name_kana = useField('first_name_kana')
  const last_name = useField('last_name')
  const last_name_kana = useField('last_name_kana')
  const joined_at = useField('joined_at')
  const retired_at = useField('retired_at')
  const email = useField('email')
  const select = useField('select')
  const checkbox = useField('checkbox')

  const items = ref([
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
  ])

  const submit = handleSubmit(values => {
    // console.log(JSON.stringify(values, null, 2))
    postEmployee(values);
  })

  const postEmployee = (values) => {
    axios.post( // 工事データを参照
      '/employees', 
      values, 
    ).then(res => {
      alert('登録しました.');
      router.back(); // 一つ前の画面に戻る
    }).catch((error) => {
      console.error("エラーが発生しました:", error);
    });
  }
</script>
