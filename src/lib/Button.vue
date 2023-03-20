<template>
  <button class="gulu-button" :class="classes" :disabled="disabled">
    <span v-if="loading" class="gulu-loadingIndicator"></span>
    <slot />
  </button>
</template>
<script lang="ts">
import { computed } from 'vue';
export default {
  props: {
    theme: {
      type: String,
      default: 'button',
    },
    size: {
      type: String,
      default: 'normal',
    },
    level: {
      type: String,
      default: 'default',
    },
    disabled: {
      type: Boolean,
      default: false,
    },
    loading: {
      type: Boolean,
      default: false,
    },
  },
  setup(props) {
    const { theme, size, level } = props;
    const classes = computed(() => {
      return {
        [`gulu-theme-${theme}`]: theme,
        [`gulu-size-${size}`]: size,
        [`gulu-level-${level}`]: level,
      };
    });
    return { classes };
  },
};
</script>
<style lang="scss">
$border-color: #dcdfe6;
$color: #606266;
$blue: #40a9ff;
$radius: 4px;
$red: #d72323;
$grey: grey;
.gulu-button {
  box-sizing: border-box;
  line-height: 1;
  padding: 12px 18px;
  cursor: pointer;
  display: inline-flex;
  justify-content: center;
  align-items: center;
  white-space: nowrap;
  background: white;
  color: $color;
  border: 1px solid $border-color;
  border-radius: $radius;
  box-shadow: 0 1px 0 fade-out(black, 0.95);
  transition: background 250ms;
  font-size: 14px;
  margin: 8px;

  &:hover,
  &:focus {
    color: #222831;
    border-color: #222831;
    background-color: #eee;
  }
  &:focus {
    outline: none;
  }
  &::-moz-focus-inner {
    border: 0;
  }
  &.gulu-theme-link {
    border-color: transparent;
    box-shadow: none;
    color: $blue;
    &:hover,
    &:focus {
      color: lighten($blue, 10%);
    }
  }
  &.gulu-theme-text {
    border-color: transparent;
    box-shadow: none;
    color: inherit;
    &:hover,
    &:focus {
      background: darken(white, 5%);
    }
  }
  &.gulu-size-big {
    font-size: 24px;
    height: 48px;
    padding: 0 16px;
  }
  &.gulu-size-small {
    font-size: 12px;
    padding: 10px 14px;
  }
  &.gulu-theme-button {
    &.gulu-level-main {
      background: #00adb5;
      border: 1px solid #393e46;
      color: #eee;

      &:hover,
      &:focus {
        color: #00adb5;
        border-color: #00adb5;
        background: #fff;
      }
    }
    &.gulu-level-warning {
      background: #fce38a;
      border: 1px solid #393e46;
      color: #4a4444;

      &:hover,
      &:focus {
        color: #ffc107;
        border-color: #ffc107;
        background: #fff;
      }
    }
    &.gulu-level-success {
      background: #28a745;
      border: 1px solid #393e46;
      color: #fff;

      &:hover,
      &:focus {
        color: #28a745;
        border-color: #28a745;
        background-color: #fff;
      }
    }
    &.gulu-level-danger {
      background: $red;
      border: 1px solid #d72323;
      color: #eeeeee;

      &:hover,
      &:focus {
        color: $red;
        border-color: $red;
        background-color: #fff;
      }
    }
    &.gulu-level-info {
      background: #52616b;
      border: 1px solid #52616b;
      color: #eeeeee;

      &:hover,
      &:focus {
        color: #222831;
        border-color: #222831;
        background-color: #fff;
      }
    }
  }
  &.gulu-theme-link {
    &.gulu-level-danger {
      color: $red;
      &:hover,
      &:focus {
        color: darken($red, 10%);
      }
    }
  }
  &.gulu-theme-text {
    &.gulu-level-main {
      color: $blue;
      &:hover,
      &:focus {
        color: darken($blue, 10%);
      }
    }
    &.gulu-level-danger {
      color: $red;
      &:hover,
      &:focus {
        color: darken($red, 10%);
      }
    }
  }
  // 禁用
  &.gulu-theme-button {
    &[disabled] {
      cursor: not-allowed;
      color: #4a4444;
      background: #eeeeee;

      &:hover {
        border-color: #4a4444;
      }
    }
  }
  &.gulu-theme-link,
  &.gulu-theme-text {
    &[disabled] {
      cursor: not-allowed;
      color: $grey;
    }
  }
  > .gulu-loadingIndicator {
    width: 14px;
    height: 14px;
    display: inline-block;
    margin-right: 4px;
    border-radius: 8px;
    border-color: $blue $blue $blue transparent;
    border-style: solid;
    border-width: 2px;
    animation: gulu-spin 1s infinite linear;
  }
}
@keyframes gulu-spin {
  0% {
    transform: rotate(0deg);
  }
  100% {
    transform: rotate(360deg);
  }
}
</style>
