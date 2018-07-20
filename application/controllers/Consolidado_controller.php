<?php
class Consolidado_controller extends CI_Controller
{
	
	function __construct()
	{
		parent::__construct();
		$this->load->library("session");
		$this->load->model("Consolidado_model");
		if ($this->session->userdata("logged") != 1)
		{
			redirect("Login", "refresh");
		}
	}

	public function index(){
		$data["cons"] = $this->Consolidado_model->getConsolidado();
        $this->load->view("header/header");
		$this->load->view('Consolidado/Consolidado',$data);
        $this->load->view("footer/footer");
        $this->load->view("jsView/jsConsolidado");
	}

	public function NuevoCons(){
		$data["fechas"] = $this->Consolidado_model->getFechaEntrega();
        $this->load->view("header/header");
		$this->load->view('Consolidado/Nuevo_Consolidado',$data);
        $this->load->view("footer/footer");
        $this->load->view("jsView/jsConsolidado");
	}


	public function getConsolidado($fecha){
        $this->Consolidado_model->nuevoConsolidado($fecha);
    }

    public function guardarConsolidado (){
    	$Consolidado = $this->input->get_post("consolidado");
    	$this->Consolidado_model->guardarConsolidado($Consolidado);
    	print_r($Consolidado);
    }

    /*****************************************************************************************/
    public function guardarConsolidadoP () {
		$consP = $this->input->get_post("consP");
		$this->Consolidado_model->guardarConsolidadoP($consP);
		print_r($consP);
	}

	public function guardarConsolidadoO () {
		$consO = $this->input->get_post("consO");
		$this->Consolidado_model->guardarConsolidadoO($consO);
		print_r($consO);
	}

	/*****************************************************************************************/

    public function buscarRepetidos($codigo, $fechaEntrega, $tipo){
    	$this->Consolidado_model->buscarRepetidos($codigo, $fechaEntrega, $tipo);
    }

    public function Remision($fechaEntrega,$tipo){
    	$data["remision"] = $this->Consolidado_model->remisionConsolidado($fechaEntrega,$tipo);
		$data["cons"] = $this->Consolidado_model->ultimoConsecConsol($fechaEntrega,$tipo);
		$this->load->view('Consolidado/Remision_consolidado',$data);
    }

	public function incrementarLlave(){
		$tipo = $this->input->get_post("tipo");
		$fecha  = $this->input->get_post("fecha");
		$this->Consolidado_model->incrementarLlave($tipo,$fecha);
	}

    public function DetallesCons($fechaEntrega,$tipo){
    	$data["detalle"] = $this->Consolidado_model->remisionConsolidado($fechaEntrega,$tipo);
    	 $this->load->view("header/header");
		$this->load->view('Consolidado/Detalles_consolidado',$data);
		$this->load->view("footer/footer");
        $this->load->view("jsView/jsConsolidado");
    }

    public function eliminarCons($fechaEntrega, $tipo){
    	$this->Consolidado_model->eliminarCons($fechaEntrega, $tipo);
    }

    /***************************************************************************************************************/
	public  function nuevoConsolidadoP($fecha){
		$this->Consolidado_model->nuevoConsolidadoP($fecha);
	}

	public function nuevoConsolidadoOrder($fecha){
		$this->Consolidado_model->nuevoConsolidadoOrder($fecha);
	}

	/****************************************************************************************************************/

	public function detallesConsolidado($fecha) {
		$json = array();
		$query = $this->Consolidado_model->detallesConsolidado($fecha);
		if ($query != false) {
			foreach ($query as $key) {
				$data = array(
					"Unidades" => number_format($key["Unidades"],2),
					"LBS" => number_format($key["LBS"],2),
					"FechaEntrega" => $key["FechaEntrega"],
					"FechaCreacion" => $key["FechaCreacion"],
					"Tipo" => $key["Tipo"]
				);
				$json[] = $data;
			}
			echo  json_encode($json);
		}else{
			echo "false";
		}
	}
}
?>
