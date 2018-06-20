<?php

class Usuarios_Model extends CI_Model
{
	public $id;
	public $nome;
	public $email;
	public $imagem;
	public $historico;
	public $user;
	public $password;

    public function get_autor($id)
    {
        $this->db->select('id_usuarios,nome, email, imagem, historico');
        $this->db->from('usuarios');
        $this->db->where('id_usuarios = ' . $id);
        return $this->db->get()->result();
    }

    public function get_autores()
    {
        $this->db->select('id_usuarios,nome, email, imagem, historico');
        $this->db->from('usuarios');
        return $this->db->get()->result();
    }

    public function validate_login($user_data)
    {

        $this->db->select('nome,email,id_usuarios,password');
        $this->db->from('usuarios');
        $this->db->where("user = '". $user_data['txt-user'] . "' ");
        $user = $this->db->get()->row();

        if(password_verify($user_data['txt-senha'], $user->password)){
            return $user;
        } else {
            return false;
        }

    }
}
