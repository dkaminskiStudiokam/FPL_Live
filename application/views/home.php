<div id="app">
    <div class="container">
        <div class="row mt-5">
            <div style="background-color: #37003c" class="col-12 rounded-pill text-white pt-2 pb-2 text-center">OBECNA KOLEJKA - {{ zmienna.gameweek }}</div>
            <div class="col-12 text-center"><a target="_blank" href="<?php echo base_url('Matches');?>">wszystkie kolejki</a></div>
        </div>
    </div>
</div>
</body>
<script>
    
    new Vue({
        el: "#app",
        data: {
            message: 'Hello Vue from PHP!',
            zmienna: 'test',
            text: false
        },
        beforeMount () {
            console.log('test');
            axios.get('Home/startData')
                .then((response) => {
                    console.log(response);
                    this.zmienna = response.data;
                });
        },
        methods: {
            showText () {
                this.text = true;
            },
            getStartData() {
                axios.get('Home/startData')
                    .then((response) => {
                        console.log(response);
                        this.zmienna = response.data;
                    });
            }
        }
    });
</script>
</html>