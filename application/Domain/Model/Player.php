<?php

namespace application\Domain;

class Player
{
	private int $id;
	private string $firstName;
	private string $second_name;
	private string $teamSite;
	private int $minutes;
	private int $goals_scored;
	private int $assists;
	private int $clean_sheets;
	private int $goals_concededs;
	private int $own_goals;
	private int $penalties_saved;
	private int $penalties_missed;
	private int $yellow_cards;
	private int $red_cards;
	private int $saves;
	private int $bonus;
	private int $bps;
	private string $influence;
	private string $creativity;
	private string $threat;
	private string $ict_index;
	private int $totalPoints;
	private bool $in_dreamteam;
	private int $elementType;

	/**
	 * @return int
	 */
	public function getElementType(): int
	{
		return $this->elementType;
	}

	/**
	 * @param int $element_type
	 * @return Player
	 */
	public function setElementType(int $element_type): Player
	{
		$this->elementType = $element_type;
		return $this;
	}

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
	 * @param string $first_name
	 * @return Player
	 */
	public function setFirstName(string $first_name): Player
	{
		$this->firstName = $first_name;
		return $this;
	}

	/**
	 * @return string
	 */
	public function getSecondName(): string
	{
		return $this->second_name;
	}

	/**
	 * @param string $second_name
	 * @return Player
	 */
	public function setSecondName(string $second_name): Player
	{
		$this->second_name = $second_name;
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
		return $this->goals_scored;
	}

	/**
	 * @param int $goals_scored
	 * @return Player
	 */
	public function setGoalsScored(int $goals_scored): Player
	{
		$this->goals_scored = $goals_scored;
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
		return $this->clean_sheets;
	}

	/**
	 * @param int $clean_sheets
	 * @return Player
	 */
	public function setCleanSheets(int $clean_sheets): Player
	{
		$this->clean_sheets = $clean_sheets;
		return $this;
	}

	/**
	 * @return int
	 */
	public function getGoalsConcededs(): int
	{
		return $this->goals_concededs;
	}

	/**
	 * @param int $goals_concededs
	 * @return Player
	 */
	public function setGoalsConcededs(int $goals_concededs): Player
	{
		$this->goals_concededs = $goals_concededs;
		return $this;
	}

	/**
	 * @return int
	 */
	public function getOwnGoals(): int
	{
		return $this->own_goals;
	}

	/**
	 * @param int $own_goals
	 * @return Player
	 */
	public function setOwnGoals(int $own_goals): Player
	{
		$this->own_goals = $own_goals;
		return $this;
	}

	/**
	 * @return int
	 */
	public function getPenaltiesSaved(): int
	{
		return $this->penalties_saved;
	}

	/**
	 * @param int $penalties_saved
	 * @return Player
	 */
	public function setPenaltiesSaved(int $penalties_saved): Player
	{
		$this->penalties_saved = $penalties_saved;
		return $this;
	}

	/**
	 * @return int
	 */
	public function getPenaltiesMissed(): int
	{
		return $this->penalties_missed;
	}

	/**
	 * @param int $penalties_missed
	 * @return Player
	 */
	public function setPenaltiesMissed(int $penalties_missed): Player
	{
		$this->penalties_missed = $penalties_missed;
		return $this;
	}

	/**
	 * @return int
	 */
	public function getYellowCards(): int
	{
		return $this->yellow_cards;
	}

	/**
	 * @param int $yellow_cards
	 * @return Player
	 */
	public function setYellowCards(int $yellow_cards): Player
	{
		$this->yellow_cards = $yellow_cards;
		return $this;
	}

	/**
	 * @return int
	 */
	public function getRedCards(): int
	{
		return $this->red_cards;
	}

	/**
	 * @param int $red_cards
	 * @return Player
	 */
	public function setRedCards(int $red_cards): Player
	{
		$this->red_cards = $red_cards;
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
		return $this->ict_index;
	}

	/**
	 * @param string $ict_index
	 * @return Player
	 */
	public function setIctIndex(string $ict_index): Player
	{
		$this->ict_index = $ict_index;
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
	public function isInDreamteam(): bool
	{
		return $this->in_dreamteam;
	}

	/**
	 * @param bool $in_dreamteam
	 * @return Player
	 */
	public function setInDreamteam(bool $in_dreamteam): Player
	{
		$this->in_dreamteam = $in_dreamteam;
		return $this;
	}
	
}
