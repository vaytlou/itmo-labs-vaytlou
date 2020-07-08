  <template>
    <main id="app">
        <h3>Vue</h3>
        <Step/>
    </main>
</template>

<script>
    import Step from './Step.vue'
    export default {
        name: 'app',
        components: {
            Step
        }
    }
</script>

<style>
    main {
        width: 600px;
        margin: auto;
    }
</style>