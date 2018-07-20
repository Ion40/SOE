<?php 
class Inicio_controller extends CI_Controller
{
	function __construct(){
		parent::__construct();
		$this->load->library("session");
		$this->load->model("Inicio_model");
		if ($this->session->userdata("logged") != 1)
		{
			redirect("Login", "refresh");
		}
	}

	public function index(){
		$this->load->view("header/header");
		$this->load->view('Inicio');
        $this->load->view("footer/footer");
        $this->load->view("jsView/jsInicio");
	}

	public function masVendidos(){
       $json = array();
       $i = 0;
       $masVend = $this->Inicio_model->masVendidos();
        if ($masVend) {
	        	$json["vendidos"] = array(
	        		"Top 10" => "Ventas",
	        		$masVend[0]["Descripcion"] => (int)$masVend[0]["Codigo"], 
	        		$masVend[1]["Descripcion"] => (int)$masVend[1]["Codigo"], 
	        		$masVend[2]["Descripcion"] => (int)$masVend[2]["Codigo"],
	        		$masVend[3]["Descripcion"] => (int)$masVend[3]["Codigo"],
	        		$masVend[4]["Descripcion"] => (int)$masVend[4]["Codigo"],
	        		$masVend[5]["Descripcion"] => (int)$masVend[5]["Codigo"],
	        		$masVend[6]["Descripcion"] => (int)$masVend[6]["Codigo"],
	        		$masVend[7]["Descripcion"] => (int)$masVend[7]["Codigo"],
	        		$masVend[8]["Descripcion"] => (int)$masVend[8]["Codigo"],
	        		$masVend[9]["Descripcion"] => (int)$masVend[9]["Codigo"]
	        	 );

        	$json['opciones'] = array(
			    'title' => 'Top 10 más vendidos',
			    'is3D' => false,
			    "label" => "right"
			  );
        	echo json_encode($json);
        } else {
            echo "false";
        }
        
    }
}
?>
