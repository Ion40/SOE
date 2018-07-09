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
		$data["ordenes"] = $this->PreventasS_model->getPreventasS();
		$this->load->view("header/header");
		$this->load->view("Preventas_Super/Preventas_S",$data);
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

	public function detalles_OrdenesPrevS($ruta,$fecha)
	{
		$data["detalles"] = $this->PreventasS_model->Detalles($ruta,$fecha);
		$this->load->view("header/header");
		$this->load->view("Preventas_Super/Detalles_PrevS",$data);
		$this->load->view("footer/footer");
		$this->load->view("jsView/jsPreventasS");
	}


	public function guardarPreventaS()
	{
		$this->PreventasS_model->guardarPreventaS($this->input->get_post("preventasS"));
	}

	public function getDetalleOrdenPrevS($fecha)
	{
		$json = array();
		$query = $this->PreventasS_model->getDetalleOrdenPrevS($fecha);
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
		$this->PreventasS_model->DetallesModal($fecha,$idcliente);
	}

	public function DetallesOrdenPrevSXCliente($cliente,$fecha)
	{
		$this->PreventasS_model->DetallesOrdenPrevSXCliente($cliente,$fecha);
	}

	public function eliminarUnoPrevS($id){
		$this->PreventasS_model->eliminarUno($id);
	}

	public function actualizarOrdenPrevS()
	{
		$OrdenEdit = $this->input->get_post("OrdenesPrevS");
		$this->PreventasS_model->actualizarOrdenPrevS($OrdenEdit);
		print_r($OrdenEdit);
	}

	public function remisionOrdenPrevScliente($cliente,$ruta,$fecha){
		$data["cons"] = $this->PreventasS_model->ultimoConsRemisionS($ruta,$fecha);
		$data["datos"] = $this->PreventasS_model->remisionOrdenPrevS($cliente,$ruta,$fecha);
		$this->load->view("Preventas_Super/Remision_PrevS_cliente",$data);
		$this->Usuarios_model->InsertLog($this->session->userdata("id"), $this->session->userdata("NameU"),
			"Generó una nueva remision de orden con ruta ".$ruta." y fecha ".$fecha." para el cliente ".$cliente." ");
	}

	public function remisionOrdenPrevSRutas($ruta,$fecha)
	{
		$data["cons"] = $this->PreventasS_model->ultimoConsRemisionS($ruta,$fecha);
		$data["datos"] = $this->PreventasS_model->remisionOrdenPrevSRutas($ruta,$fecha);
		$this->load->view("Preventas_Super/Remision_PrevS",$data);
		$this->Usuarios_model->InsertLog($this->session->userdata("id"), $this->session->userdata("NameU"),
			"Generó una nueva remision de orden con ruta ".$ruta." y fecha ".$fecha."");
	}


}
?>
