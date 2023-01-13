<?php

namespace application\Infrastructure\Repository;

use application\Domain\Model\Interfaces\PlayersRepositoryInterface;
use application\Domain\Model\Player;
use CI_DB_driver;

class PlayersRepository implements PlayersRepositoryInterface
{
    /** @var CI_DB_driver $db */
    private $db;

    public function __construct($db)
    {
        $this->db = $db;
    }
    public function insertPlayersIntoDb(array $rawPlayersData): void
    {
        $this->flushPlayersTable();
        $query = 'INSERT INTO players (`fpl_id`, `first_name`, `last_name`, `web_name`, `team_id`, `position`) 
                    VALUES (?, ?, ?, ?, ?, ?)';

        foreach ($rawPlayersData as $player) {
                $params = [
                    $player['id'], 
                    $player['first_name'], 
                    $player['second_name'], 
                    $player['web_name'], 
                    $player['team'], 
                    $player['element_type']
                ];

                $this->db->query($query, $params);
        }
    }
    public function getPlayersByTeamId(int $id): array
    {
        $params = [];
        $result = [];
        $query = 'SELECT * FROM players WHERE team_id = ?';
        $params[] = $id;
        $playersResultFromDb = ($this->db->query($query, $params))->result();
        
        foreach ($playersResultFromDb as $row) {
            $player = new Player();
            $player
                ->setId($row->id)
                ->setFirstName($row->first_name)
                ->setLastName($row->last_name)
                ->setPosition($row->id)
                ->setWebName($row->web_name)
                ->setPosition($row->position);
            $result[] = $player;
        }

        return $result;
    }
    private function getPlayerData()
    {
        
    }
    private function flushPlayersTable(): void
    {
        $query = 'TRUNCATE TABLE players';
        $this->db->query($query);
    }
}
