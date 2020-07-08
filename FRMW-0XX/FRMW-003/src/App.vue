<template>
    <main id="app">
        <h3>Список задач</h3>
        <List/>
    </main>
</template>

<script>
    import List from './List.vue'
    export default {
        name: 'app',
        components: {
            List
        }
    }
</script>

<style>
    body {
        /* font-family: Karla, sans-serif; */
        font-size: 16px;
        margin: 0;
    }
    #app {
        max-width: 510px;
        margin: 50px auto;
        padding: 0 10px;
    }
</style>