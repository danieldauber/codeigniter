<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Categoria extends CI_Controller {


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

		$this->load->model('categorias/categoria_model', 'modelcategorias');
		$this->categorias = $this->modelcategorias->get_categorias();
		$this->load->library('form_validation');


	}


	public function index()
	{
		try{

			$data['categorias'] = $this->categorias;
			$data['errors'] = validation_errors('','');
			$data['title'] = "Blogão";
			$data['page_title'] = "Painel de Controle";
			$data['page_subtitle'] = "Categoria";
			$this->twig->display('backend/categoria.html', $data);

		}catch(Exception $e){

			show_error($e->getMessage().' --- '.$e->getTraceAsString());

		}
	}

	public function inserir() {

		$this->form_validation->set_rules('txt-categoria', 'Nome da Categoria',
			'required|min_length[3]|is_unique[categoria.titulo]');

		if($this->form_validation->run() == FALSE) {
			$this->index();
		} else {
			if($this->modelcategorias->inserir($this->input->post('txt-categoria'))) {
				redirect(base_url('admin/categoria'));
			} else {
				echo "erro no sistema";
			}
		}
	}

	public function excluir($id)
	{
		if($this->modelcategorias->excluir($id)) {
			redirect(base_url('admin/categoria'));
		} else {
			echo "erro no sistema";
		}
	}

	public function alterar($id)
	{
		try{

			$data['categorias'] = $this->modelcategorias->get_titulo($id);
			$data['errors'] = validation_errors('','');
			$data['title'] = "Blogão";
			$data['page_title'] = "Painel de Controle";
			$data['page_subtitle'] = "Categoria";
			$this->twig->display('backend/alterar_categoria.html', $data);

		}catch(Exception $e){

			show_error($e->getMessage().' --- '.$e->getTraceAsString());

		}
	}

	public function editar()
	{
		$this->form_validation->set_rules('txt-categoria', 'Nome da Categoria',
			'required|min_length[3]|is_unique[categoria.titulo]');

		if($this->form_validation->run() == FALSE) {
			$this->index();
		} else {
			if($this->modelcategorias->alterar($this->input->post())) {
				redirect(base_url('admin/categoria'));
			} else {
				echo "erro no sistema";
			}
		}
	}




}
