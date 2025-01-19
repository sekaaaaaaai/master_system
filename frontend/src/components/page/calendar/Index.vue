<template>
  <!-- ヘッダー -->
  <v-toolbar
    :elevation="2" 
    color="white"
    class="border-t-lg border-opacity-100 border-primary"
  >
  <v-app-bar-nav-icon icon="mdi-account-group"></v-app-bar-nav-icon>

    <v-toolbar-title>
      <b>社員マスタ</b>
    </v-toolbar-title>

    <v-spacer></v-spacer>

    <v-btn
      color="primary"
      variant="flat"
      class="me-5"
      @click="handleNewEmployee"
    >
      追加
    </v-btn>
  </v-toolbar>

  <v-container>
    <v-text-field
    label="検索" 
    variant="outlined" 
    prepend-inner-icon="mdi-magnify"
    v-model="searchText"
    @input="onInputDebounced"
    />

    <v-table>
      <thead>
        <tr>
          <th class="text-left">
            <b>ID</b>
          </th>
          <th class="text-left">
            <b>氏名</b>
          </th>
          <th class="text-left">
            <b>Email</b>
          </th>
        </tr>
      </thead>
      <tbody>
        <tr
          v-for="item in employees"
          :key="item.id"
        >
          <td>{{ item.id }}</td>
          <td>{{ item.last_name }} {{ item.first_name }}</td>
          <td>{{ item.email }}</td>
        </tr>
      </tbody>
    </v-table>

  </v-container>

</template>

<script setup lang="ts">
import axios from 'axios';
import { onMounted, ref } from 'vue'
import _ from "lodash";
import router from '../../../plugins/router';

axios.defaults.baseURL = 'http://192.168.128.2:53000';

const employees = ref();
const searchText = ref("");

const handleNewEmployee = () => { // 社員追加ページに移動
  router.push('calendar/new');
};

const getEmployees = (q: string | null = null)=>{
  axios.get('/employees', {
    params: {
      q: q, // 検索文字列をクエリパラメータとして渡す
    },
  }).then((res) =>{
    employees.value = res.data; // 結果をリアクティブな変数にセット
    console.log(employees.value); // レスポンスデータをコンソールに出力
  }).catch((error) => {
    console.error("エラーが発生しました:", error);
  });
}

// デバウンス処理を適用した関数
const onInputDebounced = _.debounce(() => {
  const text = searchText.value;
  getEmployees(text);
  // サーバーリクエストや他の処理を記述
}, 300); // 300msの遅延

//DOM読み込み後に展開する
onMounted(async()=>{
  await getEmployees();
})
</script>
