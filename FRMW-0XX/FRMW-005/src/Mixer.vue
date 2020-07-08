<template>
    <main class="container">
        R:
        <input type="number" v-model="RValue" min="0" max="255" @change="upd">
        <input type="range" v-model="RValue" min="0" max="255" step="1" @change="upd">
        <br> G:
        <input type="number" v-model="GValue" min="0" max="255" @change="upd">
        <input type="range" v-model="GValue" min="0" max="255" step="1" @change="upd">
        <br> B:
        <input type="number" v-model="BValue" min="0" max="255" @change="upd">
        <input type="range" v-model="BValue" min="0" max="255" step="1" @change="upd">
    </main>
</template>

<script>
    export default {
        data() {
            return {
                RValue: 255,
                GValue: 255,
                BValue: 255
            };
        },
        mounted: function () {
            this.$nextTick(() => this.upd());
        },
        methods: {
            upd() {
                document.body.style.backgroundColor = "rgb(" + [this.RValue || 0, this.GValue || 0, this.BValue || 0].join(",") + ")";
            }
        }
    };
</script>

<style>
    .container {
        text-align: center;
    }
    input {
        color: black;
        background: white;
        border: 1px solid black;
        border-radius: 3px;
    }
    input:focus {
        border: 1px solid black;
    }
</style>