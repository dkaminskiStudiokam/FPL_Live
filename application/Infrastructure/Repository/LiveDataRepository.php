<?php

namespace application\Infrastructure\Repository;

use application\Domain\Model\Interfaces\TeamsRepositoryInterface;
use application\Domain\Model\Team;
use CI_DB_driver;

class TeamsRepository implements TeamsRepositoryInterface
{
    /** @var CI_DB_driver $db */
    private $db;

    public function __construct($db)
    {
        $this->db = $db;
    }
    public function getTeam(string $teamId): Team
    {
        $team = new Team();
        $params = [];
        $sql = 'SELECT * FROM teams WHERE team_id = ?';
        $params[] = $teamId;
        $result = ($this->db->query($sql, $params))->result();
        $team
            ->setTeamId($result[0]->team_id)
            ->setName($result[0]->name)
            ->setShortName($result[0]->short_name)
            ->setCode($result[0]->code);

        return $team;
    }
}
