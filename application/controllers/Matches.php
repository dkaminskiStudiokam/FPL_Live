<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use application\Application\Services\FillPlayersWithLiveDataService;
use application\Application\Services\PrepareMatchService;
use application\Application\Services\PreparePlayersToMatchService;
use application\Domain\Model\Game;
use application\Infrastructure\Repository\PlayersRepository;
use application\Infrastructure\Repository\TeamsRepository;
use application\Infrastructure\WebServices\LiveDataWS;
use application\Infrastructure\WebServices\MatchInfoWS;
use application\Infrastructure\WebServices\PlayersWS;
use Symfony\Component\Serializer\Encoder\JsonEncoder;
use Symfony\Component\Serializer\Encoder\XmlEncoder;
use Symfony\Component\Serializer\Normalizer\ObjectNormalizer;
use Symfony\Component\Serializer\Serializer;

class Matches extends CI_Controller
{
    public function index() 
    {
        $data = array(
            'title' => 'FPL'
        );
        $this->load->view('themes/header', $data);
        $gameWeekData = $this->startData();
        $this->load->view('single_match', $gameWeekData);
    }
    public function updatePlayers()
    {
        $playersRepo = new PlayersRepository($this->db);
        $playersWS = new PlayersWS();
        $rawPlayersData = $playersWS->getPlayers();
        $playersRepo->insertPlayersIntoDb($rawPlayersData['elements']);

        v('Import został zakończony');
    }
    public function getMatch()
    {
        $encoders = [new XmlEncoder(), new JsonEncoder()];
        $normalizers = [new ObjectNormalizer()];
        $serializer = new Serializer($normalizers, $encoders);

        // todo to id meczu, trzeba bedzie je wysylac z frontu
        $match = $this->getMatchData(195);
        $bothTeamsPlayers = $this->getBothTeamsPlayers($match);
        $result = $this->fillPlayers($bothTeamsPlayers);

        // 334 Rashford
//        dd(($liveDataWs->getLiveData())['elements'][334]);
        echo $serializer->serialize($result, 'json');
    }
    public function startData(): array
    {
        $staticUrl = "https://fantasy.premierleague.com/api/bootstrap-static/";
        $jsonStatic = file_get_contents($staticUrl);
        $static = json_decode($jsonStatic, true);
        $result = [];
        foreach ($static['events'] as $event) {
            if ($event['deadline_time'] > date("Y-m-d H:i:s")) {
                $result = [
                    'eventName' => trim($event['name'], 'Gameweek'),
                    'deadlineTime' => $event['deadline_time']];
                break;
            }
        }

        return $result;
    }

    /**
     * @param int $id
     * @return Game
     */
    private function getMatchData(int $id): Game
    {
        $matchWS = new MatchInfoWS();
        $rawMatchData = $matchWS->getMatchById($id);
        $teamsRepo = new TeamsRepository($this->db);
        $prepareMatchService = new PrepareMatchService($teamsRepo);
        $test = $prepareMatchService->execute($rawMatchData);

        return $prepareMatchService->execute($rawMatchData);
    }
    
    private function getBothTeamsPlayers(Game $matchData): Game
    {
        $playersRepo = new PlayersRepository($this->db);
        $preparePlayersService = new PreparePlayersToMatchService($playersRepo);
        $preparePlayersService->execute($matchData);

        return $matchData;
    }

    private function fillPlayers(Game $game): Game
    {
        //fpl_id w bazie danych odpowiada id tutaj (liveData)
        $liveDataWs = new LiveDataWS();
        $rawLiveData = $liveDataWs->getLiveData();
        $fillPlayersWithLiveDataService = new FillPlayersWithLiveDataService();

        return $fillPlayersWithLiveDataService->execute($rawLiveData, $game);
    }
}
