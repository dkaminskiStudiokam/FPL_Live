<div id="app">
    <div class="container">
        <div class="row mt-5">
            <div style="background-color: #37003c" class="col-12 rounded-pill text-white pt-2 pb-2 text-center">OBECNA KOLEJKA -<?php echo $eventName;?></div>
            <div class="col-12 text-center">wszystkie kolejki</div>
            <div id="app">{{ message }}</div>
            <div id="app">
                <button v-on:click="showText">Kliknij mnie</button>
                <div v-if="text">{{ zmienna }}</div>
            </div>
<!--            <div v-if="this.test">test</div>-->
        </div>
    </div>
</div>
</body>
<!--<script type="text/javascript" src="content/js/home.js">-->
<script>
    const { createApp } = Vue

    createApp({
        data() {
            return {
                message: 'Hello Vue!',
                zmienna: 'Dziala',
                text: false
            }
        },
        methods: {
            showText () {
                axios.get('application/controllers/Home/start_data')
                    .then((response) => {
                        this.zmienna = response;
                    });
                this.text = true;
            }
        }
    }).mount('#app')
    
    // new Vue({
    //     el: "#app",
    //     data: {
    //         message: 'Hello Vue from PHP!',
    //         zmienna: 'test',
    //         text: false
    //     },
    //     methods: {
    //         showText () {
    //             this.text = true;
    //         },
    //         getStartData() {
    //             axios.get('home/start_data')
    //                 .then((response) => {
    //                     this.test = response;
    //                 });
    //         }
    //     }
    // });
    
    
    // var app = new Vue({
    //     el: '#app',
    //     data: {},
    //     computed: {
    //     },
    //     methods: {},
    //     mounted() {
    //         axios.get('home/start_data')
    //             .then((response) => {
    //                 let resp = response.data;
    //                 this.verbs = resp.allVerbs;
    //                 this.setGroupToAllVerbs();
    //                 this.newVerb();
    //             });
    //         this.getAllGroups();
    //     }
    //
    // });
    
</script>
</html>