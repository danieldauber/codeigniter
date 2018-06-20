<?php


class Categoria_Model extends CI_Model {

	public $id;
	public $titulo;

	public function __construct()
	{
		parent::__construct();
	}

	public function get_categorias(){
		$this->db->order_by('titulo', 'ASC');
		return $this->db->get('categoria')->result();
	}

	public function get_titulo($id =""){
	    $this->db->where('id_categoria = ' . $id);
	    return $this->db->get('categoria')->result();
    }

    public function inserir($categoria)
    {
        $dados['titulo'] = $categoria;
        return $this->db->insert('categoria',$dados);
    }

}
