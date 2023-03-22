<template>
  <div>
    <div class="topnavAndBanner">
      <Topnav />
      <div class="banner">
        <h1>柠檬 UI</h1>
        <h2>用心创造，持续前行。</h2>
        <p class="actions">
          <a class="git" href="" target="_blank">码云</a>
          <a
            class="git"
            href="https://github.com/JaniceZD/gulu-ui-vue3"
            target="_blank"
            >Github</a
          >
          <router-link to="/doc">开始</router-link>
        </p>
      </div>
    </div>
    <div class="features">
      <ul>
        <li>
          <svg>
            <use xlink:href="#icon-vue"></use>
          </svg>
          <h3>基于 Vue 3</h3>
          <p>骄傲地使用了 Vue 3 Composition API</p>
        </li>
        <li>
          <svg>
            <use xlink:href="#icon-ts"></use>
          </svg>
          <h3>基于 TypeScript</h3>
          <p>源代码采用 TypeScript 书写</p>
        </li>
        <li>
          <svg>
            <use xlink:href="#icon-light"></use>
          </svg>
          <h3>代码易读</h3>
          <p>每个组件的源代码都极其简洁</p>
        </li>
      </ul>
    </div>
  </div>
</template>
<script lang="ts">
import Topnav from '../components/Topnav.vue';
export default {
  components: { Topnav },
};
</script>
<style lang="scss" scoped>
$btn-bg: #6e02c3;
$border-radius: 4px;
$color: #590089;
.topnavAndBanner {
  background: linear-gradient(145deg, #efe4ff 0%, #cebbe8 100%);
  clip-path: ellipse(80% 60% at 50% 40%);
}

.features {
  margin: 50px auto 0;
  @media (min-width: 800px) {
    width: 800px;
    > ul {
      > li {
        width: 50%;
      }
    }
  }
  @media (min-width: 1200px) {
    width: 1200px;
    > ul {
      > li {
        width: 33.3333%;
      }
    }
  }

  > ul {
    display: flex;
    flex-wrap: wrap;
    > li {
      margin: 16px 0;
      display: grid;
      justify-content: center;
      align-content: space-between;
      grid-template-areas:
        'icon title'
        'icon text';
      grid-template-columns: 80px auto;
      grid-template-rows: 1fr auto;
      > svg {
        grid-area: icon;
        width: 64px;
        height: 64px;
      }
      > h3 {
        grid-area: title;
        font-size: 28px;
        font-weight: 600;
      }
      > p {
        grid-area: text;
      }
    }
  }
}

.banner {
  color: $color;
  margin: 0 auto;
  padding: 200px 0 150px 0;
  display: flex;
  flex-direction: column;
  > h1 {
    text-align: center;
    font-size: 34px;
    line-height: 52px;
  }
  > h2 {
    text-align: right;
    padding-right: 100px;
    font-size: 20px;
    line-height: 26px;
    margin-top: 2px;
    margin-bottom: 8px;
  }
  > .actions {
    text-align: center;
    padding: 8px 0;
    a {
      margin: 0 8px;
      background: $btn-bg;
      color: white;
      display: inline-block;
      padding: 8px 22px;
      border-radius: $border-radius;
      &:hover {
        text-decoration: none;
      }
    }
  }
}
</style>
