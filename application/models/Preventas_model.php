<?php
class Preventas_model extends CI_Model{
    function __construct(){
        parent::__construct();
        $this->load->database();
    }

    public function ultimoConsPreventa($ruta, $fecha){
        $consecutivo = $this->db->get_where("consecPreventa",
		   array(
		   	"Ruta" => $ruta,
			  "FechaEntrega" => $fecha
		   ));
        if ($consecutivo->num_rows()>0) {
            return $consecutivo->result_array();
        } 
            return false;
    }

    public function incrementarLlave($ruta,$fecha){
        $this->db->select("Valor");
        $this->db->limit(1);
        $this->db->order_by("Valor","desc");
        $llave = $this->db->get("consecPreventa");
        if ($llave->num_rows()>0) {
            $temp = $llave->result_array()[0]["Valor"];
            $temp = $temp + 1;
            $data = array(
                "Valor" => $temp,
                "Concepto" => "Preventa",
                "Ruta" => $ruta,
                "FechaEntrega" => $fecha
            );
            $this->db->insert("consecPreventa",$data);
        }
    }

    public function guardarPreventa($preventa){
        date_default_timezone_set("America/Managua");
        for ($i=0; $i < count($preventa); $i++) { 
            $array = explode(",",$preventa[$i]);
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
                "Estado" => 0,
                "FechaCreacion" => date("Y-m-d h:i:s"),
                "Preventa" => 1
            );
               $this->db->insert("ordenes",$insertOrden);
           
        }
    }

    public function actualizarOrdenPrev($ordenes){
        for ($i=0; $i < count($ordenes); $i++) { 
            $array = explode(",", $ordenes[$i]);
            $data = array(
                "IdOrden" => $array[0],
                "Unidades" => $array[1],
                "LBS" => $array[2]
             );
             $this->db->where("IdOrden",$array[0]);
             $this->db->update("ordenes",$data);
        }
    }


    public function listarProductos()
    {
        $query = $this->db->get("view_productos");
        if ($query->num_rows()>0) {
            return $query->result_array();
        }
        return 0;
    }

    public function getRutas(){
        $consulta = ""; 
         
        if ($this->session->userdata("RolUser") == 4) {
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

    public function getPreventas(){
        $this->db->where("IdUsuario",$this->session->userdata("id"));
        $query = $this->db->get("view_preventas_creadas");
        if ($query->num_rows()>0) {
            return $query->result_array();
        }
        return 0;
    }

     public function getPreventas2(){
        $this->db->order_by("FechaEntrega", "desc");
        $query = $this->db->get("view_preventas_creadas");
        if ($query->num_rows()>0) {
            return $query->result_array();
        }
        return 0;
    }

    public function getPreventaDetalle($fecha){
         $this->db->where("Usuario",$this->session->userdata("id"));
        $this->db->where("FechaEntrega",$fecha);
        $query = $this->db->get("view_detalle_preventa");
        if ($query->num_rows()>0) {
            return $query->result_array();
        }
        return 0;
    }

     public function getPreventaDetalle2($fecha,$nombre){
        $this->db->where("FechaEntrega",$fecha);
        $this->db->where("Usuario",$nombre);
        $query = $this->db->get("view_detalle_preventa");
        if ($query->num_rows()>0) {
            return $query->result_array();
        }
        return 0;
    }

    public function detallePreventaPorRuta($ruta,$fecha){
        $this->db->where("Usuario",$this->session->userdata("id"));
        $this->db->where("Preventa",1);
        $this->db->where("Ruta",$ruta);
        $this->db->where("FechaEntrega",$fecha);
        $query = $this->db->get("ordenes");
        if ($query->num_rows()>0) {
            return $query->result_array();
        }
        return 0;
    }

    public function detallePreventaPorRutaGen($ruta,$fecha,$idUser){
        $this->db->where("Usuario",$idUser);
        $this->db->where("Preventa",1);
        $this->db->where("Ruta",$ruta);
        $this->db->where("FechaEntrega",$fecha);
        $query = $this->db->get("ordenes");
        if ($query->num_rows()>0) {
            return $query->result_array();
        }
        return 0;
    }

    public function remisionPreventa($ruta,$fecha,$idUser){
        $this->db->where("Usuario",$idUser);
        $this->db->where("Preventa",1);
        $this->db->where("Ruta",$ruta);
        $this->db->where("FechaEntrega",$fecha);
        $query = $this->db->get("ordenes");
        if ($query->num_rows()>0) {
            return $query->result_array();
        }
        return 0;
    }
/***************************************************************/
    public function modalDetallePreventa($ruta,$fecha,$idUser){
        $i = 0;
        $json = array(); 
        $this->db->where("Preventa",1);
        $this->db->where("Usuario",$idUser);
        $this->db->where("Ruta",$ruta);
        $this->db->where("FechaEntrega",$fecha);
        $query = $this->db->get("ordenes");
        foreach ($query->result_array() as $key) {
             $json["data"][$i]["IdOrden"] = "<input name='idOrdenEdit' id='idOrdenEdit".$key["Codigo"]."' type='text' style='display:none' value=".$key["IdOrden"].">";
            $json["data"][$i]["Codigo"] = $key["Codigo"];
            $json["data"][$i]["Descripcion"] = $key["Descripcion"];
            $json["data"][$i]["GR/lb"] = "<span id='editgr".$key["Codigo"]."'>".$key["GR/lb"]."</span>";
            $json["data"][$i]["Unidades"] = "<input name='UnidadesEdit' onkeyup='cambiarUnidades()' id='UnidadesEdit".$key["Codigo"]."' style='width:100px;' class='center txteditord' type='text' value=".$key["Unidades"].">";
            $json["data"][$i]["LBS"] = "<input readonly name='lbsEdit' id='lbsEdit".$key["Codigo"]."' style='width:100px;' class='center txteditord' type='text' value=".$key["LBS"].">";
            $json["data"][$i]["delete"] = "<a class='center delete' onclick='Eliminar(".'"'.$key["IdOrden"].'"'.")' href='javascript:void(0)' id='delete".$key["IdOrden"]."'><i class='material-icons'>delete</i></a>";
            $i++;
        }
        echo json_encode($json);
    }

    public function estadoVisto($fecha,$idUser,$estado){
        $this->db->where("FechaEntrega",$fecha);
        $this->db->where("Usuario",$idUser);
        $this->db->where("Preventa",1);
        $data = array(
            "Estado" => $estado
        );
        $this->db->update("ordenes",$data);
    } 

    /***************************************************************/
}
?>
