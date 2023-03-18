<template>
  <div>
    <h1 class="doc-title">Switch 开关示例</h1>
    <Demo :component="Switch1Demo" />
    <Demo :component="Switch2Demo" />
    <Attr :data="data"></Attr>
  </div>
</template>
<script lang="ts">
import Switch1Demo from './Switch1.demo.vue';
import Switch2Demo from './Switch2.demo.vue';
import Demo from './Demo.vue';
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
        params: 'value',
        desc: '是否选中',
        type: 'boolean',
        select: 'false / true',
        default: 'false',
      },
      {
        params: 'disabled',
        desc: '是否禁用',
        type: 'boolean',
        select: 'false / true',
        default: 'false',
      },
    ]);
    return {
      Switch1Demo,
      Switch2Demo,
      data,
    };
  },
};
</script>
