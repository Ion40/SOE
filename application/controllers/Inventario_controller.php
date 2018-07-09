<?php
class Inventario_controller extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->library("session");
        $this->load->model("Inventario_model");
        require_once APPPATH.'third_party/PHPExcel.php';
        $this->excel = new PHPExcel(); 

        if ($this->session->userdata("logged") == 0) {
            
            redirect('Login','refresh');
            
        }
    }

    public function index()
    {
        $data["prod"] = $this->Inventario_model->listarProductos();
        $this->load->view("header/header");
		$this->load->view('Inventario/subir_excel',$data);
        $this->load->view("footer/footer");
        $this->load->view("jsView/jsInventario");
    }

    public function cargarInventario(){
        $objReader = PHPExcel_IOFactory::createReader("Excel2007");
        $fecha = $this->input->get_post("fecha");
        $this->Inventario_model->guardaDataProductos($objReader->load($_FILES["dataProducto"]["tmp_name"]), $fecha);
        echo $fecha;
         $this->Usuarios_model->InsertLog($this->session->userdata("id"), $this->session->userdata("NameU"),
        "".$this->session->userdata("NameU")." actualizo el inventario de productos");
    }

    public function actualizarProd()
    {
        $codigoedit = $this->input->get_post("codigoedit");
        $editgrm = $this->input->get_post("editgrm");
        $editsaldo = $this->input->get_post("editsaldo");
        $this->Inventario_model->actualizarProd($codigoedit,$editgrm,$editsaldo);
        echo $codigoedit,$editgrm,$editsaldo;
         $this->Usuarios_model->InsertLog($this->session->userdata("id"), $this->session->userdata("NameU"),
        "".$this->session->userdata("NameU")." actualizo el saldo del producto ".$codigoedit." ");
    }

}
?>