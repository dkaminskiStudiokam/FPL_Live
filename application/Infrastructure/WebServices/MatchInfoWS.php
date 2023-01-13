<?php

namespace application\Infrastructure\WebServices;

class MatchInfoWS
{
    public function getMatches(): array
    {
        $matchesUrl = "https://fantasy.premierleague.com/api/fixtures/";
        $jsonMatches = file_get_contents($matchesUrl);
        return json_decode($jsonMatches, true);
    }
    public function getMatchById(int $id): array
    {
        $matches = $this->getMatches();
        foreach ($matches as $match) {
            if ($match['id'] === $id) {
                return $match;
            }
        }

        return [];
    }
}
