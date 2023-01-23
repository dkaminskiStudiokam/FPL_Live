<div id="app">
    <div class="container mt-4">
        <div class="row mt-3">
            <div class="w-25"><img style="width: 90px" src="<?php echo base_url('content/img/teams/man_city.png')?>" alt="man_city"></div>
            <div class="w-50 text-center pt-2">
                <div class="single-match font-weight-bold text-muted">{{ match.homeTeamName }}</div>
                <div style="background-color: #37003c; margin: 0 auto;" class="text-white rounded-pill w-75">{{ match.homeTeamScore }} : {{ match.awayTeamScore }}</div>
                <div class="single-match font-weight-bold text-muted">{{ match.awayTeamName }}</div>
            </div>
            <div class="w-25 text-right"><img style="width: 90px" src="<?php echo base_url('content/img/teams/man_utd.png')?>" alt="man_utd"></div>
        </div>
    
        <!--TUTAJ BRAMKARZE-->
        <div class="row mt-3">
            <div class="w-100 text-center font-weight-bold text-dark mb-1">BRAMA</div>
            <div class="w-50">
                <div v-for="homeTeamPlayer in match.homeTeamPlayers" v-if="homeTeamPlayer.position === 1" class="player mt-1">
                    <div style="background-color: #37003c; width: 32px"
                         class="text-center mr-3 float-right text-white rounded">
                        {{ homeTeamPlayer.totalPoints }}
                    </div>
                    <div class="mr-3 float-right">{{ homeTeamPlayer.webName }}</div>
                </div>
            </div>
            <div class="w-50">
                <div v-for="awayTeamPlayer in match.awayTeamPlayers" v-if="awayTeamPlayer.position === 1" class="player mt-1">
                    <div style="background-color: #37003c; width: 32px"
                         class="text-center ml-3 float-left text-white rounded">
                        {{ awayTeamPlayer.totalPoints }}
                    </div>
                    <div class="ml-3 float-left">{{ awayTeamPlayer.webName }}</div>
                </div>
            </div>
        </div>

        <!--TUTAJ OBROŃCY-->
        <div class="row mt-3">
            <div class="w-100 text-center font-weight-bold text-dark mb-1">OBRONA</div>
            <div class="w-50">
                <div v-for="homeTeamPlayer in match.homeTeamPlayers" v-if="homeTeamPlayer.position === 2" class="player mt-1">
                    <div style="background-color: #37003c; width: 32px"
                         class="text-center mr-3 float-right text-white rounded">
                        {{ homeTeamPlayer.totalPoints }}
                    </div>
                    <div class="mr-3 float-right">{{ homeTeamPlayer.webName }}</div>
                </div>
            </div>
            <div class="w-50">
                <div v-for="awayTeamPlayer in match.awayTeamPlayers" v-if="awayTeamPlayer.position === 2" class="player mt-1">
                    <div style="background-color: #37003c; width: 32px"
                         class="text-center ml-3 float-left text-white rounded">
                        {{ awayTeamPlayer.totalPoints }}
                    </div>
                    <div class="ml-3 float-left">{{ awayTeamPlayer.webName }}</div>
                </div>
            </div>
        </div>

        <!--TUTAJ ŚRODEK-->
        <div class="row mt-3">
            <div class="w-100 text-center font-weight-bold text-dark mb-1">ŚRODEK</div>
            <div class="w-50">
                <div v-for="homeTeamPlayer in match.homeTeamPlayers" v-if="homeTeamPlayer.position === 3" class="player mt-1">
                    <div style="background-color: #37003c; width: 32px"
                         class="text-center mr-3 float-right text-white rounded">
                        {{ homeTeamPlayer.totalPoints }}
                    </div>
                    <div class="mr-3 float-right">{{ homeTeamPlayer.webName }}</div>
                </div>
            </div>
            <div class="w-50">
                <div v-for="awayTeamPlayer in match.awayTeamPlayers" v-if="awayTeamPlayer.position === 3" class="player mt-1">
                    <div style="background-color: #37003c; width: 32px"
                         class="text-center ml-3 float-left text-white rounded">
                        {{ awayTeamPlayer.totalPoints }}
                    </div>
                    <div class="ml-3 float-left">{{ awayTeamPlayer.webName }}</div>
                </div>
            </div>
        </div>
        
        <!--TUTAJ NAPADZIORY-->
        <div class="row mt-3">
            <div class="w-100 text-center font-weight-bold text-dark mb-1">STRZELACZE</div>
            <div class="w-50">
                <div v-for="homeTeamPlayer in match.homeTeamPlayers" v-if="homeTeamPlayer.position === 4" class="player mt-1">
                    <div style="background-color: #37003c; width: 32px"
                         class="text-center mr-3 float-right text-white rounded">
                        {{ homeTeamPlayer.totalPoints }}
                    </div>
                    <div class="mr-3 float-right">{{ homeTeamPlayer.webName }}</div>
                </div>
            </div>
            <div class="w-50">
                <div v-for="awayTeamPlayer in match.awayTeamPlayers" v-if="awayTeamPlayer.position === 4" class="player mt-1">
                    <div style="background-color: #37003c; width: 32px"
                         class="text-center ml-3 float-left text-white rounded">
                        {{ awayTeamPlayer.totalPoints }}
                    </div>
                    <div class="ml-3 float-left">{{ awayTeamPlayer.webName }}</div>
                </div>
            </div>
        </div>
        <div style="overflow: auto;" class="row mt-2"><hr class="w-100"></div>
        <div class="row">
            <div class="col-10">
                <div class="bonus-points-text font-weight-bold mb-2">BONUS POINTS</div>
                <div class="bonus-points-score">3 - Haaland</div>
                <div class="bonus-points-score">2 - Rashord</div>
                <div class="bonus-points-score">1 - Maguire</div>  
            </div>
            
            <div class="shirts col-2">
                <img class="left-shirt" style="width: 25px" src="<?php echo base_url('content/img/teams_shirts/shirt_man_utd.webp')?>" alt="man_utd_shirt">
                <img class="right-shirt" style="width: 25px" src="<?php echo base_url('content/img/teams_shirts/shirt_man_city.webp')?>" alt="man_city_shirt">
            </div>
        </div>
    </div>
</div>
</body>
<!--<script type="text/javascript" src="content/js/home.js">-->
<script>
    new Vue({
        el: "#app",
        data: {
            message: 'Hello Vue from PHP!',
            match: 'test',
            text: false
        },
        mounted() {
            // setInterval(() => {
                this.getStartData();
            // }, 1000);
        },
        beforeMount () {
            axios.get('Home/startData')
                .then((response) => {
                    // console.log(response);
                });
        },
        methods: {
            showText () {
                this.text = true;
            },
            getStartData() {
                axios.get('Matches/getMatch')
                    .then((response) => {
                        this.match = response.data;
                        console.log(this.match);
                        console.log(this.match.homeTeamPlayers);
                    });
            }
        }
    });
</script>
</html>