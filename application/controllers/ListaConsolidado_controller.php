<?php 
class ListaConsolidado_controller extends CI_Controller
{
	
	function __construct()
	{
		parent::__construct();
		$this->load->model("ListaConsolidado_model");
		$this->load->library("session");
	}

	public function index () {
		$data["data"] = $this->ListaConsolidado_model->showConsolidadosM();
		$this->load->view("header/header");
		$this->load->view('ConsolidadoM/ListaConsolidado',$data);
        $this->load->view("footer/footer");
        $this->load->view("jsView/jsListaConsolidado");
	}

	public function newConsol () {
		$data["inv"] = $this->ListaConsolidado_model->mostrarInv();
		$this->load->view("header/header");
		$this->load->view('ConsolidadoM/NewListConsol',$data);
        $this->load->view("footer/footer");
        $this->load->view("jsView/jsListaConsolidado");
	}

	public function RemisionListaConsolidado ($fecha) {
		$data["cons"] = $this->ListaConsolidado_model->RemisionListaConsol($fecha);
		$this->load->view('ConsolidadoM/Remision_ListaConsolidado',$data);
	}


	public function guardarConsolidadoM() {
		$datos = $this->input->get_post("datos");
		$this->ListaConsolidado_model->guardarConsolidadoM($datos);
		print_r($datos);
	} 

	public function detalleConsolidado($fecha) {
		$this->ListaConsolidado_model->detalleCons($fecha);
	}

	public function Delete($fecha) {
		$this->ListaConsolidado_model->Eliminar($fecha);
	}

}

 ?>
