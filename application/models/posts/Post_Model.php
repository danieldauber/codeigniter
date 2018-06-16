<?php

class Post_Model extends CI_Model {

	public $id_posts;
	public $id_categoria;
	public $titulo;
	public $subtitulo;
	public $conteudo;
	public $data;
	public $img;
	public $id_user;

	public function __construct()
	{
		parent::__construct();
	}

	public function destaques_home()
	{
		$this->db->select('usuarios.id_usuarios as idautor,
			usuarios.nome, posts.id_posts, posts.titulo, posts.subtitulo, 
			posts.id_user, posts.img');
		$this->db->from('posts');
		$this->db->join('usuarios', 'usuarios.id_usuarios = posts.id_user');
		$this->db->limit(4);
		$this->db->order_by('data', 'DESC');
		return $this->db->get()->result();
	}

}
