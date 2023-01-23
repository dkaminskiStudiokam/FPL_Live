<?php

namespace application\Application\Services;

use application\Domain\Model\Game;
use application\Domain\Model\Player;

class FillPlayersWithLiveDataService
{
    public function __construct()
    {
        
    }

    public function execute(array $rawLiveData, Game $game): Game
    {
        $players = [];
        foreach ($game->getAwayTeamPlayers() as $awayTeamPlayer) {
            $player = $this->getAttr($rawLiveData, $awayTeamPlayer->getId());
            if ($player['minutes'] < 1) {
                continue;
            }

            $this->setAttributes($awayTeamPlayer, $player);
            $players[] = $awayTeamPlayer;
        }
        $game->setAwayTeamPlayers($players);

        $players = [];
        foreach ($game->getHomeTeamPlayers() as $homeTeamPlayer) {
            $player = $this->getAttr($rawLiveData, $homeTeamPlayer->getId());
            if ($player['minutes'] < 1) {
                continue;
            }

            $this->setAttributes($homeTeamPlayer, $player);
            $players[] = $homeTeamPlayer;
        }
        $game->setHomeTeamPlayers($players);

        return $game;
    }
    private function getAttr(array $liveData, int $id): array
    {
        foreach ($liveData['elements'] as $row) {
            if ($row['id'] === $id) {
                return $row['stats'];
            }
        }

        return [];
    }

    private function setAttributes(Player $player, array $attributes): void
    {
//        dd($attributes);
//        dd($player);
        $player
            ->setMinutes($attributes['minutes'])
            ->setGoalsScored($attributes['goals_scored'])
            ->setAssists($attributes['assists'])
            ->setCleanSheets($attributes['clean_sheets'])
            ->setGoalsConcedes($attributes['goals_conceded'])
            ->setOwnGoals($attributes['own_goals'])
            ->setPenaltiesSaved($attributes['penalties_saved'])
            ->setPenaltiesMissed($attributes['penalties_missed'])
            ->setYellowCards($attributes['yellow_cards'])
            ->setRedCards($attributes['red_cards'])
            ->setSaves($attributes['saves'])
            ->setBonus($attributes['bonus'])
            ->setBps($attributes['bps'])
            ->setInfluence($attributes['influence'])
            ->setCreativity($attributes['creativity'])
            ->setThreat($attributes['threat'])
            ->setIctIndex($attributes['ict_index'])
            ->setTotalPoints($attributes['total_points']);
    }
}
