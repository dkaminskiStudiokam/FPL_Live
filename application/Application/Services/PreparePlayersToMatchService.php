<?php

namespace application\Application\Services;

use application\Domain\Model\Game;
use application\Domain\Model\Interfaces\PlayersRepositoryInterface;
use application\Domain\Model\Player;

class PreparePlayersService
{
    private PlayersRepositoryInterface $playersRepo;
    public function __construct(PlayersRepositoryInterface $playersRepo)
    {
        $this->playersRepo = $playersRepo;
    }

    public function execute(array $playersRawData,array $teamsId): Game
    {
        $player = new Player();
        
        
        
//        $match = new Game();
//        $match
//            ->setHomeTeamId($rawMatchInfo['team_h'])
//            ->setHomeTeamScore($rawMatchInfo['team_h_score'])
//            ->setAwayTeamId($rawMatchInfo['team_a'])
//            ->setAwayTeamScore($rawMatchInfo['team_a_score']);
//        $teamHome = $this->teamsRepo->getTeam($match->getHomeTeamId());
//        $teamAway = $this->teamsRepo->getTeam($match->getAwayTeamId());
//
//        $match->setHomeTeamName($teamHome->getName());
//        $match->setAwayTeamName($teamAway->getName());
//
//        return $match;
    }

}