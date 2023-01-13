<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class AllMatches extends CI_Controller
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