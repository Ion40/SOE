<?php
class Ordenes_controller extends CI_Controller
{
    function __construct(){
        parent::__construct();
        $this->load->model('Ordenes_model');
        $this->load->library('session');
		if ($this->session->userdata("logged") != 1)
		{
			redirect("Login", "refresh");
		}
    }

    public function index(){
        $data["ordenes"] = $this->Ordenes_model->getOrdenes();
        $data["ordenes2"] = $this->Ordenes_model->getOrdenes2();
        $this->load->view("header/header");
		$this->load->view('Ordenes/Ordenes',$data);
        $this->load->view("footer/footer");
        $this->load->view("jsView/jsOrdenes");
    }

    public function nuevaOrden(){
        $data["rutas"] = $this->Ordenes_model->getRutas();
        $data["prod"] = $this->Ordenes_model->listarProductos();
        $this->load->view("header/header");
		$this->load->view('Ordenes/Nueva_orden',$data);
        $this->load->view("footer/footer");
        $this->load->view("jsView/jsOrdenes");
    }

    public function guardarOrden(){
        $this->Ordenes_model->guardarOrden($this->input->get_post("ordenes"));
        $this->Usuarios_model->InsertLog($this->session->userdata("id"), $this->session->userdata("NameU"),
        "".$this->session->userdata("NameU")." agregó una nueva orden de entrega");
    }

    public function getOdenDetalles($fecha){
        $json = array();
        $query = $this->Ordenes_model->getOdenDetalle($fecha);
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

    public function getOdenDetalles2($fecha, $nombre){
        $json = array();
        $query = $this->Ordenes_model->getOdenDetalle2($fecha,$nombre);
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

    public function detallesOrdenSupervisor($ruta,$fecha,$id){
        $data["ordenesDet"] = $this->Ordenes_model->detalleOrdenPorRuta($ruta,$fecha,$id); 
        $this->load->view("header/header");
		$this->load->view('Ordenes/Detalles_ordenes',$data);
        $this->load->view("footer/footer");
        $this->load->view("jsView/jsDetOrden");
    }

    public function detalleSupervisor($ruta,$fecha){
        $data["ordenesDet"] = $this->Ordenes_model->detalleOrdenPorRutaSuper($ruta,$fecha);  
        $this->load->view("header/header");
        $this->load->view('Ordenes/Detalles_ordenes',$data);
        $this->load->view("footer/footer");
        $this->load->view("jsView/jsDetOrden");
    }

    public function detallesOrdenYan($ruta,$fecha,$iduser)
    {
        $this->Ordenes_model->detalleOrdenPorRutaYan($ruta,$fecha,$iduser);
    }

    /************************************************************************************** */
    public function remisionOrdenSupervisor($ruta,$fecha){
        $data["cons"] = $this->Ordenes_model->ultimoConsRemision($ruta,$fecha);
        $data["datos"] = $this->Ordenes_model->remisionOrdenSupervisor($ruta,$fecha);  
        $this->load->view("Ordenes/Remision_orden",$data);
        $this->Usuarios_model->InsertLog($this->session->userdata("id"), $this->session->userdata("NameU"),
        "Generó una nueva remision de orden con ruta ".$ruta." y fecha ".$fecha." ");
    }


    public function remisionOrden($ruta,$fecha,$idUser){
        $data["cons"] = $this->Ordenes_model->ultimoConsRemision($ruta,$fecha);
        $data["datos"] = $this->Ordenes_model->remisionOrden($ruta,$fecha,$idUser); 
        $this->load->view("Ordenes/Remision_orden",$data);
        $this->Usuarios_model->InsertLog($this->session->userdata("id"), $this->session->userdata("NameU"),
        "Generó una nueva remision de orden con ruta ".$ruta." y fecha ".$fecha." ");
    }

    public function incrementarLlave(){
        $ruta = $this->input->get_post("ruta");
        $fecha  = $this->input->get_post("fecha");
        $this->Ordenes_model->incrementarLlave($ruta,$fecha);
    }


    public function estadoVisto($fecha,$idUser,$estado){
        if ($estado == 0) {
            $estado = 1;
        } else if($estado == 1){
            $estado = 0;
        }
        $this->Ordenes_model->estadoVisto($fecha,$idUser,$estado);
    }

    /************************************************************************************** */

    public function actualizarOrden()
    {
        $OrdenEdit = $this->input->get_post("Ordenes");
        $this->Ordenes_model->actualizarOrden($OrdenEdit);
        print_r($OrdenEdit);
    }

    public function eliminarUno($id){
        $this->Ordenes_model->eliminarUno($id);
    }
}
?>
