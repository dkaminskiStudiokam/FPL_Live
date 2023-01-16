<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use application\Application\Services\FillPlayersWithLiveDataService;
use application\Application\Services\PrepareMatchService;
use application\Application\Services\PreparePlayersToMatchService;
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
        $this->load->view('all_matches', $gameWeekData);

    }
    public function updatePlayers()
    {
        $playersRepo = new PlayersRepository($this->db);
        $playersWS = new PlayersWS();
        $rawPlayersData = $playersWS->getPlayers();
        $playersRepo->insertPlayersIntoDb($rawPlayersData['elements']);
    }
    public function getMatch()
    {
        $encoders = [new XmlEncoder(), new JsonEncoder()];
        $normalizers = [new ObjectNormalizer()];
        $serializer = new Serializer($normalizers, $encoders);

        $id = 187;
        $matchWS = new MatchInfoWS();
        $rawMatchData = $matchWS->getMatchById($id);
        $teamsRepo = new TeamsRepository($this->db);
        $teamHome = $teamsRepo->getTeam(1);
        $prepareMatchService = new PrepareMatchService($teamsRepo);
        $match = $prepareMatchService->execute($rawMatchData);

        $playerWS = new PlayersWS();
        $playersRepo = new PlayersRepository($this->db);
        $playersRawData = $playerWS->getPlayers();
        $preparePlayersService = new PreparePlayersToMatchService($playersRepo);
        $bothTeamsPlayers = $preparePlayersService->execute($match);
        
        //fpl_id w bazie danych odpowiada id tutaj (liveData)
        $liveDataWs = new LiveDataWS();
        $fillPlayersWithLiveDataService = new FillPlayersWithLiveDataService();
        $result = $fillPlayersWithLiveDataService->execute($bothTeamsPlayers);
        dd(tu bedzie blad);
        
        //tutaj Rashford
//        dd(($liveDataWs->getLiveData())['elements'][334]);
//        dd($liveDataWs->getLiveData());
        
        
        dd($bothTeamsPlayers);
        
        echo $serializer->serialize($match, 'json');
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
}
