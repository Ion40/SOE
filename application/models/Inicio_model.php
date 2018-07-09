<?php
class Inicio_model extends CI_Model
{
	function __construct(){
		parent::__construct();
		$this->load->database();
	}

	public function masVendidos(){
		$query = $this->db->get("view_masVendidos");
		if ($query->num_rows()>0) {
			return $query->result_array();
		}
		return false;
	}

}
?>