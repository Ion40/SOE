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
		$this->load->view("jsView/jsOrdenesS");
	}

}
?>
