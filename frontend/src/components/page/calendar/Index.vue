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

    <!-- 行が選択されている場合のみ削除ボタンを表示 -->
    <v-btn
      color="red-darken-1"
      variant="flat"
      class="me-3"
      @click="handleDeleteEmployee"
      v-if="selected && selected.length > 0"
    >
      削除
    </v-btn>

    <!-- 行が選択されている場合のみ編集ボタンを表示 -->
    <v-btn
      color="green-darken-1"
      variant="flat"
      class="me-3"
      @click="handleEditEmployee"
      v-if="selected && selected.length > 0"
    >
      編集
    </v-btn>

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

    <v-data-table 
      :items="visibleEmployees"
      :headers="headers"
      item-value="id"
      v-model="selected"
      select-strategy="single"
      show-select
      @update:model-value="handleCheckStateChanged"
    ></v-data-table>


  </v-container>

</template>

<script setup lang="ts">
import axios from 'axios';
import { onMounted, ref } from 'vue'
import _ from "lodash";
import router from '../../../plugins/router';

axios.defaults.baseURL = 'http://192.168.128.2:53000';

type EmployeeData = {
    id: string;
    first_name: string;
    middle_name: string | null;
    last_name: string;
    first_name_kana: string;
    middle_name_kana: string | null;
    last_name_kana: string;
    email: string;
    joined_at: string;
    retired_at: string | null;
    created_at: string;
    updated_at: string;
};

type VisibleEmployeeData = {
    id: string;
    name: string;
    name_kana: string;
    email: string;
    joined_at: string;
    retired_at: string | null;
};

function formatEmployeeData(input: EmployeeData): VisibleEmployeeData {
    const name = input.middle_name
        ? `${input.last_name} ${input.first_name} ${input.middle_name}`
        : `${input.last_name} ${input.first_name}`;

    const name_kana = input.middle_name_kana
        ? `${input.last_name_kana} ${input.first_name_kana} ${input.middle_name_kana}`
        : `${input.last_name_kana} ${input.first_name_kana}`;

    return {
        id: input.id,
        name,
        name_kana,
        email: input.email,
        joined_at: input.joined_at,
        retired_at: input.retired_at,
    };
}

function formatEmployeeDataArray(inputs: EmployeeData[]): VisibleEmployeeData[] {
    return inputs.map(formatEmployeeData);
}

const headers = ref([
  { title: "ID", key: "id" },
  { title: "名前", key: "name" },
  { title: "名前（かな）", key: "name_kana" },
  { title: "メールアドレス", key: "email" },
  { title: "入社日", key: "joined_at" },
  { title: "退職日", key: "retired_at" },
]);

const employees = ref();
const visibleEmployees = ref();
const searchText = ref("");
const selected = ref();

const handleNewEmployee = () => { // 社員追加ページに移動
  router.push('/calendar/new');
};

const handleEditEmployee = () => { // 社員追加ページに移動
  router.push('/calendar/edit');
};

const handleDeleteEmployee = () => { // 社員追加ページに移動
  confirm('削除します。よろしいですか？')
};

const getEmployees = (q: string | null = null)=>{
  axios.get('/employees', {
    params: {
      q: q, // 検索文字列をクエリパラメータとして渡す
    },
  }).then((res) =>{
    employees.value = res.data; // 結果をリアクティブな変数にセット
    visibleEmployees.value = formatEmployeeDataArray(employees.value); // 表示用にデータを整形
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

const handleCheckStateChanged = () => {
  console.log(selected.value)
}

//DOM読み込み後に展開する
onMounted(async()=>{
  await getEmployees();
})
</script>
