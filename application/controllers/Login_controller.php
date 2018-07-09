<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login_controller extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
        $this->load->model("Usuarios_model");
        $this->load->library("session");
	}

	public function index()
	{
		$this->load->view("header/header_login");
		$this->load->view('Login');
		$this->load->view("footer/footer_login");
	}

	public function Acreditar()
    {
        $this->form_validation->set_rules('txtUsuario', 'nombre', 'required');
        $this->form_validation->set_rules('txtpassword', 'pass', 'required');

        if ($this->form_validation->run() == FALSE) {
            redirect('?error=1');
        }
        else {
            $name = $this->input->get_post('txtUsuario');
            $pass = md5($this->input->get_post('txtpassword'));
            $data['user'] = $this->Usuarios_model->login($name, $pass);

            if ($data['user'] == 0) {
                redirect('?error=2');
            }
            else {
                $sessiondata = array(
                    'id' => $data['user'][0]['IdUsuario'],
					'UserN' => $data['user'][0]['Usuario'],
					'NameU' => $data['user'][0]['Nombre'],
					'RolUser' => $data['user'][0]['Rol'],
					'DescRol' => $data['user'][0]['DescripcionRol'],
                    'Rutas' => $data["user"][0]["Rutas"],
                    'logged' => 1
                );
                $this->session->set_userdata($sessiondata);

                $iduser = $this->session->userdata("id");
                $user = $this->session->userdata("NameU");
                $this->Usuarios_model->InsertLog($iduser,$user,"El usuario ".$user." inicio sesion");

                if ($this->session->userdata) {
                    redirect('Inicio'); //por el momento
                }


            }
        }
    }


    public function Salir()
    {
       $iduser = $this->session->userdata("id");
       $user = $this->session->userdata("NameU");
        $this->Usuarios_model->InsertLog($iduser,$user,"El usuario ".$user." cerro sesion");
        $this->session->sess_destroy();
        $sessiondata = array('logged' => 0);
        $this->index();
    }
}
?>