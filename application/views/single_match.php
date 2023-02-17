<div id="app">
    <div class="container_single_match mt-4">
        <div class="teams_score">
            <div class="teams_score__logo-home float-left">
                <img style="width: 70px" src="<?php echo base_url('content/img/teams/man_city.png')?>" alt="man_city">
            </div>
            <div class="teams_score__table float-left">
                <div class="table__home_team text-center float-left">{{ match.homeTeamName }}</div>
                <div class="table__score text-center float-left">
                    <div class="table__score-pill text-white">{{ match.homeTeamScore }} : {{ match.awayTeamScore }}</div>
                </div>
                <div class="table__away_team text-center float-left">{{ match.awayTeamName }}</div>
                <div class="clearfix"></div>
            </div>
            <div class="teams_score__logo-away float-right">
                <img style="width: 70px" src="<?php echo base_url('content/img/teams/man_utd.png')?>" alt="man_utd">
            </div>
            <div class="clearfix"></div>
        </div>

        <!--BRAMA-->
        <div class="single_match">
            <div class="single_match__players">
                <div class="w-100 text-center font-weight-bold text-dark mt-1">BRAMA</div>
                <div class="w-50 float-left">
                    <div v-for="homeTeamPlayer in match.homeTeamPlayers" v-if="homeTeamPlayer.position === 1" class="player_data mt-1">
                        <div class="team__points text-center float-right text-white">
                            {{ homeTeamPlayer.totalPoints }}
                        </div>
                        <div class="player_data__name float-right">{{ homeTeamPlayer.webName }}</div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="w-50 float-left">
                    <div v-for="awayTeamPlayer in match.awayTeamPlayers" v-if="awayTeamPlayer.position === 1" class="player_data mt-1">
                        <div class="team__points text-center float-left text-white">
                            {{ awayTeamPlayer.totalPoints }}
                        </div>
                        <div class="player_data__name float-left">{{ awayTeamPlayer.webName }}</div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>

            <!--OBRONA-->
<!--            <div class="single_match__players">-->
<!--                <div class="w-100 text-center font-weight-bold text-dark mt-1">OBRONA</div>-->
<!--                <div class="w-50 float-left">-->
<!--                    <div v-for="homeTeamPlayer in match.homeTeamPlayers" v-if="homeTeamPlayer.position === 2" class="player_data mt-1">-->
<!--                        <div class="team__points text-center float-right text-white">-->
<!--                            {{ homeTeamPlayer.totalPoints }}-->
<!--                        </div>-->
<!--                        <div class="player_data__name float-right">{{ homeTeamPlayer.webName }}</div>-->
<!--                    </div>-->
<!--                </div>-->
<!--                <div class="w-50 float-left">-->
<!--                    <div v-for="awayTeamPlayer in match.awayTeamPlayers" v-if="awayTeamPlayer.position === 2" class="player_data mt-1">-->
<!--                        <div class="team__points text-center float-left text-white">-->
<!--                            {{ awayTeamPlayer.totalPoints }}-->
<!--                        </div>-->
<!--                        <div class="player_data__name float-left">{{ awayTeamPlayer.webName }}</div>-->
<!--                    </div>-->
<!--                </div>-->
<!--                <div class="clearfix"></div>-->
<!--            </div>-->

            <!--ŚRODEK POLA-->
<!--            <div class="single_match__players">-->
<!--                <div class="w-100 text-center font-weight-bold text-dark mt-1">POLE</div>-->
<!--                <div class="w-50 float-left">-->
<!--                    <div v-for="homeTeamPlayer in match.homeTeamPlayers" v-if="homeTeamPlayer.position === 3" class="player_data mt-1">-->
<!--                        <div class="team__points text-center float-right text-white">-->
<!--                            {{ homeTeamPlayer.totalPoints }}-->
<!--                        </div>-->
<!--                        <div class="player_data__name float-right">{{ homeTeamPlayer.webName }}</div>-->
<!--                    </div>-->
<!--                </div>-->
<!--                <div class="w-50 float-left">-->
<!--                    <div v-for="awayTeamPlayer in match.awayTeamPlayers" v-if="awayTeamPlayer.position === 3" class="player_data mt-1">-->
<!--                        <div class="team__points text-center float-left text-white">-->
<!--                            {{ awayTeamPlayer.totalPoints }}-->
<!--                        </div>-->
<!--                        <div class="player_data__name float-left">{{ awayTeamPlayer.webName }}</div>-->
<!--                    </div>-->
<!--                </div>-->
<!--                <div class="clearfix"></div>-->
<!--            </div>-->

            <!--NAPASTNICY-->
<!--            <div class="single_match__players">-->
<!--                <div class="w-100 text-center font-weight-bold text-dark mt-1">NAPADZIORY</div>-->
<!--                <div class="w-50 float-left">-->
<!--                    <div v-for="homeTeamPlayer in match.homeTeamPlayers" v-if="homeTeamPlayer.position === 4" class="player_data mt-1">-->
<!--                        <div class="team__points text-center float-right text-white">-->
<!--                            {{ homeTeamPlayer.totalPoints }}-->
<!--                        </div>-->
<!--                        <div class="player_data__name float-right">{{ homeTeamPlayer.webName }}</div>-->
<!--                    </div>-->
<!--                </div>-->
<!--                <div class="w-50 float-left">-->
<!--                    <div v-for="awayTeamPlayer in match.awayTeamPlayers" v-if="awayTeamPlayer.position === 4" class="player_data mt-1">-->
<!--                        <div class="team__points text-center float-left text-white">-->
<!--                            {{ awayTeamPlayer.totalPoints }}-->
<!--                        </div>-->
<!--                        <div class="player_data__name float-left">{{ awayTeamPlayer.webName }}</div>-->
<!--                    </div>-->
<!--                </div>-->
<!--                <div class="clearfix"></div>-->
<!--            </div>-->
            <div class="clearfix"></div>
        </div>
<!--        <div style="overflow: auto;" class="row mt-2"><hr class="w-100"></div>-->
<!--        <div class="row">-->
<!--            <div class="col-10">-->
<!--                <div class="bonus-points-text font-weight-bold mb-2">BONUS POINTS</div>-->
<!--                <div class="bonus-points-score">3 - Haaland</div>-->
<!--                <div class="bonus-points-score">2 - Rashord</div>-->
<!--                <div class="bonus-points-score">1 - Maguire</div>  -->
<!--            </div>-->
<!--            -->
<!--            <div class="shirts col-2">-->
<!--                <img class="left-shirt" style="width: 25px" src="--><?php //echo base_url('content/img/teams_shirts/shirt_man_utd.webp')?><!--" alt="man_utd_shirt">-->
<!--                <img class="right-shirt" style="width: 25px" src="--><?php //echo base_url('content/img/teams_shirts/shirt_man_city.webp')?><!--" alt="man_city_shirt">-->
<!--            </div>-->
<!--        </div>-->
        <div>
            <br>312312
            <br>312312
            <br>312312
            <br>312312
        </div>
        <div class="text-center mt-3">Świeże dane za 6 sek</div>
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
            text: false,
            countdown: 6
        },
        mounted() {
            // setInterval(() => {
            // this.startTimer();
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
                    });
            }
        }
    });
</script>
</html>