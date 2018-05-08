<?php

namespace Entity;

/**
 * @Entity @Table(name="usuarios")
 **/
class Usuarios
{
	/** @Id @Column(type="integer") @GeneratedValue **/
	protected $id_usuarios;

	/** @Column(type="string") **/
	protected $nome;

	/** @Column(type="string") **/
	protected $email;

	/** @Column(type="string") **/
	protected $imagem;

	/** @Column(type="string") **/
	protected $historico;

	/** @Column(type="string") **/
	protected $user;

	/** @Column(type="string") **/
	protected $password;

	/**
	 * @return mixed
	 */
	public function get_id_usuarios()
	{
		return $this->id_usuarios;
	}

	/**
	 * @return mixed
	 */
	public function get_email()
	{
		return $this->email;
	}

	/**
	 * @param mixed $email
	 */
	public function set_email($email): void
	{
		$this->email = $email;
	}

	/**
	 * @return mixed
	 */
	public function get_imagem()
	{
		return $this->imagem;
	}

	/**
	 * @param mixed $imagem
	 */
	public function set_imagem($imagem): void
	{
		$this->imagem = $imagem;
	}

	/**
	 * @return mixed
	 */
	public function get_historico()
	{
		return $this->historico;
	}

	/**
	 * @param mixed $historico
	 */
	public function set_historico($historico): void
	{
		$this->historico = $historico;
	}

	/**
	 * @return mixed
	 */
	public function get_user()
	{
		return $this->user;
	}

	/**
	 * @param mixed $user
	 */
	public function set_user($user): void
	{
		$this->user = $user;
	}

	/**
	 * @return mixed
	 */
	public function get_password()
	{
		return $this->password;
	}

	/**
	 * @param mixed $password
	 */
	public function set_password($password): void
	{
		$this->password = $password;
	}


	/**
	 * @return mixed
	 */
	public function get_nome()
	{
		return $this->nome;
	}

	/**
	 * @param mixed $nome
	 */
	public function set_nome($nome): void
	{
		$this->nome = $nome;
	}


}
