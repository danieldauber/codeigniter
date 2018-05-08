<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {


	/**
	 * Construtor da classe
	 *
	 * @return void
	 */
	public function __construct()
	{
		parent::__construct();

		if(!$this->session->userdata('logado')){
			redirect(base_url('admin/login'));
		}

	}


	public function index()
	{
		try{

			$data['title'] = "Blogão";
			$data['page_title'] = "Painel de Controle";
			$data['page_subtitle'] = "Home";
			$data['session'] = $this->session->userdata();

			$this->twig->display('backend/home.html', $data);

		}catch(Exception $e){

			show_error($e->getMessage().' --- '.$e->getTraceAsString());

		}
	}




}
