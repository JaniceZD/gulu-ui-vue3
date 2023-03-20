<demo>
  常规使用
  </demo>
<template>
  <div>
    <Button size="small" level="main" @click="toggle">打开对话框</Button>
    <Dialog
      v-model:visible="x"
      :closeOnClickOverlay="false"
      :ok="f1"
      :cancel="f2"
    >
      <template v-slot:content>
        <div>展示内容</div>
      </template>
      <template v-slot:title>
        <strong>标题</strong>
      </template>
    </Dialog>
  </div>
</template>

<script lang="ts">
import { Dialog, Button } from '../lib/index';
import { ref } from 'vue';
export default {
  components: {
    Dialog,
    Button,
  },
  setup() {
    const x = ref(false);
    const toggle = () => {
      x.value = !x.value;
    };
    const f1 = () => {
      return true;
    };
    const f2 = () => {};
    return {
      x,
      toggle,
      f1,
      f2,
    };
  },
};
</script>
