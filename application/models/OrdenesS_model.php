<?php
/**
 *  * Created by César Mejía Calderón.
 * User: César Mejía Calderón
 * Date: 3/7/2018
 * Time: 08:31
 */
class OrdenesS_model extends CI_Model
{
	function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	public function getRutas(){
		$consulta = "";
		if ($this->session->userdata("RolUser") == 7 || $this->session->userdata("RolUser") == 8) {
			$query = $this->db->query("SELECT Rutas FROM usuarios WHERE IdUsuario=".$this->session->userdata("id")." ");
			if ($query->num_rows()>0) {
				$consulta = "SELECT DISTINCT CODRUTA AS Rutas FROM AA_TARIFAS_ARTICULOS_CON_RUTAS
            where CODRUTA in (".$query->result_array()[0]["Rutas"].")
            ORDER BY CODRUTA asc";
			}
		}else{
			$consulta = "SELECT DISTINCT CODRUTA AS Rutas FROM AA_TARIFAS_ARTICULOS_CON_RUTAS
                        ORDER BY CODRUTA asc";

		}
		$consulta = $this->sqlsrv->fetchArray($consulta, SQLSRV_FETCH_ASSOC);
		if ($consulta) {
			return $consulta;
		}
		$this->sqlsrv->close();
	}

	public function listarProductos()
	{
		$query = $this->db->get("view_productos");
		if ($query->num_rows()>0) {
			return $query->result_array();
		}
		return 0;
	}

	public function getCliente()
	{
		$this->db->where("RolUsuario",$this->session->userdata("RolUser"));
		$this->db->where("Estado",1);
		$query = $this->db->get("clientes");
		if ($query->num_rows() > 0)
		{
			return $query->result_array();
		}
	}

