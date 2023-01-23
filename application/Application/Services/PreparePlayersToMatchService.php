<?php

namespace application\Application\Services;

use application\Domain\Model\Game;
use application\Domain\Model\Interfaces\PlayersRepositoryInterface;

class PreparePlayersToMatchService
{
    private PlayersRepositoryInterface $playersRepo;

    public function __construct(PlayersRepositoryInterface $playersRepo)
    {
        $this->playersRepo = $playersRepo;
    }
    public function execute(Game $matchData): Game
    {
//        dd($matchData);

        $homeTeamPlayers = $this->playersRepo->getPlayersByTeamId($matchData->getHomeTeamId());
        $awayTeamPlayers = $this->playersRepo->getPlayersByTeamId($matchData->getAwayTeamId());

        $matchData->setHomeTeamPlayers($homeTeamPlayers);
        $matchData->setAwayTeamPlayers($awayTeamPlayers);

        return $matchData;
    }
}
