<?php 
class Inventario_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
        $this->load->database();
        require_once APPPATH.'third_party/PHPExcel.php';
        $this->excel = new PHPExcel();  
    }

   public function guardaDataProductos($objExcel,$fecha){
        $i = 1; $param=0;
        $this->db->truncate("productos");

        while($param == 0)
        {
            $this->db->insert("productos", array(
                "Codigo" => $objExcel->getActiveSheet()->getCell("A".$i)->getCalculatedValue(),
                "Descripcion" => $objExcel->getActiveSheet()->getCell("B".$i)->getCalculatedValue(),
                "GRM" => $objExcel->getActiveSheet()->getCell("C".$i)->getCalculatedValue(),
				"Saldo" => $objExcel->getActiveSheet()->getCell("D".$i)->getCalculatedValue(),
				"Libras" => $objExcel->getActiveSheet()->getCell("E".$i)->getCalculatedValue(),
                "FechaCarga" => $fecha
            ));
            $i++;
            if($objExcel->getActiveSheet()->getCell("A".$i)->getCalculatedValue() == NULL){
                $param = 1;
            }
        }
        redirect('Inventario','refresh');
   }

   public function listarProductos()
   {
       $query = $this->db->get("view_productos");
       if ($query->num_rows()>0) {
           return $query->result_array();
       }
       return 0;
   }

   public function actualizarProd($id,$saldo,$lbs)
   {
       $this->db->where("Codigo",$id);
       $data = array(
           "Codigo" => $id,
		   "Saldo" => $saldo,
		   "Libras" => $lbs
       );
       $this->db->update("productos",$data);
   }

   public function mostrarFechas()
   {
   	  $query = $this->db->query("call usp_MostrarFechas");
   	  if ($query->num_rows()> 0)
	  {
	  	return $query->result_array();
	  }
	  return 0;
   }

	public function guardaDataDevoluciones($objExcel,$fecha){
    	date_default_timezone_set("America/Managua");
    	$save = "";
		$i = 1; $param=0;
			while($param == 0)
			{
					$save = $this->db->insert("devoluciones", array(
						"Codigo" => $objExcel->getActiveSheet()->getCell("A".$i)->getCalculatedValue(),
						"Descripcion" => $objExcel->getActiveSheet()->getCell("B".$i)->getCalculatedValue(),
						"GR" => $objExcel->getActiveSheet()->getCell("C".$i)->getCalculatedValue(),
						"CantDev" => $objExcel->getActiveSheet()->getCell("D".$i)->getCalculatedValue(),
						"Libras" => $objExcel->getActiveSheet()->getCell("E".$i)->getCalculatedValue(),
						"FechaEntrega" => $fecha,
						"FechaCreacion" => date("Y-m-d"),
						"Estado" => 1
					));
					$i++;
				if($objExcel->getActiveSheet()->getCell("A".$i)->getCalculatedValue() == NULL){
					$param = 1;
				}
			}
		if ($save)
		{
			$this->algoritmo($fecha);
		}
				redirect('Devoluciones','refresh');
    }

	public function evitarDuplicados($fecha)
	{
		$query = $this->db->get_where("devoluciones",array("FechaEntrega" => $fecha));
		if ($query->num_rows() > 0)
		{
			echo "existe";
		}else{
			echo "noexiste";
		}
	}

	public function getDevoluciones()
	{
		$query = $this->db->get("view_devoluciones");
		if ($query->num_rows() > 0)
		{
			return $query->result_array();
		}
		return 0;
	}

	public function getDevolucionesDetalles($fecha)
	{
		$this->db->where("FechaEntrega",$fecha);
		$query = $this->db->get("devoluciones");
		$i = 0;
		$json = array();
		foreach ($query->result_array() as $item) {
			$json["data"][$i]["Codigo"] = $item["Codigo"];
			$json["data"][$i]["Descripcion"] = $item["Descripcion"];
			$json["data"][$i]["GR"] = $item["GR"];
			$json["data"][$i]["CantDev"] = number_format($item["CantDev"],2);
			$json["data"][$i]["Libras"] = number_format($item["Libras"],2);
			$i++;
		}
		echo json_encode($json);
	}

	public function algoritmo ($fecha)
	{
		$i = 0;
		$array = array();
		$del = 0;
		$this->db->where("FechaEntrega",$fecha);
		$this->db->where("Libras",0);
		$query = $this->db->delete("devoluciones");
		if ($query)
		{
			$del = 1;
		}
		if ($del == 1)
		{
			$query1 = $this->db->get_where("devoluciones",array("FechaEntrega" => $fecha));
			foreach ($query1->result_array() as $item) {
				$query2 = $this->db->query("select Saldo from productos where Codigo = ".$item["Codigo"]." ");
				foreach ($query2->result_array() as $key) {
					$array[$i]["Codigo"] = $item["Codigo"];
					$array[$i]["CantDev"] = $item["CantDev"];
					$array[$i]["Libras"] = $item["Libras"];
					$i++;
					$this->db->where("Codigo",$item["Codigo"]);
					$data = array(
						"Codigo" => $item["Codigo"],
						"Saldo" =>  $key["Saldo"] + $item["CantDev"],
						"Libras" =>  $key["Libras"] + $item["Libras"]
					);
					$this->db->update("productos",$data);
				}
			}
		}
	}

	public function eliminarDev($fecha)
	{
		$i = 0;
		$array = array();
		$del = 0;
		$query = $this->db->get_where("devoluciones",array("FechaEntrega" => $fecha));
		foreach ($query->result_array() as $key) {
			$query2 = $this->db->query("select Saldo from productos where Codigo = ".$key["Codigo"]." ");
			foreach ($query2->result_array() as $item) {
				$array[$i]["Codigo"] = $key["Codigo"];
				$array[$i]["Total"] = $key["Total"];
				$i++;
				$this->db->where("Codigo",$key["Codigo"]);
				$data = array(
					"Codigo" => $key["Codigo"],
					"Saldo" =>  $item["Saldo"] - $key["Total"]
				);
				$update = $this->db->update("productos",$data);
				if ($update)
				{
					$del = 1;
				}
			}
		}
		if ($del === 1)
		{
			$this->db->where("FechaEntrega",$fecha);
			$this->db->delete("devoluciones");
		}
	}
}
?>
