<template>
  <h1 class="doc-title">Tabs 标签页示例</h1>
  <Demo :component="Tabs1Demo" />
  <Attr :data="data"></Attr>
</template>
<script lang="ts">
import Demo from './Demo.vue';
import Tabs1Demo from './Tabs1.demo.vue';
import { ref } from 'vue';
import { Attr } from '../lib/index';
export default {
  components: { Demo, Attr },
  setup() {
    const data = ref([
      {
        params: 'tab-item',
        desc: 'tab页签',
        type: 'component',
        select: 'tab-item',
        default: '--',
      },
    ]);
    return { Tabs1Demo, data };
  },
};
</script>
