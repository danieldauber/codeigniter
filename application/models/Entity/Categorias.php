<?php

namespace Entity;

/**
 * @Entity @Table(name="categoria")
 **/
class Categorias
{
	/** @Id @Column(type="integer") @GeneratedValue **/
	protected $id_categoria;

	/** @Column(type="string") **/
	protected $titulo;

	public function getId()
	{
		return $this->id_categoria;
	}

	public function getTitulo()
	{
		return $this->titulo;
	}

	public function setTitulo($titulo)
	{
		$this->titulo = $titulo;
	}
}
