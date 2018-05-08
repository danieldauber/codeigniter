<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Postagens extends CI_Controller {


	/**
	 * Construtor da classe
	 *
	 * @return void
	 */
	public function __construct()
	{
		parent::__construct();

		//$this->twig->addGlobal('limpar', $this->load->helper(funcoes_helper));

		$this->load->model('categorias_model', 'modelcategorias');
		$this->categorias = $this->modelcategorias->get_categorias();
		$this->load->model('publicacoes_model', 'modelpublicacoes');

	}


	public function index($id, $slug = null)
	{
		try{

			$data['categorias'] = $this->categorias;
			$data['postagens'] = $this->modelpublicacoes->get_posts($id);
			$data['title'] = "Blogao";
			$this->twig->display('frontend/post.html', $data);

		}catch(Exception $e){

			show_error($e->getMessage().' --- '.$e->getTraceAsString());

		}
	}




}
