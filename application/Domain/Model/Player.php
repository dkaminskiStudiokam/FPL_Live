<?php

namespace application\Domain\Model;

class Player
{
	private int $id;
	private string $firstName;
	private string $lastName;
    private string $webName;
	private string $teamSite;
	private int $minutes;
	private int $goalsScored;
	private int $assists;
	private int $cleanSheets;
	private int $goalsConcedes;
	private int $ownGoals;
	private int $penaltiesSaved;
	private int $penaltiesMissed;
	private int $yellowCards;
	private int $redCards;
	private int $saves;
	private int $bonus;
	private int $bps;
	private string $influence;
	private string $creativity;
	private string $threat;
	private string $ictIndex;
	private int $totalPoints;
	private bool $inDreamTeam;

    //element_type
    private int $position;

    /**
     * @return int
     */
    public function getId(): int
    {
        return $this->id;
    }

    /**
     * @param int $id
     * @return Player
     */
    public function setId(int $id): Player
    {
        $this->id = $id;
        return $this;
    }

    /**
     * @return string
     */
    public function getFirstName(): string
    {
        return $this->firstName;
    }

    /**
     * @param string $firstName
     * @return Player
     */
    public function setFirstName(string $firstName): Player
    {
        $this->firstName = $firstName;
        return $this;
    }

    /**
     * @return string
     */
    public function getLastName(): string
    {
        return $this->lastName;
    }

    /**
     * @param string $lastName
     * @return Player
     */
    public function setLastName(string $lastName): Player
    {
        $this->lastName = $lastName;
        return $this;
    }

    /**
     * @return string
     */
    public function getWebName(): string
    {
        return $this->webName;
    }

    /**
     * @param string $webName
     * @return Player
     */
    public function setWebName(string $webName): Player
    {
        $this->webName = $webName;
        return $this;
    }

    /**
     * @return string
     */
    public function getTeamSite(): string
    {
        return $this->teamSite;
    }

    /**
     * @param string $teamSite
     * @return Player
     */
    public function setTeamSite(string $teamSite): Player
    {
        $this->teamSite = $teamSite;
        return $this;
    }

    /**
     * @return int
     */
    public function getMinutes(): int
    {
        return $this->minutes;
    }

    /**
     * @param int $minutes
     * @return Player
     */
    public function setMinutes(int $minutes): Player
    {
        $this->minutes = $minutes;
        return $this;
    }

    /**
     * @return int
     */
    public function getGoalsScored(): int
    {
        return $this->goalsScored;
    }

    /**
     * @param int $goalsScored
     * @return Player
     */
    public function setGoalsScored(int $goalsScored): Player
    {
        $this->goalsScored = $goalsScored;
        return $this;
    }

    /**
     * @return int
     */
    public function getAssists(): int
    {
        return $this->assists;
    }

    /**
     * @param int $assists
     * @return Player
     */
    public function setAssists(int $assists): Player
    {
        $this->assists = $assists;
        return $this;
    }

    /**
     * @return int
     */
    public function getCleanSheets(): int
    {
        return $this->cleanSheets;
    }

    /**
     * @param int $cleanSheets
     * @return Player
     */
    public function setCleanSheets(int $cleanSheets): Player
    {
        $this->cleanSheets = $cleanSheets;
        return $this;
    }

    /**
     * @return int
     */
    public function getGoalsConcedes(): int
    {
        return $this->goalsConcedes;
    }

    /**
     * @param int $goalsConcedes
     * @return Player
     */
    public function setGoalsConcedes(int $goalsConcedes): Player
    {
        $this->goalsConcedes = $goalsConcedes;
        return $this;
    }

    /**
     * @return int
     */
    public function getOwnGoals(): int
    {
        return $this->ownGoals;
    }

    /**
     * @param int $ownGoals
     * @return Player
     */
    public function setOwnGoals(int $ownGoals): Player
    {
        $this->ownGoals = $ownGoals;
        return $this;
    }

    /**
     * @return int
     */
    public function getPenaltiesSaved(): int
    {
        return $this->penaltiesSaved;
    }

