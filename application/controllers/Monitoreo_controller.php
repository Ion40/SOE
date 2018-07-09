<?php
class Monitoreo_controller extends CI_Controller
{
	function __construct(){
		parent::__construct();
		$this->load->model("Monitoreo_model");
		$this->load->library("session");
	}

	public function index(){
		//$data["logs"] = $this->Monitoreo_model->getLogs();
		$this->load->view("header/header");
		$this->load->view('Usuarios/Monitoreo');
        $this->load->view("footer/footer");
        $this->load->view("jsView/jsMonitoreo");
	}

	public function mostrarLogs(){
		$this->Monitoreo_model->getLogs();
	}
}
?>