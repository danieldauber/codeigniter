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

		$this->load->model('categorias/categoria_model', 'modelcategorias');
		$this->load->model('posts/post_model', 'modelposts');

	}


	public function index($id)
	{
		try{

			$data['categorias'] = $this->modelcategorias->get_categorias();
			$data['postagens'] = $this->modelposts->get_post_by_id($id);

			$data['title'] = "Blogao";
			$this->twig->display('frontend/post.html', $data);

		}catch(Exception $e){

			show_error($e->getMessage().' --- '.$e->getTraceAsString());

		}
	}




}
