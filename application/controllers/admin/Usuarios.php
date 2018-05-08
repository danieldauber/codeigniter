<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Usuarios extends CI_Controller {


	/**
	 * Construtor da classe
	 *
	 * @return void
	 */
	public function __construct()
	{
		parent::__construct();
		$this->load->library('form_validation');
		$this->load->model('Usuarios_model', 'usuarios');
		// Switch to the MCrypt driver
		$this->encryption->initialize(array('driver' => 'Blowfish'));

	}


	public function index()
	{

		if(!$this->session->userdata('logado')){
			redirect(base_url('admin/login'));
		}

		try{

			$data['title'] = "Blogão";
			$data['page_title'] = "Painel de Controle";
			$data['page_subtitle'] = "Usuários";
			$data['errors'] = validation_errors('','');
			$data['usuarios'] = $this->usuarios->get_autores();

			$this->twig->display('backend/usuarios.html', $data);

		}catch(Exception $e){

			show_error($e->getMessage().' --- '.$e->getTraceAsString());

		}
	}

	public function login()
	{
		try{

			$data['title'] = "Blogão";
			$data['page_title'] = "Painel de Controle";
			$data['page_subtitle'] = "Login";
			$data['errors'] = validation_errors('','');
			$this->twig->display('backend/login.html', $data);


		}catch(Exception $e){

			show_error($e->getMessage().' --- '.$e->getTraceAsString());

		}
	}

	public function logar()
	{
		$this->form_validation->set_rules('txt-user', 'Digite o Usuário',
			'required|min_length[3]');
		$this->form_validation->set_rules('txt-senha', 'Digite a Senha',
			'required|min_length[3]');

		if($this->form_validation->run() == FALSE) {
			$this->login();
		} else {
			$user_data = $this->input->post();

			if ($user = $this->usuarios->validate_login($user_data)) {
				$this->set_session($user);
				redirect(base_url('admin/'));
			} else {
				$this->unset_session();
				redirect(base_url('admin/login'));
			}

		}
	}

	public function logout()
	{
		$this->unset_session();
		redirect(base_url('admin/login'));
	}

	public function inserir(){

		if(!$this->session->userdata('logado')){
			redirect(base_url('admin/login'));
		}

		$this->form_validation->set_rules('txt-nome', 'Nome do Usuário',
			'required|min_length[3]');
		$this->form_validation->set_rules('txt-email', 'Email',
			'required|valid_email');
		$this->form_validation->set_rules('txt-historico', 'Historico',
			'required|min_length[20]');
		$this->form_validation->set_rules('txt-user', 'Usuário',
			'required|min_length[3]|is_unique[usuario.user]');
		$this->form_validation->set_rules('txt-senha', 'Senha',
			'required|min_length[3]');
		$this->form_validation->set_rules('txt-confirm', 'Confirmar senha',
			'required|matches[txt-senha]');

		if($this->form_validation->run() == FALSE) {

			$this->index();

		} else {

			$user_data = $this->input->post();

			$user = new Usuarios_Library();
			$user->nome = $user_data['txt-nome'];
			$user->email = $user_data['txt-email'];
			$user->historico = $user_data['txt-historico'];
			$user->user = $user_data['txt-user'];
			$user->password = $this->encryption->encrypt($user_data['txt-senha']);

			if($user->save()) {
				redirect(base_url('admin/usuarios'));
			} else {
				echo "Erro no sistema";
			}
		}
	}

	public function excluir($id) {

		$user = new Usuarios_Library((int) $id);

		if($user->delete()) {
			redirect(base_url('admin/usuarios'));
		} else {
			echo "Erro no sistema";
		}

	}

	/*
	 * @Library Users_library
	 */

	private function set_session(Users_library $user) {
		$this->session->set_userdata(
			array(
				"logado" => true,
				"user" => array(
					"user_object" => $user->to_array(),
				)
			)
		);
	}

	private function unset_session() {
		$this->session->set_userdata(
			array(
				"logado" => false,
				"user" => NULL,
			)
		);
	}



}
