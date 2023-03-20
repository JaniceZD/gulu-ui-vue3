<template>
  <div class="layout">
    <Topnav toggleAsideButtonVisible class="nav" />
    <div class="content">
      <aside class="aside_menu" :class="{ visible: asideVisible }">
        <h2>文档</h2>
        <ol>
          <li>
            <router-link to="/doc/intro">介绍</router-link>
          </li>
          <li>
            <router-link to="/doc/install">安装</router-link>
          </li>
          <li>
            <router-link to="/doc/get-started">开始使用</router-link>
          </li>
        </ol>
        <h2>组件列表</h2>
        <ol>
          <li>
            <router-link to="/doc/switch">Switch 开关</router-link>
          </li>
          <li>
            <router-link to="/doc/button">Button 按钮</router-link>
          </li>
          <li>
            <router-link to="/doc/dialog">Dialog 对话框</router-link>
          </li>
          <li>
            <router-link to="/doc/tabs">Tabs 标签页</router-link>
          </li>
          <li>
            <router-link to="/doc/unfinished">未完待续...</router-link>
          </li>
        </ol>
      </aside>
      <main>
        <router-view></router-view>
      </main>
    </div>
  </div>
</template>
<script lang="ts">
import Topnav from '../components/Topnav.vue';
import { inject, Ref } from 'vue';

export default {
  components: { Topnav },
  setup() {
    const asideVisible = inject<Ref<boolean>>('asideVisible');
    return { asideVisible };
  },
};
</script>
<style lang="scss" scoped>
$aside-index: 10;
.layout {
  display: flex;
  flex-direction: column;
  height: 100vh;
  overflow-x: hidden;
  > .nav {
    flex: 0;
    background: #fff;
    box-shadow: 0 5px 5px rgb(51 51 51 / 10%);
  }
  > .content {
    flex: 1;
    padding-top: 80px;
    padding-left: 156px;
  }
}
.content {
  display: flex;
  > .aside_menu {
    position: fixed;
    left: 0;
    top: 0;
    bottom: 0;
    margin-top: 65px;
    height: auto;
    width: 260px;
    overflow-x: hidden;
    overflow-y: scroll;
    border-right: 1px solid #e8e8e8;
    z-index: $aside-index;
    box-shadow: 5px 0 5px rgb(51 51 51 / 10%);
    padding-bottom: 32px;

    > h2 {
      margin-bottom: 4px;
      line-height: 22px;
      padding: 10px 12px;
      font-size: 16px;
      font-weight: 700;
    }

    > ol {
      > li {
        position: relative;
        width: 100%;
        font-size: 14px;

        > a {
          display: block;
          padding: 12px 20px;
          cursor: pointer;
          color: #444;
          text-decoration: none;

          &:hover {
            background: linear-gradient(145deg, #efe4ff 0%, #cebbe8 100%);
            border-bottom: none;
          }
        }
        .router-link-active {
          background: linear-gradient(145deg, #efe4ff 0%, #cebbe8 100%);
          border-right: none;

          &:after {
            content: '';
            position: absolute;
            top: 0;
            right: 0;
            height: 100%;
            border-right: 3px solid #6e02c3;
          }
        }
      }
    }
  }
}
main {
  flex: 1;
  overflow: auto;
  padding: 56px 180px;
}
@media (max-width: 500px) {
  .layout {
    > .content {
      padding-left: 0;

      .aside_menu {
        width: 180px;
        background-color: #fff;
        transition: all 0.25s ease;
        transform: translateX(-200px);

        &.visible {
          transform: translateX(0px);
        }
      }

      main {
        padding: 20px 8px;
        margin: 0 auto;
      }
    }
  }
}
</style>
