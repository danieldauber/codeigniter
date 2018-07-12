<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class About extends CI_Controller {

    public $categorias;

	/**
	 * Construtor da classe
	 *
	 * @return void
	 */
	public function __construct()
	{
		parent::__construct();

		$this->load->model('categorias/categoria_model', 'modelcategorias');
		$this->categorias = $this->modelcategorias->get_categorias();
		$this->load->model('posts/post_model', 'modelpublicacoes');
		$this->load->model('usuarios/usuarios_model','modelusuarios');

	}


	public function index()
	{
		try{

			$data['categorias'] = $this->categorias;
			$data['autores'] = $this->modelusuarios->get_autores();
			$data['title'] = "Blogao";
			$data['page_title'] = "Sobre";
			$data['page_subtitle'] = "Conheça nossa equipe";
            $data['semfoto'] = base_url() . "assets/frontend/images/semFoto.png";
			$this->twig->display('frontend/about.html', $data);

		}catch(Exception $e){

			show_error($e->getMessage().' --- '.$e->getTraceAsString());

		}
	}

	public function autores($id, $slug=null)
	{
		$data['categorias'] = $this->categorias;
		$data['title'] = "Blogao";
		$data['page_title'] = "About";
		$data['page_subtitle'] = "Autor";
		$data['autores'] = $this->modelusuarios->get_autor($id);
        $data['semfoto'] = base_url() . "assets/frontend/images/semFoto.png";

		$this->twig->display('frontend/autor.html', $data);
	}





}
