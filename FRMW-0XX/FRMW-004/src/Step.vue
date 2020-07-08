<template>
    <div class="container">
        <button @click="inc() + upd()">⬆︎</button>
        <input type="text" :placeholder='[[ counter ]]' v-model.number="counter" v-on:keyup="upd" @change="upd"/>
        <div v-for="(value) in list" v-bind:key="value">
            <h3>
                <span>{{2}}</span>
                <sup>{{ value }}</sup>= {{2 ** value}}</h3>
        </div>
    </div>
</template>

<script>
    export default {
        data() {
            return {
                counter: Math.floor(Math.PI),
                list: [0, 1, 2]
            };
        },
        methods: {
            inc() {
                this.counter++;
            },
            upd() {
                const id = this.counter + 1;
                // const index = this.list.length;
                this.list = Array.apply(null, {
                    length: id
                }).map(Number.call, Number);
                console.log(this.list);
            }
        }
    };
</script>