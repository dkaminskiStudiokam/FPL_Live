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

    public function execute(Game $teamsId): array
    {
        $homeTeamPlayers = $this->playersRepo->getPlayersByTeamId($teamsId->getHomeTeamId());
        $awayTeamPlayers = $this->playersRepo->getPlayersByTeamId($teamsId->getAwayTeamId());

        return ['homeTeam' => $homeTeamPlayers, 'awayTeam' => $awayTeamPlayers];
    }
}
