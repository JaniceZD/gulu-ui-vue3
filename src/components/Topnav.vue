<template>
  <div class="topnav">
    <router-link to="/" class="logo">
      <svg class="icon">
        <use xlink:href="#icon-Lemon2"></use>
      </svg>
    </router-link>
    <ul class="menu">
      <li>
        <router-link to="/doc">文档</router-link>
      </li>
      <li>
        <a href="https://github.com/JaniceZD" target="_blank">GitHub</a>
      </li>
    </ul>
    <div
      v-if="toggleAsideButtonVisible"
      class="toggleAside"
      @click="toggleMenu"
    >
      <svg class="icon">
        <use xlink:href="#icon-list"></use>
      </svg>
    </div>
  </div>
</template>
<script lang="ts">
import { inject, Ref } from 'vue';
export default {
  props: {
    toggleAsideButtonVisible: {
      type: Boolean,
      default: false,
    },
  },
  setup() {
    const asideVisible = inject<Ref<boolean>>('asideVisible'); // get
    const toggleMenu = () => {
      asideVisible.value = !asideVisible.value;
    };
    return { toggleMenu };
  },
};
</script>
<style lang="scss" scoped>
$color: #69258d;
.topnav {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  z-index: 20;
  color: $color;
  padding: 12px 60px;
  display: flex;
  justify-content: center;
  align-items: center;
  box-shadow: 0 0 1px #00000040;
  > .logo {
    max-width: 6em;
    margin-right: auto;

    > svg {
      width: 32px;
      height: 32px;
      vertical-align: bottom;
    }
  }
  > .menu {
    display: flex;
    white-space: nowrap;
    flex-wrap: nowrap;
    > li {
      margin: 0 1em;
    }
  }

  > .toggleAside {
    display: none;
    position: absolute;
    left: 16px;
    top: 50%;
    transform: translateY(-50%);

    svg {
      width: 32px;
      height: 32px;
      vertical-align: bottom;
    }
  }

  @media (max-width: 500px) {
    > .menu {
      display: none;
    }
    > .logo {
      margin: 0 auto;
    }
    > .toggleAside {
      display: inline-block;
    }
  }
}
</style>
