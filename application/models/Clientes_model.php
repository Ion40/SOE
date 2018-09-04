<?php
/**
 * Created by Cesar Mejia.
 * User: Sistemas
 * Date: 29/6/2018
 * Time: 11:48
 */
class Clientes_model extends CI_Model
{
	function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	public function getRutasxUsuario(){
		    $consulta = "";
			$query = $this->db->query("SELECT Rutas FROM usuarios WHERE IdUsuario=".$this->session->userdata("id")." ");
			if ($query->num_rows()>0) {
				$consulta = "SELECT DISTINCT CODRUTA AS Rutas FROM AA_TARIFAS_ARTICULOS_CON_RUTAS
            where CODRUTA in (".$query->result_array()[0]["Rutas"].")
            ORDER BY CODRUTA asc";
			}
		$consulta = $this->sqlsrv->fetchArray($consulta, SQLSRV_FETCH_ASSOC);
		if ($consulta) {
			return $consulta;
		}
		$this->sqlsrv->close();
	}

	public function getClientes(){
		$i = 0;
		$json = array();
		$query = $this->db->get_where(
			"clientes",
			array(
				"RolUsuario" => $this->session->userdata("RolUser")
			    ));
		foreach ($query->result_array() as $item) {
			$estado="";
			$baja="";
			$item["Estado"] = ($item["Estado"] == 1) ? $estado = "Activo": $estado = "Inactivo";
			if ($estado == "Activo")
			{
				$baja= "<a class='center' href='javascript:void(0)' 
				            onclick='Baja(".'"'.$item["IdCliente"].'","'.$estado.'"'.")'>
							<i class='material-icons'>delete</i>
						</a>";
			}else{
				$baja = "<a class='center' href='javascript:void(0)' 
				            onclick='Baja(".'"'.$item["IdCliente"].'","'.$estado.'"'.")'>
							<i class='material-icons'>restore_from_trash</i>
						</a>";
			}
			$json["data"][$i]["Nombre"] = $item["Nombre"];
			$json["data"][$i]["Ruta"] = $item["Ruta"];
			$json["data"][$i]["FechaCreacion"] = $item["FechaCreacion"];
			$json["data"][$i]["Estado"] = $estado;
			$json["data"][$i]["Camp1"] = "$baja
										  <a class='right-align' href='javascript:void(0)' 
										       onclick='editar(".'"'.$item["IdCliente"].'","'.$item["Nombre"].'","'.$item["Ruta"].'"'.")'>
												<i class='material-icons'>edit</i>
										  </a>";
			$i++;
		}
		echo json_encode($json);
	}

	public function guardarCliente($nombre,$ruta){
		date_default_timezone_set("America/Managua");
		$data = array(
			"RolUsuario" => $this->session->userdata("RolUser"),
			"Nombre" => $nombre,
			"Ruta" => $ruta,
			"Estado" => 1,
			"FechaCreacion" => date("Y-m-d")
		);
		$this->db->insert("clientes",$data);
	}

	public function actualizarCliente($id,$nombre,$ruta)
	{
		$this->db->where("IdCliente",$id);
		$data = array (
			"Nombre" => $nombre,
			"Ruta" => $ruta
		);
		$this->db->update("clientes",$data);
	}

	public function bajaCliente($id,$estado) {
		$this->db->where("IdCliente",$id);
		$data = array(
			"Estado" => $estado
		);
		$this->db->update("clientes",$data);
		echo $this->db->last_query();
	}

}
?>
