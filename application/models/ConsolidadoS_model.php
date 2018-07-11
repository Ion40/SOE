<?php
/**
 *  * Created by César Mejía Calderón.
 * User: César Mejía Calderón
 * Date: 10/7/2018
 * Time: 09:28
 */
class ConsolidadoS_model extends CI_Model
{
	function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	public function getFechaEntrega()
	{
		$query = $this->db->query("select distinct FechaEntrega from ordenes_s
           where Usuario = ".$this->session->userdata('id')." order by FechaEntrega desc");
		if ($query->num_rows()>0) {
			return $query->result_array();
		}
		return 0;
	}

	public function nuevoConsolidadoOrderS($fecha){
		$i = 0;
		$json = array();
		$this->db->where("Usuario",$this->session->userdata("id"));
		$query = $this->db->query("CALL ConsolidadoOrdenS('".$fecha."')");
		foreach ($query->result_array() as $key ) {
			$id_row = "chkos" . $key["Codigo"];
			$id_lbl = "lblos" . $key["Codigo"];
			$restante = "restos" . $key["Codigo"];

			$estado = "";
			switch ($key["Estado"]){
				case 0:
					$estado = "Disponible";
					break;
				case 1:
					$estado = "Parcial";
					break;
				case 2:
					$estado = "Crítico";
					break;
			}

			$json["data"][$i]["Codigo"] = $key["Codigo"];
			$json["data"][$i]["Descripcion"] = $key["Descripcion"];
			$json["data"][$i]["GRM"] = $key["GRM"];
			$json["data"][$i]["Saldo"] = $key["Saldo"];
			$json["data"][$i]["cam2"] = "<span id='".$restante."'>0</span>";
			$json["data"][$i]["Unidades_Pedidas"] = $key["Unidades_Pedidas"];
			$json["data"][$i]["LBS"] = number_format($key["LBS"],2);
			$json["data"][$i]["Estado"] =
				"<select name='estadoOS' id='estadoOS".$key["Codigo"]."'>
					<option value=".$key["Estado"]." selected>".$estado."</option>	
					<option value='0'>Disponible</option>
					<option value='1'>Parcial</option>
					<option value='2'>Crítico</option>
                 </select>";
			$json["data"][$i]["FechaEntrega"] = $key["FechaEntrega"];
			$json["data"][$i]["Cam1"] = '   <p>
											      <label>
											        <input onclick="verificarOS('.$i.','."'".$key["Codigo"]."'".')" 
											        type="checkbox" id="'.$id_row.'" class="filled-in AlloS"/>
											        <span></span>
											      </label>
											    </p>';
			$i++;
		}
		echo json_encode($json);
		return $json;
	}

	public function actualizarSaldoEstado($cod,$saldo,$estado)
	{
		$this->db->where("Codigo",$cod);
		$data = array(
			"Saldo" => $saldo,
			"Estado" => $estado
		);
		$this->db->update("productos",$data);
	}

	public function buscarRepetidos($codigo, $fechaEntrega, $tipo){
		$query = $this->db->get_where("consolidado_s",array("Codigo" => $codigo, "FechaEntrega" => $fechaEntrega, "Tipo" => $tipo));
		if ($query->num_rows() > 0) {
			echo "existe";
		}else{
			echo "noexiste";
		}
	}

	public function ultimoConsecConsol($fecha,$tipo){
		$this->db->where("Usuario",$this->session->userdata('id'));
		$consecutivo = $this->db->get_where("consec_consolidado",
			array(
				"Tipo" => $tipo,
				"FechaEntrega" => $fecha
			));
		if ($consecutivo->num_rows()>0) {
			return $consecutivo->result_array();
		}
		return false;
	}

	public function guardarConsolidadoOS($cons)
	{
		date_default_timezone_set("America/Managua");
		for ($i=0;$i<count($cons);$i++){
			$array = explode(",",$cons[$i]);
			$data = array(
				"Codigo" => $array[0],
				"Descripcion" => $array[1],
				"GRM" => $array[2],
				"Unidades" => $array[3],
				"LBS" => $array[4],
				"FechaEntrega" => $array[5],
				"FechaCreacion" => date("Y-m-d h:i:s"),
				"Saldo" => $array[6],
				"SaldoRestante" => $array[7],
				"Estado" => $array[8],
				"Tipo" => "O",
				"Usuario" => $this->session->userdata("id")
			);
			/*$result = $this->validarCons($array[5],"U");
			if ($result=== true){
				$this->db->insert("consolidado",$data);
			}else{*/
			$this->actualizarSaldoEstado($array[0],$array[7],$array[8]);
			$this->db->insert("consolidado_s",$data);
			//}
		}
	}
	/******************************************************************************/
	public function nuevoConsolidadoPS($fecha,$id){
		$i = 0;
		$json = array();
		$query = $this->db->query("CALL ConsolidadoPreventaS('".$fecha."',".$id.")");
		foreach ($query->result_array() as $key ) {
			$id_row = "chkp" . $key["Codigo"];
			$id_lbl = "lblp" . $key["Codigo"];
			$restante = "restp" . $key["Codigo"];

			$estado = "";
			switch ($key["Estado"]){
				case 0:
					$estado = "Disponible";
					break;
				case 1:
					$estado = "Parcial";
					break;
				case 2:
					$estado = "Crítico";
					break;
			}


			$json["data"][$i]["Codigo"] = $key["Codigo"];
			$json["data"][$i]["Descripcion"] = $key["Descripcion"];
			$json["data"][$i]["GRM"] = $key["GRM"];
			$json["data"][$i]["Saldo"] = $key["Saldo"];
			$json["data"][$i]["cam2"] = "<span id='".$restante."'>0</span>";
			$json["data"][$i]["Unidades_Pedidas"] = $key["Unidades_Pedidas"];
			$json["data"][$i]["LBS"] = number_format($key["LBS"],2);
			$json["data"][$i]["Estado"] =
				"<select name='estadoP' id='estadoP".$key["Codigo"]."'>
					<option value=".$key["Estado"]." selected>".$estado."</option>	
					<option value='0'>Disponible</option>
					<option value='1'>Parcial</option>
					<option value='2'>Crítico</option>
                 </select>";
			$json["data"][$i]["FechaEntrega"] = $key["FechaEntrega"];
			$json["data"][$i]["Cam1"] = '   <p>
											      <label>
											        <input onclick="verificarP('.$i.','."'".$key["Codigo"]."'".')" 
											        type="checkbox" id="'.$id_row.'" class="filled-in Allp"/>
											        <span></span>
											      </label>
											    </p>';
			$i++;
		}
		echo json_encode($json);
		return $json;
	}

	public function guardarConsolidadoPS($cons) {
		date_default_timezone_set("America/Managua");
		for ($i=0;$i<count($cons);$i++){
			$array = explode(",",$cons[$i]);
			$data = array(
				"Codigo" => $array[0],
				"Descripcion" => $array[1],
				"GRM" => $array[2],
				"Unidades" => $array[3],
				"LBS" => $array[4],
				"FechaEntrega" => $array[5],
				"FechaCreacion" => date("Y-m-d h:i:s"),
				"Saldo" => $array[6],
				"SaldoRestante" => $array[7],
				"Estado" => $array[8],
				"Tipo" => "P",
				"Usuario" => $this->session->userdata("id")
			);
			/*$result = $this->validarCons($array[5],"U");
			if ($result=== true){
				$this->db->insert("consolidado",$data);
			}else{*/
			$this->actualizarSaldoEstado($array[0],$array[7],$array[8]);
			$this->db->insert("consolidado_s",$data);
			//}
		}
	}

	/*********************************************************************/
	public function nuevoConsolidadoUnif($fecha){
		$i = 0;
		$json = array();
		$query = $this->db->query("CALL ConsolidadoS('".$fecha."')");
		foreach ($query->result_array() as $key ) {
			$id_row = "chk" . $key["Codigo"];
			$id_lbl = "lbl" . $key["Codigo"];
			$restante = "rest" . $key["Codigo"];

			$estado = "";
			switch ($key["Estado"]){
				case 0:
					$estado = "Disponible";
					break;
				case 1:
					$estado = "Parcial";
					break;
				case 2:
					$estado = "Crítico";
					break;
			}

			$json["data"][$i]["Codigo"] = $key["Codigo"];
			$json["data"][$i]["Descripcion"] = $key["Descripcion"];
			$json["data"][$i]["GRM"] = $key["GRM"];
			$json["data"][$i]["Saldo"] = $key["Saldo"];
			$json["data"][$i]["cam2"] = "<span id='".$restante."'>0</span>";
			$json["data"][$i]["Unidades_Pedidas"] = $key["Unidades_Pedidas"];
			$json["data"][$i]["LBS"] = number_format($key["LBS"],2);
			$json["data"][$i]["Estado"] =
				"<select name='estado' id='estado".$key["Codigo"]."'>
					<option value=".$key["Estado"]." selected>".$estado."</option>	
					<option value='0'>Disponible</option>
					<option value='1'>Parcial</option>
					<option value='2'>Crítico</option>
                 </select>";
			$json["data"][$i]["FechaEntrega"] = $key["FechaEntrega"];
			$json["data"][$i]["Cam1"] = '   <p>
											      <label>
											        <input onclick="verificar('.$i.','."'".$key["Codigo"]."'".')" type="checkbox" id="'.$id_row.'" class="filled-in All"/>
											        <span></span>
											      </label>
											    </p>';
			$i++;
		}
		echo json_encode($json);
		return $json;
	}

	public function guardarConsolidadoS($cons){
		date_default_timezone_set("America/Managua");
		for ($i=0; $i < count($cons); $i++) {
			$array = explode(",",$cons[$i]);
			$insertConsolidado = array(
				"Codigo" => $array[0],
				"Descripcion" => $array[1],
				"GRM" => $array[2],
				"Unidades" => $array[3],
				"LBS" => $array[4],
				"FechaEntrega" => $array[5],
				"FechaCreacion" => date("Y-m-d h:i:s"),
				"Saldo" => $array[6],
				"SaldoRestante" => $array[7],
				"Estado" => $array[8],
				"Tipo" => "U",
				"Usuario" => $this->session->userdata("id")
			);
			$this->db->insert("consolidado_s",$insertConsolidado);
			/*$query = $this->db->get_where("consolidado",array("Codigo" => $array[0], "FechaEntrega" => $array[5]));
            if ($query->num_rows() > 0) {
            } else {*/

			//}
		}
	}

	/************************************************************************************************/
	public function getConsolidado_S(){
		$this->db->where("Usuario",$this->session->userdata("id"));
		$query = $this->db->get("view_consolidado_s");
		if ($query->num_rows() > 0) {
			return $query->result_array();
		}
		return 0;
	}

	public function detallesConsolidadoS($fecha) {
		$this->db->where("FechaEntrega",$fecha);
		$query = $this->db->get("view_detalle_consolidado_s");
		if ($query->num_rows() > 0){
			return $query->result_array();
		}
		return 0;
	}

	public function remisionConsolidadoS($fechaEntrega, $tipo, $usuario){
		$query = $this->db->get_where("consolidado_s",array("FechaEntrega" => $fechaEntrega, "Tipo" => $tipo, "Usuario" => $usuario));
		if ($query->num_rows()>0) {
			return $query->result_array();
		}
		return 0;
	}

	public function eliminarCons($fechaEntrega,$tipo, $usuario){
		if ($tipo != "U") {
			$query = $this->db->get_where("consolidado_s",
				array("FechaEntrega" => $fechaEntrega,
					"Tipo" => $tipo,
					"Usuario" => $usuario
				));
			$i = 0;
			$array = array();
			$update = 0;
			$calculo = 0;
			foreach ($query->result_array() as $key) {
				$calculo = $key["Saldo"] - $key["SaldoRestante"];
				$query2 = $this->db->query("select Saldo from productos where Codigo = ".$key["Codigo"]." ");
				foreach ($query2->result_array() as $item) {
					$array[$i]["Codigo"] = $key["Codigo"];
					$array[$i]["Saldo"] = $key["Saldo"];
					$array[$i]["SaldoRestante"] = $key["SaldoRestante"];
					$array[$i]["Tipo"] = $key["Tipo"];
					$i++;
					$this->db->where("Codigo",$key["Codigo"]);
					$data = array(
						"Codigo" => $key["Codigo"],
						"Saldo" =>  $item["Saldo"] + $calculo,
						"Estado" => null
					);
					$this->db->update("productos",$data);
				}
			}
			$update = 1;
		}else{
			$this->db->where("FechaEntrega",$fechaEntrega);
			$this->db->where("Tipo",$tipo);
			$this->db->where("Usuario",$usuario);
			$this->db->delete("consolidado_s");
		}
		if ($update == 1) {
			$this->db->where("FechaEntrega",$fechaEntrega);
			$this->db->where("Tipo",$tipo);
			$this->db->where("Usuario",$usuario);
			$this->db->delete("consolidado_s");
		}
	}

}
