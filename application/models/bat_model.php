<?php
class bat_model extends CI_Model
{
	function __construct(){
		parent::__construct();
		$this->load->database();
	}

	public function execBat(){
		$i =0 ;
		$Array;
		$sql = $this->db->truncate("productos_copy");
		echo "<br>";
		echo "Fase1: -Truncar tabla productos_copy";
		echo "<br><br>";
		echo $this->db->last_query();
		if ($sql) {
			echo "<br><br>";
			echo "Fase1: Completo <br>";
			echo "<br>";
		}


		echo "Fase2: - Recorrer datos de tabla productos";
		echo "<br><br>";
		$query = $this->db->get("productos");
		foreach ($query->result_array() as $key) {
			$Array[$i]["Codigo"] = $key["Codigo"];
			$Array[$i]["Descripcion"] = $key["Descripcion"];
			$Array[$i]["GRM"] = $key["GRM"];
			$Array[$i]["Saldo"] = $key["Saldo"];
			$Array[$i]["FechaCarga"] = $key["FechaCarga"];
			$Array[$i]["Estado"] = $key["Estado"];
			$i++;

			$data = array(
				"Codigo" => $key["Codigo"],
				"Descripcion" => $key["Descripcion"],
				"GRM" => $key["GRM"],
				"Saldo" => $key["Saldo"],
				"FechaCarga" => $key["FechaCarga"],
				"Estado" => $key["Estado"]
			);

			echo "Fase3: - Insertar datos en tabla productos_copy";
			echo "<br><br>";
			$cons = $this->db->insert("productos_copy",$data);
			if ($cons) {
				echo "Fase3: - Completo";
				echo "<br><br>";
			}
		}
	}
}
?>