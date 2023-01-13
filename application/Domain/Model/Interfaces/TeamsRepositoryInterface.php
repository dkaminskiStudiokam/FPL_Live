<?php

namespace application\Domain\Model\Interfaces;

use application\Domain\Model\Team;

interface TeamsRepositoryInterface
{
    public function getTeam(string $teamId): Team;
}
