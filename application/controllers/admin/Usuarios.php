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
		$this->load->model('usuarios/usuarios_model', 'modelusuarios');
		// Switch to the Blowfish driver
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
			$data['usuarios'] = $this->modelusuarios->get_autores();
            $data['semfoto'] = base_url() . "assets/frontend/images/semFoto.png";

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

			if ($user = $this->modelusuarios->validate_login($user_data)) {
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
			'required|min_length[3]|is_unique[usuarios.user]');
		$this->form_validation->set_rules('txt-senha', 'Senha',
			'required|min_length[3]');
		$this->form_validation->set_rules('txt-confirm', 'Confirmar senha',
			'required|matches[txt-senha]');

		if($this->form_validation->run() == FALSE) {

			$this->index();

		} else {

			$user_data = $this->input->post();

			if($this->modelusuarios->inserir($user_data)) {
				redirect(base_url('admin/usuarios'));
			} else {
				echo "Erro no sistema";
			}
		}
	}

    public function alterar($id)
    {
        try{

            $data['usuario'] = $this->modelusuarios->get_usuario($id);
            $data['errors'] = validation_errors('','');
            $data['title'] = "Blogão";
            $data['page_title'] = "Painel de Controle";
            $data['page_subtitle'] = "Usuarios";
            $data['semfoto'] = base_url() . "assets/frontend/images/semFoto.png";

            $this->twig->display('backend/alterar_usuarios.html', $data);


        }catch(Exception $e){

            show_error($e->getMessage().' --- '.$e->getTraceAsString());

        }
    }

    public function nova_foto()
    {
        try{

            if($this->input->post()) {
                $id = $this->input->post('id_usuarios');

                $config['upload_path'] = './assets/frontend/images/usuarios';
                $config['allowed_types'] = 'jpg';
                $config['file_name'] = md5($id);
                $config['overwrite'] = TRUE;

                $this->load->library('upload', $config);

                if(!$this->upload->do_upload('userfile')) {
                    echo $this->upload->display_errors();
                } else {
                    $thumb['source_image'] = base_url(). '/assets/frontend/images/usuarios/' . md5($id) . '.jpg';
                    $thumb['create_thumb'] = FALSE;
                    $thumb['width'] = 200;
                    $thumb['height'] = 200;

                    $this->load->library('image_lib',$thumb);

                    if(!$this->image_lib->resize()){
                        if($this->modelusuarios->alterar_imagem($id, $thumb['source_image'])){
                            redirect(base_url('admin/usuarios/alterar/'. $id));
                        } else {
                            echo "erro";
                        }
                    } else {
                        echo $this->image_lib->display_errors();
                    }
                }
            }

        }catch(Exception $e){

            show_error($e->getMessage().' --- '.$e->getTraceAsString());

        }
    }

    public function editar()
    {
        $this->form_validation->set_rules('txt-nome', 'Nome do Usuário',
            'required|min_length[3]');
        $this->form_validation->set_rules('txt-email', 'Email',
            'required|valid_email');
        $this->form_validation->set_rules('txt-historico', 'Historico',
            'required|min_length[20]');
        $this->form_validation->set_rules('txt-user', 'Usuário',
            'required|min_length[3]');
        $this->form_validation->set_rules('txt-senha', 'Senha',
            'min_length[3]');
        $this->form_validation->set_rules('txt-confirm', 'Confirmar senha',
            'matches[txt-senha]');

        if($this->form_validation->run() == FALSE) {

            $this->alterar($this->input->post('id_usuarios'));

        } else {

            $user_data = $this->input->post();

            if($this->modelusuarios->alterar($user_data)) {

                redirect(base_url('admin/usuarios'));
            } else {
                echo "Erro no sistema";
            }
        }
    }

    public function excluir($id)
    {
        if($this->modelusuarios->delete($id)) {
            redirect(base_url('admin/usuarios'));
        } else {
            echo "erro no sistema";
        }
    }

	/*
	 * @Library Users_library
	 */

	private function set_session($user) {
		$this->session->set_userdata(
			array(
				"logado" => true,
				"user" => array(
					"user_object" => $user,
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
