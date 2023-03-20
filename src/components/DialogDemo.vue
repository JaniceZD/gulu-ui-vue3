<template>
  <h1 class="doc-title">Dialog 对话框示例</h1>
  <Demo :component="Dialog1Demo" />
  <Demo :component="Dialog2Demo" />
  <Attr :data="data"></Attr>
</template>
<script lang="ts">
import Demo from './Demo.vue';
import Dialog1Demo from './Dialog1.demo.vue';
import Dialog2Demo from './Dialog2.demo.vue';
import { ref } from 'vue';
import { Attr } from '../lib/index';
export default {
  components: {
    Demo,
    Attr,
  },
  setup() {
    const data = ref([
      {
        params: 'visible',
        desc: '是否展示',
        type: 'boolean',
        select: 'true / false',
        default: 'false',
      },
      {
        params: 'closeOnClickOverlay',
        desc: '是否点击遮罩层关闭弹出框',
        type: 'boolean',
        select: 'true / false',
        default: 'true',
      },
      {
        params: 'ok',
        desc: '确认触发函数',
        type: 'function',
        select: '()=>{}',
        default: '--',
      },
      {
        params: 'cancel',
        desc: '取消触发函数',
        type: 'function',
        select: '()=>{}',
        default: '--',
      },
    ]);
    return { Dialog1Demo, Dialog2Demo, data };
  },
};
</script>
