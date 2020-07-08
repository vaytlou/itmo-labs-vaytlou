<template>
  <div id="app">
    <h3>Mixer</h3>
    <Mixer/>
  </div>
</template>

<script>
  import Mixer from './Mixer.vue'
  export default {
    name: 'app',
    components: {
      Mixer
    }
  }
</script>

<style>
  #app {
    text-align: center;
  }
</style>