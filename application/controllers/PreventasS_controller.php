<?php
/**
 *  * Created by César Mejía Calderón.
 * User: César Mejía Calderón
 * Date: 9/7/2018
 * Time: 10:11
 */
class PreventasS_controller extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->library("session");
		$this->load->model("PreventasS_model");
		$this->load->model("OrdenesS_model");
	}

	public function index()
	{
		$this->load->view("header/header");
		$this->load->view("Preventas_Super/Preventas_S");
		$this->load->view("footer/footer");
		$this->load->view("jsView/jsPreventasS");
	}

	public function newPreventaS()
	{
		$data["rutas"] = $this->OrdenesS_model->getRutas();
		$data["prod"] = $this->OrdenesS_model->listarProductos();
		$data["clientes"] = $this->OrdenesS_model->getCliente();
		$this->load->view("header/header");
		$this->load->view("Preventas_Super/New_Prev_S",$data);
		$this->load->view("footer/footer");
		$this->load->view("jsView/jsPreventasS");
	}

	public function guardarPreventaS()
	{
		$this->PreventasS_model->guardarPreventaS($this->input->get_post("preventasS"));
	}

}
?>
