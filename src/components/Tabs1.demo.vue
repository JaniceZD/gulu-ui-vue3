<demo>
  常规使用
</demo>
<template>
  <Tabs v-model:selected="title">
    <Tab title="学习">学习</Tab>
    <Tab title="放映厅">放映厅</Tab>
    <Tab title="玩游戏">玩游戏</Tab>
  </Tabs>
</template>

<script lang="ts">
import { Tabs, Tab } from '../lib/index';
import { ref } from 'vue';
export default {
  components: {
    Tabs,
    Tab,
  },
  setup() {
    const title = ref('放映厅');
    return {
      title,
    };
  },
};
</script>