    /**
     * @param int $penaltiesSaved
     * @return Player
     */
    public function setPenaltiesSaved(int $penaltiesSaved): Player
    {
        $this->penaltiesSaved = $penaltiesSaved;
        return $this;
    }

    /**
     * @return int
     */
    public function getPenaltiesMissed(): int
    {
        return $this->penaltiesMissed;
    }

    /**
     * @param int $penaltiesMissed
     * @return Player
     */
    public function setPenaltiesMissed(int $penaltiesMissed): Player
    {
        $this->penaltiesMissed = $penaltiesMissed;
        return $this;
    }

    /**
     * @return int
     */
    public function getYellowCards(): int
    {
        return $this->yellowCards;
    }

    /**
     * @param int $yellowCards
     * @return Player
     */
    public function setYellowCards(int $yellowCards): Player
    {
        $this->yellowCards = $yellowCards;
        return $this;
    }

    /**
     * @return int
     */
    public function getRedCards(): int
    {
        return $this->redCards;
    }

    /**
     * @param int $redCards
     * @return Player
     */
    public function setRedCards(int $redCards): Player
    {
        $this->redCards = $redCards;
        return $this;
    }

    /**
     * @return int
     */
    public function getSaves(): int
    {
        return $this->saves;
    }

    /**
     * @param int $saves
     * @return Player
     */
    public function setSaves(int $saves): Player
    {
        $this->saves = $saves;
        return $this;
    }

    /**
     * @return int
     */
    public function getBonus(): int
    {
        return $this->bonus;
    }

    /**
     * @param int $bonus
     * @return Player
     */
    public function setBonus(int $bonus): Player
    {
        $this->bonus = $bonus;
        return $this;
    }

    /**
     * @return int
     */
    public function getBps(): int
    {
        return $this->bps;
    }

    /**
     * @param int $bps
     * @return Player
     */
    public function setBps(int $bps): Player
    {
        $this->bps = $bps;
        return $this;
    }

    /**
     * @return string
     */
    public function getInfluence(): string
    {
        return $this->influence;
    }

    /**
     * @param string $influence
     * @return Player
     */
    public function setInfluence(string $influence): Player
    {
        $this->influence = $influence;
        return $this;
    }

    /**
     * @return string
     */
    public function getCreativity(): string
    {
        return $this->creativity;
    }

    /**
     * @param string $creativity
     * @return Player
     */
    public function setCreativity(string $creativity): Player
    {
        $this->creativity = $creativity;
        return $this;
    }

    /**
     * @return string
     */
    public function getThreat(): string
    {
        return $this->threat;
    }

    /**
     * @param string $threat
     * @return Player
     */
    public function setThreat(string $threat): Player
    {
        $this->threat = $threat;
        return $this;
    }

    /**
     * @return string
     */
    public function getIctIndex(): string
    {
        return $this->ictIndex;
    }

    /**
     * @param string $ictIndex
     * @return Player
     */
    public function setIctIndex(string $ictIndex): Player
    {
        $this->ictIndex = $ictIndex;
        return $this;
    }

    /**
     * @return int
     */
    public function getTotalPoints(): int
    {
        return $this->totalPoints;
    }

    /**
     * @param int $totalPoints
     * @return Player
     */
    public function setTotalPoints(int $totalPoints): Player
    {
        $this->totalPoints = $totalPoints;
        return $this;
    }

    /**
     * @return bool
     */
    public function isInDreamTeam(): bool
    {
        return $this->inDreamTeam;
    }

    /**
     * @param bool $inDreamTeam
     * @return Player
     */
    public function setInDreamTeam(bool $inDreamTeam): Player
    {
        $this->inDreamTeam = $inDreamTeam;
        return $this;
    }

    /**
     * @return int
     */
    public function getPosition(): int
    {
        return $this->position;
    }

    /**
     * @param int $position
     * @return Player
     */
    public function setPosition(int $position): Player
    {
        $this->position = $position;
        return $this;
    }
}
