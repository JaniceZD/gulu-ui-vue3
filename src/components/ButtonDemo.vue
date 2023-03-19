<template>
  <div>
    <h1 class="doc-title">Button 按钮示例</h1>
    <Demo :component="Button1Demo" />
    <Demo :component="Button3Demo" />
    <Demo :component="Button2Demo" />
    <Demo :component="Button4Demo" />
    <Demo :component="Button5Demo" />
    <Attr :data="data"></Attr>
  </div>
</template>
<script lang="ts">
import Demo from './Demo.vue';
import Button1Demo from './Button1.demo.vue';
import Button2Demo from './Button2.demo.vue';
import Button3Demo from './Button3.demo.vue';
import Button4Demo from './Button4.demo.vue';
import Button5Demo from './Button5.demo.vue';
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
        params: 'theme',
        desc: '按钮类型',
        type: 'string',
        select: 'button / link / text',
        default: 'button',
      },
      {
        params: 'level',
        desc: '按钮颜色',
        type: 'string',
        select: 'main / warning / success / danger / info',
        default: 'default',
      },
      {
        params: 'size',
        desc: '尺寸大小',
        type: 'string',
        select: 'small / normal / big',
        default: 'normal',
      },
      {
        params: 'disabled',
        desc: '是否禁用',
        type: 'boolean',
        select: 'false / true',
        default: 'false',
      },
      {
        params: 'loading',
        desc: '是否加载',
        type: 'boolean',
        select: 'false / true',
        default: 'false',
      },
    ]);
    return {
      Button1Demo,
      Button2Demo,
      Button3Demo,
      Button4Demo,
      Button5Demo,
      data,
    };
  },
};
</script>