	public function guardarOrdenS($ordenS)
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
				"Preventa" => 0
			);
			$this->db->insert("ordenes_s",$insertOrden);

		}
	}

	public function getOrdenesS()
	{
		$this->db->where("Usuario",$this->session->userdata("id"));
		$this->db->where("Preventa",0);
		$query = $this->db->get("view_ordenes_S_creadas");
		if ($query->num_rows()>0)
		{
			return $query->result_array();
		}
		return 0;
	}

	public function getDetalleOrdenS($fecha)
	{
		$this->db->where("Usuario",$this->session->userdata("id"));
		$this->db->where("FechaEntrega",$fecha);
		$this->db->where("Preventa",0);
		$query = $this->db->get("view_detalle_ordenS");
		if ($query->num_rows()>0) {
			return $query->result_array();
		}
		return 0;
	}

	public function Detalles($ruta,$fecha)
	{
		$this->db->where("Ruta",$ruta);
		$this->db->where("FechaEntrega",$fecha);
		$query = $this->db->get("view_det_ordens_creada");
		if ($query->num_rows()>0) {
			return $query->result_array();
		}
		return 0;
	}

	public function DetallesModal($fecha,$idcliente)
	{
		$i = 0;
		$json = array();
		$query = $this->db->get_where("ordenes_s",
			array(
				"FechaEntrega" => $fecha,
				"Cliente" => $idcliente
			));
		foreach ($query->result_array() as $item) {
			$json["data"][$i]["Codigo"] = $item["Codigo"];
			$json["data"][$i]["Descripcion"] = $item["Descripcion"];
			$json["data"][$i]["GR/lb"] = $item["GR/lb"];
			$json["data"][$i]["Unidades"] = $item["Unidades"];
			$json["data"][$i]["LBS"] = $item["LBS"];
			$i++;
		}
		echo json_encode($json);
	}

	public function estadoVisto($fecha,$idUser,$estado){
		$this->db->where("FechaEntrega",$fecha);
		$this->db->where("Usuario",$idUser);
		$data = array(
			"Estado" => $estado
		);
		$this->db->update("ordenes_s",$data);
	}

	public function DetallesOrdenSXCliente($cliente,$fecha){
		$i = 0;
		$json = array();
		$this->db->where("Preventa",0);
		$this->db->where("Usuario",$this->session->userdata("id"));
		$this->db->where("Cliente",$cliente);
		$this->db->where("FechaEntrega",$fecha);
		$query = $this->db->get("ordenes_s");
		foreach ($query->result_array() as $key) {
			$json["data"][$i]["IdOrdenS"] = "<input name='idOrdenSEdit' id='idOrdenSEdit".$key["Codigo"]."' type='text' style='display:none' value=".$key["IdOrdenS"].">";
			$json["data"][$i]["Codigo"] = $key["Codigo"];
			$json["data"][$i]["Descripcion"] = $key["Descripcion"];
			$json["data"][$i]["GR/lb"] = "<span id='editgr".$key["Codigo"]."'>".$key["GR/lb"]."</span>";
			$json["data"][$i]["Unidades"] = "<input name='UnidadesEdit' onkeyup='cambiarUnidades()' id='UnidadesEdit".$key["Codigo"]."' style='width:100px;' class='center txteditord' type='text' value=".$key["Unidades"].">";
			$json["data"][$i]["LBS"] = "<input readonly name='lbsEdit' id='lbsEdit".$key["Codigo"]."' style='width:100px;' class='center txteditord' type='text' value=".$key["LBS"].">";
			$json["data"][$i]["delete"] = "<a class='center delete' onclick='Eliminar(".'"'.$key["IdOrdenS"].'"'.")' href='javascript:void(0)' id='delete".$key["IdOrdenS"]."'><i class='material-icons'>delete</i></a>";
			$i++;
		}
		echo json_encode($json);
	}

	public function actualizarOrdenS($ordenes){
		for ($i=0; $i < count($ordenes); $i++) {
			$array = explode(",", $ordenes[$i]);
			$data = array(
				"IdOrdenS" => $array[0],
				"Unidades" => $array[1],
				"LBS" => $array[2]
			);
			$this->db->where("IdOrdenS",$array[0]);
			$this->db->update("ordenes_s",$data);
		}
	}

	public function eliminarUno($id){
		$this->db->where("IdOrdenS",$id);
		$this->db->delete("ordenes_s");
	}

	public function remisionOrdenS($cliente,$ruta,$fecha){
		$this->db->where("Preventa",0);
		$this->db->where("Cliente",$cliente);
		$this->db->where("Ruta",$ruta);
		$this->db->where("FechaEntrega",$fecha);
		$query = $this->db->get("view_rem_OrdS_Cli");
		if ($query->num_rows()>0) {
			return $query->result_array();
		}
		return 0;
	}

	public function remisionOrdenSRutas($ruta,$fecha){
		$this->db->where("Preventa",0);
		$this->db->where("Usuario",$this->session->userdata("id"));
		$this->db->where("Ruta",$ruta);
		$this->db->where("FechaEntrega",$fecha);
		$query = $this->db->get("ordenes_s");
		if ($query->num_rows()>0) {
			return $query->result_array();
		}
		return 0;
	}

	public function ultimoConsRemisionS($ruta,$fecha){
		$consecutivo = $this->db->get_where("consecremision",
			array("Ruta"=> $ruta,
				"FechaEntrega" => $fecha,
				"Usuario" => $this->session->userdata("id")
			));
		if ($consecutivo->num_rows() > 0){
			return $consecutivo->result_array();
		}
		return 0;
	}

	public function incrementarLlaveS($ruta,$fecha){
		$this->db->select("Valor");
		$this->db->limit(1);
		$this->db->order_by("Valor","desc");
		$llave = $this->db->get("consecremision");
		if ($llave->num_rows()>0) {
			$temp = $llave->result_array()[0]["Valor"];
			$temp = $temp + 1;
			$data = array(
				"Valor" => $temp,
				"Concepto" => "Remision",
				"Ruta" => $ruta,
				"FechaEntrega" => $fecha,
				"Usuario" => $this->session->userdata("id")
			);
			$this->db->insert("consecremision",$data);
		}
	}
}
?>
