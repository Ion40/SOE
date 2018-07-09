<?php
class Monitoreo_model extends CI_Model
{
	function __construct(){
		parent::__construct();
		$this->load->database();
	}

	public function getLogs(){
		$i = 0;
		$json = array();
		$this->db->order_by("Fecha","desc");
		$query = $this->db->get("logs");
		foreach ($query->result_array() as $item) {
			$json["data"][$i]["IdUsuario"] = $item["IdUsuario"];
			$json["data"][$i]["Usuario"] = $item["Usuario"];
			$json["data"][$i]["Mensaje"] = $item["Mensaje"];
			$json["data"][$i]["Fecha"] = $item["Fecha"];
			$i++;
		}
		echo json_encode($json);
		/*$this->db->order_by("Fecha","desc");
		$query = $this->db->get("logs");
		if ($query->num_rows()>0) {
			return $query->result_array();
		}
		return 0;*/
	}
}
?>