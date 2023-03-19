<demo>
  支持不同尺寸
</demo>
<template>
  <div>
    <div>
      <Button size="small">超小按钮</Button>
      <Button>普通按钮</Button>
      <Button size="big">大型按钮</Button>
    </div>
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
