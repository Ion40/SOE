<?php
/**
 *  * Created by César Mejía Calderón.
 * User: César Mejía Calderón
 * Date: 3/7/2018
 * Time: 08:29
 */
class OrdenesS_controller extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->library("session");
		$this->load->model("OrdenesS_model");
		if ($this->session->userdata("logged") != 1)
		{
			redirect("Login", "refresh");
		}
	}

	public function index()
	{
		$data["ordenes"] = $this->OrdenesS_model->getOrdenesS();
		$this->load->view("header/header");
		$this->load->view("Ordenes_Super/Ordenes_S",$data);
		$this->load->view("footer/footer");
		$this->load->view("jsView/jsOrdenesS");
	}

	public function newOrderS()
	{
		$data["rutas"] = $this->OrdenesS_model->getRutas();
		$data["prod"] = $this->OrdenesS_model->listarProductos();
		$data["clientes"] = $this->OrdenesS_model->getCliente();
		$this->load->view("header/header");
		$this->load->view("Ordenes_Super/New_Order_S",$data);
		$this->load->view("footer/footer");
		$this->load->view("jsView/jsOrdenesS");
	}

	public function detalles_OrdenesS($ruta,$fecha)
	{
		$data["detalles"] = $this->OrdenesS_model->Detalles($ruta,$fecha);
		$this->load->view("header/header");
		$this->load->view("Ordenes_Super/Detalles_OrdenesS",$data);
		$this->load->view("footer/footer");
		$this->load->view("jsView/jsOrdenesS");
	}

	public function guardarOrdenS()
	{
		$this->OrdenesS_model->guardarOrdenS($this->input->get_post("ordenesS"));
	}

	public function getDetalleOrdenS($fecha)
	{
		$json = array();
		$query = $this->OrdenesS_model->getDetalleOrdenS($fecha);
		if ($query!=false)
		{
			foreach ($query as $item) {
				$data = array(
					"Ruta" => $item["Ruta"],
					"FechaEntrega" => $item["FechaEntrega"],
					"Unidades" => number_format($item["Unidades"],2),
					"LBS" => number_format($item["LBS"],2)
				);
				$json[] = $data;
			}
			echo json_encode($json);
		} else{
			echo "false";
		}
	}

	public function DetallesModal($fecha,$idcliente)
	{
		$this->OrdenesS_model->DetallesModal($fecha,$idcliente);
	}

	public function estadoVistoS($fecha,$idUser,$estado){
		if ($estado == 0) {
			$estado = 1;
		} else if($estado == 1){
			$estado = 0;
		}
		$this->OrdenesS_model->estadoVisto($fecha,$idUser,$estado);
	}

	public function DetallesOrdenSXCliente($cliente,$fecha)
	{
		$this->OrdenesS_model->DetallesOrdenSXCliente($cliente,$fecha);
	}

	public function actualizarOrdenS()
	{
		$OrdenEdit = $this->input->get_post("OrdenesS");
		$this->OrdenesS_model->actualizarOrdenS($OrdenEdit);
		print_r($OrdenEdit);
	}

	public function eliminarUnoS($id){
		$this->OrdenesS_model->eliminarUno($id);
	}

	public function remisionOrdenScliente($cliente,$ruta,$fecha){
		$data["cons"] = $this->OrdenesS_model->ultimoConsRemisionS($ruta,$fecha);
		$data["datos"] = $this->OrdenesS_model->remisionOrdenS($cliente,$ruta,$fecha);
		$this->load->view("Ordenes_Super/Remision_ordenS_cliente",$data);
		$this->Usuarios_model->InsertLog($this->session->userdata("id"), $this->session->userdata("NameU"),
			"Generó una nueva remision de orden con ruta ".$ruta." y fecha ".$fecha." para el cliente ".$cliente." ");
	}

	public function remisionOrdenSRutas($ruta,$fecha)
	{
		$data["cons"] = $this->OrdenesS_model->ultimoConsRemisionS($ruta,$fecha);
		$data["datos"] = $this->OrdenesS_model->remisionOrdenSRutas($ruta,$fecha);
		$this->load->view("Ordenes_Super/Remision_ordenS",$data);
		$this->Usuarios_model->InsertLog($this->session->userdata("id"), $this->session->userdata("NameU"),
			"Generó una nueva remision de orden con ruta ".$ruta." y fecha ".$fecha."");
	}
	public function incrementarLlaveS(){
		$ruta = $this->input->get_post("ruta");
		$fecha  = $this->input->get_post("fecha");
		$this->OrdenesS_model->incrementarLlaveS($ruta,$fecha);
	}

}
?>
