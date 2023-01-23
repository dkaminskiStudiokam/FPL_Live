<?php

namespace application\Domain\Model;

class Game
{
    private int $homeTeamId;
    private int $homeTeamCode;
    private string $homeTeamName;
    private int $homeTeamScore;
    private string $homeTeamShortName;
    /**
     * @var Player[]
     */
    private array $homeTeamPlayers;
    private int $awayTeamId;
    private int $awayTeamCode;
    private string $awayTeamName;
    private int $awayTeamScore;
    private string $awayTeamShortName;
    /**
     * @var Player[]
     */
    private array $awayTeamPlayers;

    /**
     * @return int
     */
    public function getHomeTeamId(): int
    {
        return $this->homeTeamId;
    }

    /**
     * @param int $homeTeamId
     * @return Game
     */
    public function setHomeTeamId(int $homeTeamId): Game
    {
        $this->homeTeamId = $homeTeamId;
        return $this;
    }

    /**
     * @return int
     */
    public function getHomeTeamCode(): int
    {
        return $this->homeTeamCode;
    }

    /**
     * @param int $homeTeamCode
     * @return Game
     */
    public function setHomeTeamCode(int $homeTeamCode): Game
    {
        $this->homeTeamCode = $homeTeamCode;
        return $this;
    }

    /**
     * @return string
     */
    public function getHomeTeamName(): string
    {
        return $this->homeTeamName;
    }

    /**
     * @param string $homeTeamName
     * @return Game
     */
    public function setHomeTeamName(string $homeTeamName): Game
    {
        $this->homeTeamName = $homeTeamName;
        return $this;
    }

    /**
     * @return int
     */
    public function getHomeTeamScore(): int
    {
        return $this->homeTeamScore;
    }

    /**
     * @param int $homeTeamScore
     * @return Game
     */
    public function setHomeTeamScore(int $homeTeamScore): Game
    {
        $this->homeTeamScore = $homeTeamScore;
        return $this;
    }

    /**
     * @return string
     */
    public function getHomeTeamShortName(): string
    {
        return $this->homeTeamShortName;
    }

    /**
     * @param string $homeTeamShortName
     * @return Game
     */
    public function setHomeTeamShortName(string $homeTeamShortName): Game
    {
        $this->homeTeamShortName = $homeTeamShortName;
        return $this;
    }

    /**
     * @return array
     */
    public function getHomeTeamPlayers(): array
    {
        return $this->homeTeamPlayers;
    }

    /**
     * @param array $homeTeamPlayers
     * @return Game
     */
    public function setHomeTeamPlayers(array $homeTeamPlayers): Game
    {
        $this->homeTeamPlayers = $homeTeamPlayers;
        return $this;
    }

    /**
     * @return int
     */
    public function getAwayTeamId(): int
    {
        return $this->awayTeamId;
    }

    /**
     * @param int $awayTeamId
     * @return Game
     */
    public function setAwayTeamId(int $awayTeamId): Game
    {
        $this->awayTeamId = $awayTeamId;
        return $this;
    }

    /**
     * @return int
     */
    public function getAwayTeamCode(): int
    {
        return $this->awayTeamCode;
    }

    /**
     * @param int $awayTeamCode
     * @return Game
     */
    public function setAwayTeamCode(int $awayTeamCode): Game
    {
        $this->awayTeamCode = $awayTeamCode;
        return $this;
    }

    /**
     * @return string
     */
    public function getAwayTeamName(): string
    {
        return $this->awayTeamName;
    }

    /**
     * @param string $awayTeamName
     * @return Game
     */
    public function setAwayTeamName(string $awayTeamName): Game
    {
        $this->awayTeamName = $awayTeamName;
        return $this;
    }

    /**
     * @return int
     */
    public function getAwayTeamScore(): int
    {
        return $this->awayTeamScore;
    }

    /**
     * @param int $awayTeamScore
     * @return Game
     */
    public function setAwayTeamScore(int $awayTeamScore): Game
    {
        $this->awayTeamScore = $awayTeamScore;
        return $this;
    }

    /**
     * @return string
     */
    public function getAwayTeamShortName(): string
    {
        return $this->awayTeamShortName;
    }

    /**
     * @param string $awayTeamShortName
     * @return Game
     */
    public function setAwayTeamShortName(string $awayTeamShortName): Game
    {
        $this->awayTeamShortName = $awayTeamShortName;
        return $this;
    }

    /**
     * @return array
     */
    public function getAwayTeamPlayers(): array
    {
        return $this->awayTeamPlayers;
    }

    /**
     * @param array $awayTeamPlayers
     * @return Game
     */
    public function setAwayTeamPlayers(array $awayTeamPlayers): Game
    {
        $this->awayTeamPlayers = $awayTeamPlayers;
        return $this;
    }

    
}
