<?php

namespace application\Application\Services;

use application\Domain\Model\Game;
use application\Domain\Model\Interfaces\PlayersRepositoryInterface;

class FillPlayersWithLiveDataService
{
    //ten plik dopiero co utworzony, on musi zostac ZMODYFIKOWANY
    private PlayersRepositoryInterface $playersRepo;

//    public function __construct(PlayersRepositoryInterface $playersRepo)
//    {
//        $this->playersRepo = $playersRepo;
//    }
    public function __construct()
    {
        
    }

    public function execute(array $bothTeamsPlayers): array
    {
        foreach ($bothTeamsPlayers as $teams){
            v($teams);
        }
        return [];
    }
}
