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
}