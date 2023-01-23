<?php

namespace application\Application\Services;

use application\Domain\Model\Game;
use application\Domain\Model\Interfaces\TeamsRepositoryInterface;

class PrepareMatchService
{
    private TeamsRepositoryInterface $teamsRepo;

    public function __construct(TeamsRepositoryInterface $teamsRepo)
    {
        $this->teamsRepo = $teamsRepo;
    }

    /**
     * @param array $rawMatchInfo
     * @return Game
     */
    public function execute(array $rawMatchInfo): Game
    {
        $match = new Game();
        $match
            ->setHomeTeamId($rawMatchInfo['team_h'])
            ->setHomeTeamScore($rawMatchInfo['team_h_score']);
        $teamHome = $this->teamsRepo->getTeam($match->getHomeTeamId());
        $match->setHomeTeamName($teamHome->getName());
        
        $match
            ->setAwayTeamId($rawMatchInfo['team_a'])
            ->setAwayTeamScore($rawMatchInfo['team_a_score']);
        $teamAway = $this->teamsRepo->getTeam($match->getAwayTeamId());
        $match->setAwayTeamName($teamAway->getName());

        return $match;
    }
}
