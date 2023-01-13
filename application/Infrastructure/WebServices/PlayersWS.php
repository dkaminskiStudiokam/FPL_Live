<?php

namespace application\Infrastructure\WebServices;

class PlayersWS
{
    public function getPlayers(): array
    {
        $playersUrl = "https://fantasy.premierleague.com/api/bootstrap-static/";
        $jsonPlayers = file_get_contents($playersUrl);
        return json_decode($jsonPlayers, true);
    }
}
