<template>
  <main id="app">
    <h2>Капитонов Евгений</h2>
    <h3>Vue</h3>
    <binding/>
  </main>
</template>

<script>
  import binding from './binding.vue'
  export default {
    name: 'app',
    components: {
      binding
    }
  }
</script>?

<style>
  #app {
    font-family: 'Avenir', Helvetica, Arial;
    text-align: center;
    margin-top: 5%;
  }
</style>