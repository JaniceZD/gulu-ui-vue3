<template>
  <div class="demo">
    <h2>{{ component.__sourceCodeTitle }}</h2>
    <div class="demo-component">
      <component :is="component" />
    </div>
    <div class="demo-actions">
      <Button @click="hideCode" v-if="codeVisible">隐藏代码</Button>
      <Button @click="showCode" v-else>查看代码</Button>
    </div>
    <div class="demo-code" v-if="codeVisible">
      <pre class="language-html" v-html="html"></pre>
    </div>
  </div>
</template>
<script lang="ts">
import { Button } from '../lib/index';
import 'prismjs';
import 'prismjs/themes/prism.css';
import { ref, computed } from 'vue';
const Prism = (window as any).Prism;
export default {
  props: {
    component: Object,
  },
  components: {
    Button,
  },
  setup(props) {
    const codeVisible = ref(false);
    const html = computed(() => {
      return Prism.highlight(
        props.component.__sourceCode,
        Prism.languages.html,
        'html'
      );
    });
    const showCode = () => (codeVisible.value = true);
    const hideCode = () => (codeVisible.value = false);
    return { codeVisible, html, Prism, showCode, hideCode };
  },
};
</script>
<style lang="scss" scoped>
$border-color: #ebebeb;
.demo {
  border: 1px solid $border-color;
  margin: 16px 0 32px;

  &:hover {
    box-shadow: 0 0 8px 0 rgba(232, 237, 250, 0.6),
      0 2px 4px 0 rgba(232, 237, 250, 0.5);
  }

  > h2 {
    font-size: 20px;
    font-weight: 600;
    padding: 8px 16px;
    border-bottom: 1px solid $border-color;
  }
  &-component {
    padding: 16px;
  }
  &-actions {
    padding: 8px 16px;
    border-top: 1px dashed $border-color;
  }
  &-code {
    padding: 8px 16px;
    border-top: 1px dashed $border-color;
    > pre {
      line-height: 1.1;
      font-family: Consolas, 'Courier New', Courier, monospace;
      margin: 0;
    }
  }
}
</style>
