<template>
    <div>
        <input v-model="message" placeholder="Hey!" class="button fit small" />
        <input v-model="message" placeholder="Hey!" class="button fit small" />
    </div>
</template>

<script>
    export default {
        props: {
            message: String
        }
    }
</script>

<style>
    input {
        width: 210px;
        padding: 0.5em;
        margin: 0.5em;
        color: black;
        background: white;
        border: 1px solid black;
        border-radius: 3px;
    }
    input:focus {
        border: 1px solid black;
    }
</style>