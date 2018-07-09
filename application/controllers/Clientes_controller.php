<?php
/**
 * Created by Cesar Mejia.
 * User: Sistemas
 * Date: 29/6/2018
 * Time: 11:50
 */
class Clientes_controller extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->library("session");
		$this->load->model("Clientes_model");
	}

	public function index(){
		$data["rutas"] = $this->Clientes_model->getRutasxUsuario();
		$this->load->view("header/header");
		$this->load->view("Clientes/Clientes",$data);
		$this->load->view("footer/footer");
		$this->load->view("jsView/jsClientes");
	}

	public function getClientes ()
	{
		$this->Clientes_model->getClientes();
	}

	public function guardarCliente () {
		$nombre = $this->input->get_post("nombre");
		$ruta = $this->input->get_post("ruta");
		$this->Clientes_model->guardarCliente($nombre,$ruta);
		echo $nombre." ".$ruta;
	}

	public function actualizarCliente()
	{
		$id = $this->input->get_post("idcliente");
		$nombre = $this->input->get_post("nombreedit");
		$ruta = $this->input->get_post("rutaedit");
		$this->Clientes_model->actualizarCliente($id,$nombre,$ruta);
	}

	public function bajaCliente($id,$estado)
	{
		if ($estado == "Activo")
		{
			$estado = 0;
		}else{
			$estado = 1;
		}
		$this->Clientes_model->bajaCliente($id,$estado);
	}
}
?>
