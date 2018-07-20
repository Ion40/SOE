<?php
class Usuarios_controller extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library("session");
        $this->load->model("Usuarios_model");
		if ($this->session->userdata("logged") != 1)
		{
			redirect("Login", "refresh");
		}
    }

    public function index()
    {
        $data["rutas"] = $this->Usuarios_model->getRutas();
        $data["usuarios"] = $this->Usuarios_model->mostrarUsuarios();
		$this->load->view("header/header");
		$this->load->view('Usuarios/Usuarios',$data);
        $this->load->view("footer/footer");
        $this->load->view("jsView/jsUsuarios");
    }

    public function guardarUsuario()
    {
        $usuario = $this->input->get_post("usuario");
        $nombre = $this->input->get_post("nombre");
        $password = $this->input->get_post("password");
        $rol = $this->input->get_post("rol");
        $descrol = $this->input->get_post("descrol");
        $rutas = implode($this->input->get_post("rutas"),",");
        $this->Usuarios_model->guardarUsuario($usuario, $nombre, $password, $rol, $descrol, $rutas);
        print_r($usuario, $nombre, $password, $rol, $descrol, $rutas);

        $this->Usuarios_model->InsertLog($this->session->userdata("id"), $this->session->userdata("NameU"),
        "Se agregó el usuario '".$nombre."' al sistema");
    }

    public function darBaja($id){
        $this->Usuarios_model->darBaja($id);
        $this->Usuarios_model->InsertLog($this->session->userdata("id"), $this->session->userdata("NameU"),
        "Se dió de baja del sistema al usuario con id ".$id." ");
    }

    public function restaurar($id)
    {
        $this->Usuarios_model->restaurar($id);
        $this->Usuarios_model->InsertLog($this->session->userdata("id"), $this->session->userdata("NameU"),
        "Se restauro en el sistema al usuario con id ".$id." ");
    }

    public function updatePass()
	{
		$id = $this->session->userdata("id");
		$pass = $this->input->get_post("Pass");
		$this->Usuarios_model->updatePass($id,$pass);
	}
}
?>
