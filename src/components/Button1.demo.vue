<demo>
  常规使用
</demo>
<template>
  <div>
    <Button>默认按钮</Button>
    <Button theme="link">链接按钮</Button>
    <Button theme="text">文字按钮</Button>
  </div>
</template>

<script lang="ts">
import { Button } from '../lib/index';
export default {
  components: {
    Button,
  },
};
</script>
