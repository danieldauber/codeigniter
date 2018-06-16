<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */

	/**
	 * Construtor da classe
	 *
	 * @return void
	 */
	public function __construct()
	{
		parent::__construct();
		$this->load->model('categorias/categoria_model', 'categorias');
		$this->load->model('posts/post_model', 'posts');
		$this->load->model('usuarios/usuarios_model', 'usuarios');

	}


	public function index()
	{
		try{

			$categorias = $this->categorias->get_categorias();
			$posts = $this->posts->destaques_home();

			$data['categorias'] = $categorias;
			$data['postagens'] = $posts;
			$data['title'] = "Blogao";
			$data['page_title'] = "Titulo da pagina";
			$data['page_subtitle'] = "Subtitulo da pagina";
			$this->twig->display('frontend/content.html', $data);

		}catch(Exception $e){

			show_error($e->getMessage().' --- '.$e->getTraceAsString());

		}
	}




}
