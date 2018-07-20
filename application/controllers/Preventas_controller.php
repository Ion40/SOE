<?php
class Preventas_controller extends CI_Controller
{
    function __construct(){
        parent::__construct();
        $this->load->model('Preventas_model');
        $this->load->library('session');
		if ($this->session->userdata("logged") != 1)
		{
			redirect("Login", "refresh");
		}
    }

    public function index(){
        $data["prev"] = $this->Preventas_model->getPreventas();
        $data["prev2"] = $this->Preventas_model->getPreventas2();
        $this->load->view("header/header");
		$this->load->view('Preventas/Preventas',$data);
        $this->load->view("footer/footer");
        $this->load->view("jsView/jsPreventas");
    }

    public function nuevaOrdenPreventa(){
        $data["rutas"] = $this->Preventas_model->getRutas();
        $data["prod"] = $this->Preventas_model->listarProductos();
        $this->load->view("header/header");
		$this->load->view('Preventas/Nueva_preventa',$data);
        $this->load->view("footer/footer");
        $this->load->view("jsView/jsPreventas");
    }

    public function guardarPreventa(){
        $this->Preventas_model->guardarPreventa($this->input->get_post("preventa"));
        $this->Usuarios_model->InsertLog($this->session->userdata("id"), $this->session->userdata("NameU"),
        "".$this->session->userdata("NameU")." agregó una nueva orden de entrega (preventa)");
    }

    public function getPrevenDetalle($fecha){
        $json = array();
        $query = $this->Preventas_model->getPreventaDetalle($fecha);
        if ($query!=false) {
            foreach ($query as $key ) {
             $data = array(
                 "Ruta" => $key["Ruta"],
                 "Unidades" => number_format($key["Unidades"],2),
                 "Vendedor" => $key["Vendedor"],
                 "Nombre" => $key["Nombre"],
                 "LBS" => number_format($key["LBS"],2),
                 "Estado" => $key["Estado"],
                 "FechaEntrega" => $key["FechaEntrega"],
                 "Usuario" => $key["Usuario"]
             );
             $json[] =  $data;
            }
            echo json_encode($json);
        } else {
            echo "false";
        }
        
    }

    public function getPrevenDetalle2($fecha,$usuario){
        $json = array();
        $query = $this->Preventas_model->getPreventaDetalle2($fecha,$usuario);
        if ($query!=false) {
            foreach ($query as $key ) {
             $data = array(
                 "Ruta" => $key["Ruta"],
                 "Unidades" => number_format($key["Unidades"],2),
                 "Vendedor" => $key["Vendedor"],
                 "Nombre" => $key["Nombre"],
                 "LBS" => number_format($key["LBS"],2),
                 "Estado" => $key["Estado"],
                 "FechaEntrega" => $key["FechaEntrega"]
             );
             $json[] =  $data;
            }
            echo json_encode($json);
        } else {
            echo "false";
        }
        
    }

    public function detallePreventaPorRuta($ruta,$fecha){
        $data["ordenesDet"] = $this->Preventas_model->detallePreventaPorRuta($ruta,$fecha);
        $this->load->view("header/header");
		$this->load->view('Preventas/Detalles_preventas',$data);
        $this->load->view("footer/footer");
        $this->load->view("jsView/jsDetOrden");
    }  

    public function detallePreventaPorRutaGen($ruta,$fecha,$idUser){
        $data["ordenesDet"] = $this->Preventas_model->detallePreventaPorRutaGen($ruta,$fecha,$idUser);
        $this->load->view("header/header");
        $this->load->view('Preventas/Detalles_preventas',$data);
        $this->load->view("footer/footer");
        $this->load->view("jsView/jsDetOrden");
    } 
/***********************************************************Crear PDF*************************************************************** */
    public function Remisionpreventa($ruta,$fecha,$idUser){
        $data["cons"] = $this->Preventas_model->ultimoConsPreventa($ruta,$fecha);
        $data["datos"] = $this->Preventas_model->remisionPreventa($ruta,$fecha,$idUser);
        $this->load->view("Preventas/Remision_preventa",$data);
        $this->Usuarios_model->InsertLog($this->session->userdata("id"), $this->session->userdata("NameU"),
        "Generó una nueva remision de preventa con ruta ".$ruta." y fecha ".$fecha." ");
    }

    public function incrementarLlave(){
        $ruta = $this->input->get_post("ruta");
        $fecha  = $this->input->get_post("fecha");
        $this->Preventas_model->incrementarLlave($ruta,$fecha);
    }

    public function modalDetalles($ruta,$fecha,$idUser){
        $this->Preventas_model->modalDetallePreventa($ruta,$fecha,$idUser);
    }

    public function actualizarOrdenPrev()
    {
        $OrdenEdit = $this->input->get_post("Ordenes");
        $this->Preventas_model->actualizarOrdenPrev($OrdenEdit);
        print_r($OrdenEdit);
    }

    public function estadoVisto($fecha,$idUser,$estado){
        if ($estado == 0) {
            $estado = 1;
        } else if($estado == 1){
            $estado = 0;
        }
        $this->Preventas_model->estadoVisto($fecha,$idUser,$estado);
    }

/************************************************************************************************************************** */
}
?>
