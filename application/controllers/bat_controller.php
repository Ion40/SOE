<?php
class bat_controller extends CI_Controller
{
	function __construct(){
		parent::__construct();
		$this->load->model("bat_model");
	} 

	public function execBat(){
		$data = $this->bat_model->execBat();
		$this->load->view("bat/bat");
	}
}


?>