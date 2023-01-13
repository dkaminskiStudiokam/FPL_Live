<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller
{
    public function index() 
    {
        $data = array(
            'title' => 'FPL'
        );
        $this->load->view('themes/header', $data);
        $this->load->view('home');
    }

    public function startData()
    {
        $staticUrl = "https://fantasy.premierleague.com/api/bootstrap-static/";
        $jsonStatic = file_get_contents($staticUrl);
        $static = json_decode($jsonStatic, true);
        $result = [];
        foreach ($static['events'] as $event) {
            if ($event['deadline_time'] > date("Y-m-d H:i:s")) {
                $result = [
                    'gameweek' => $event['id'],
                    'deadlineTime' => $event['deadline_time']];
                break;
            }
        }

        echo json_encode($result);
    }
}
