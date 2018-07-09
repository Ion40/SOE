<?php
/**
 *  * Created by César Mejía Calderón.
 * User: César Mejía Calderón
 * Date: 9/7/2018
 * Time: 10:09
 */
class PreventasS_model extends CI_Model
{
	function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	public function guardarPreventaS($ordenS)
	{
		date_default_timezone_set("America/Managua");
		for ($i=0; $i < count($ordenS); $i++) {
			$array = explode(",",$ordenS[$i]);
			$insertOrden = array(
				"Codigo" => $array[0],
				"Descripcion" => $array[1],
				"GR/lb" => $array[2],
				"Unidades" => $array[3],
				"LBS" => $array[4],
				"Vendedor" => $array[5],
				"FechaEntrega" => $array[6],
				"Ruta" => $array[7],
				"Usuario" => $this->session->userdata("id"),
				"Cliente" => $array[8],
				"Estado" => 0,
				"FechaCreacion" => date("Y-m-d h:i:s"),
				"Preventa" => 1
			);
			$this->db->insert("ordenes_s",$insertOrden);

		}
	}
}
?>
