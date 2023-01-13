<?php

namespace application\Domain\Model;

class Team
{
    private int $teamId;
    private string $name;
    private string $shortName;
    private int $code;

    /**
     * @return int
     */
    public function getTeamId(): int
    {
        return $this->teamId;
    }

    /**
     * @param int $teamId
     * @return Team
     */
    public function setTeamId(int $teamId): Team
    {
        $this->teamId = $teamId;
        return $this;
    }

    /**
     * @return string
     */
    public function getName(): string
    {
        return $this->name;
    }

    /**
     * @param string $name
     * @return Team
     */
    public function setName(string $name): Team
    {
        $this->name = $name;
        return $this;
    }

    /**
     * @return string
     */
    public function getShortName(): string
    {
        return $this->shortName;
    }

    /**
     * @param string $shortName
     * @return Team
     */
    public function setShortName(string $shortName): Team
    {
        $this->shortName = $shortName;
        return $this;
    }

    /**
     * @return int
     */
    public function getCode(): int
    {
        return $this->code;
    }

    /**
     * @param int $code
     * @return Team
     */
    public function setCode(int $code): Team
    {
        $this->code = $code;
        return $this;
    }
}
