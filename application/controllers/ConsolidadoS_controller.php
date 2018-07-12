<?php
/**
 *  * Created by César Mejía Calderón.
 * User: César Mejía Calderón
 * Date: 10/7/2018
 * Time: 09:27
 */
class ConsolidadoS_controller extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->library("session");
		$this->load->model("ConsolidadoS_model");
	}

	public function index()
	{
		$data["cons"] = $this->ConsolidadoS_model->getConsolidado_S();
		$this->load->view("header/header");
		$this->load->view('ConsolidadoS/ConsolidadoS',$data);
		$this->load->view("footer/footer");
		$this->load->view("jsView/jsConsolidadoS");
	}

	public function NuevoConsolidadoS()
	{
		$data["fechas"] = $this->ConsolidadoS_model->getFechaEntrega();
		$this->load->view("header/header");
		$this->load->view('ConsolidadoS/Nuevo_consolidadoS',$data);
		$this->load->view("footer/footer");
		$this->load->view("jsView/jsConsolidadoS");
	}

	public function DetallesConsS($fechaEntrega,$tipo, $usuario){
		$data["detalle"] = $this->ConsolidadoS_model->remisionConsolidadoS($fechaEntrega,$tipo, $usuario);
		$this->load->view("header/header");
		$this->load->view('ConsolidadoS/Detalles_consolidadoS',$data);
		$this->load->view("footer/footer");
		$this->load->view("jsView/jsConsolidadoS");
	}

	public function RemisionS($fecha,$tipo, $usuario){
		$data["remision"] = $this->ConsolidadoS_model->remisionConsolidadoS($fecha,$tipo, $usuario);
		$data["cons"] = $this->ConsolidadoS_model->ultimoConsecConsol($fecha,$tipo, $usuario);
		$this->load->view('ConsolidadoS/Remision_consolidadoS',$data);
	}

     public function nuevoConsolidadoOrderS ($fecha)
	 {
	 	$this->ConsolidadoS_model->nuevoConsolidadoOrderS($fecha);
	 }

	public function buscarRepetidos($codigo, $fechaEntrega, $tipo){
		$this->ConsolidadoS_model->buscarRepetidos($codigo, $fechaEntrega, $tipo);
	}

	public function guardarConsolidadoOS () {
		$consO = $this->input->get_post("consOS");
		$this->ConsolidadoS_model->guardarConsolidadoOS ($consO);
		print_r($consO);
	}

	public function nuevoConsolidadoPS ($fecha,$id)
	{
		$this->ConsolidadoS_model->nuevoConsolidadoPS($fecha,$id);
	}

	public function guardarConsolidadoPS () {
		$consP = $this->input->get_post("consPS");
		$this->ConsolidadoS_model->guardarConsolidadoPS ($consP);
		print_r($consP);
	}

     public function nuevoConsolidadoUnif ($fecha)
	 {
		 $this->ConsolidadoS_model->nuevoConsolidadoUnif($fecha);
	 }

	public function guardarConsolidadoS (){
		$Consolidado = $this->input->get_post("consolidadoS");
		$this->ConsolidadoS_model->guardarConsolidadoS($Consolidado);
		print_r($Consolidado);
	}

	public function detallesConsolidadoS($fecha) {
		$json = array();
		$query = $this->ConsolidadoS_model->detallesConsolidadoS($fecha);
		if ($query != false) {
			foreach ($query as $key) {
				$data = array(
					"Unidades" => number_format($key["Unidades"],2),
					"LBS" => number_format($key["LBS"],2),
					"FechaEntrega" => $key["FechaEntrega"],
					"FechaCreacion" => $key["FechaCreacion"],
					"Tipo" => $key["Tipo"],
					"Usuario" => $key["Usuario"]
				);
				$json[] = $data;
			}
			echo  json_encode($json);
		}else{
			echo "false";
		}
	}

	public function EliminarCons($fechaEntrega, $tipo, $usuario){
		$this->ConsolidadoS_model->eliminarCons($fechaEntrega, $tipo, $usuario);
	}

}
?>
