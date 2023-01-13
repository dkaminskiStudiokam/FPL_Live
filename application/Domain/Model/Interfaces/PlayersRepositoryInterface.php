<?php

namespace application\Domain\Model\Interfaces;

interface PlayersRepositoryInterface
{
    public function getPlayersByTeamId(int $id);
}
