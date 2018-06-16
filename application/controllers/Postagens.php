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

		$this->load->model('categorias/categoria_model', 'categorias');
		$this->load->model('posts/posts_model', 'posts');

	}


	public function index($id)
	{
		try{

			$data['categorias'] = $this->categorias->fetchAll();
			$data['postagens'] = $this->posts->fetchAll([
				'where' => 'id_posts = ' . $id,
			]);

			$data['title'] = "Blogao";
			$this->twig->display('frontend/post.html', $data);

		}catch(Exception $e){

			show_error($e->getMessage().' --- '.$e->getTraceAsString());

		}
	}




}
