<?php 
/**
 * 
 */
class ListaConsolidado_model extends CI_Model
{
	
	function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	public function mostrarInv() {
		$query = $this->db->get("productos");
		if ($query->num_rows() > 0) {
			return $query->result_array();
		}
		return 0;
	}

	public function guardarConsolidadoM($datos) {
		for ($i=0; $i < count($datos); $i++) { 
			$array = explode(",",$datos[$i]);
			$insertarCons = array(
				"Codigo" => $array[0],
				"Descripcion" => $array[1],
				"GRM" => $array[2],
				"Fecha" => $array[3],
				"Camp1" => $array[4],
				"Camp2" => $array[5],
				"Camp3" => $array[6],
				"Camp4" => $array[7],
				"Camp5" => $array[8],
				"Camp6" => $array[9],
				"Camp7" => $array[10],
				"Camp8" => $array[11],
				"Camp9" => $array[12],
				"Camp10" => $array[13]

			);
			$this->db->insert("consolidadoM",$insertarCons);
		}
	}

	public function showConsolidadosM() {
		$query = $this->db->get("view_consolidadoM");
		if ($query->num_rows() > 0) {
			return $query->result_array();
		} 
		return 0;
	}

	public function detalleCons($fecha) {
		$this->db->where("Fecha",$fecha);
		$query = $this->db->get("consolidadoM");
		$i = 0;
		$json = array();
		foreach ($query->result_array() as $key) {
			$json["data"][$i]["Codigo"] = $key["Codigo"];
			$json["data"][$i]["Descripcion"] = $key["Descripcion"];
			$json["data"][$i]["GRM"] = $key["GRM"];
			$json["data"][$i]["Camp1"] = $key["Camp1"];
			$json["data"][$i]["Camp2"] = $key["Camp2"];
			$json["data"][$i]["Camp3"] = $key["Camp3"];
			$json["data"][$i]["Camp4"] = $key["Camp4"];
			$json["data"][$i]["Camp5"] = $key["Camp5"];
			$json["data"][$i]["Camp6"] = $key["Camp6"];
			$json["data"][$i]["Camp7"] = $key["Camp7"];
			$json["data"][$i]["Camp8"] = $key["Camp8"];
			$json["data"][$i]["Camp9"] = $key["Camp9"];
			$json["data"][$i]["Camp10"] = $key["Camp10"];
			$json["data"][$i]["Camp"] =  "";
			$i++;
		}
		echo json_encode($json);
	}

	public function Eliminar($fecha) {
		$this->db->where("Fecha",$fecha);
		$this->db->delete("consolidadoM");
	}
}

 ?>
