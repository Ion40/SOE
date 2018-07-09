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

   public function actualizarProd($id,$grm,$saldo)
   {
       $this->db->where("Codigo",$id);
       $data = array(
           "Codigo" => $id,
           "GRM" => $grm,
           "Saldo" => $saldo
       );
       $this->db->update("productos",$data);
   }
}
?>