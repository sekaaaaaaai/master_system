<template>
  <div class="border-b"> <!-- 下ボーダー線 -->
    <div class="border-s-lg border-opacity-100 border-primary pb-2"> <!-- 左青ボーダー線 -->
      <div class="ms-2">
        <div style="font-size: 14px; color: rgb(77, 93, 116); white-space: inherit;"> <!-- 項目名 -->
          <b>{{ props.titleText }}</b>
        </div>
        <div> <!-- 設定値 -->
          {{ (props.valueText != "" ? props.valueText : "　") }}
        </div>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">

interface Props {
  titleText: string,
  valueText: string
}

const props = defineProps<Props>()
</script>