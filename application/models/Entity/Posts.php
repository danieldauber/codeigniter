<?php

namespace Entity;

/**
 * @Entity @Table(name="posts")
 **/
class Posts
{
	/** @Id @Column(type="integer") @GeneratedValue **/
	protected $id_posts;

	/** @Column(type="integer") **/
	protected $id_categoria;

	/** @Column(type="string") **/
	protected $titulo;

	/** @Column(type="string") **/
	protected $subtitulo;

	/** @Column(type="string") **/
	protected $conteudo;

	/** @Column(type="datetime") **/
	protected $data;

	/** @Column(type="string") **/
	protected $img;

	/** @Column(type="integer") **/
	protected $id_user;

	/**
	 * @return mixed
	 */
	public function getIdPosts()
	{
		return $this->id_posts;
	}


	/**
	 * @return mixed
	 */
	public function getIdCategoria()
	{
		return $this->id_categoria;
	}

	/**
	 * @param mixed $id_categoria
	 */
	public function setIdCategoria($id_categoria): void
	{
		$this->id_categoria = $id_categoria;
	}

	/**
	 * @return mixed
	 */
	public function getTitulo()
	{
		return $this->titulo;
	}

	/**
	 * @param mixed $titulo
	 */
	public function setTitulo($titulo): void
	{
		$this->titulo = $titulo;
	}

	/**
	 * @return mixed
	 */
	public function getSubtitulo()
	{
		return $this->subtitulo;
	}

	/**
	 * @param mixed $subtitulo
	 */
	public function setSubtitulo($subtitulo): void
	{
		$this->subtitulo = $subtitulo;
	}

	/**
	 * @return mixed
	 */
	public function getConteudo()
	{
		return $this->conteudo;
	}

	/**
	 * @param mixed $conteudo
	 */
	public function setConteudo($conteudo): void
	{
		$this->conteudo = $conteudo;
	}

	/**
	 * @return mixed
	 */
	public function getData()
	{
		return $this->data;
	}

	/**
	 * @param mixed $data
	 */
	public function setData($data): void
	{
		$this->data = $data;
	}

	/**
	 * @return mixed
	 */
	public function getImg()
	{
		return $this->img;
	}

	/**
	 * @param mixed $img
	 */
	public function setImg($img): void
	{
		$this->img = $img;
	}

	/**
	 * @return mixed
	 */
	public function getIdUser()
	{
		return $this->id_user;
	}

	/**
	 * @param mixed $id_user
	 */
	public function setIdUser($id_user): void
	{
		$this->id_user = $id_user;
	}



}
