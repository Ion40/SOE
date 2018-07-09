<?php
/**
 * @author [Cesar Mejía]
 * @email [cesarcalderon909@gmail.com]
 * @create date 2018-04-18 06:07:48
 * @modify date 2018-04-18 06:09:02
 * @desc [Programacion del modulo usuario]
*/
class Usuarios_model extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }

    public function getRutas()
    {
        $query = $this->sqlsrv->fetchArray("SELECT DISTINCT CODRUTA 
        FROM dbo.AA_CLIENTE_POR_RUTA 
        ORDER BY CODRUTA ASC", SQLSRV_FETCH_ASSOC);
        if ($query) {
            return $query;
        }
        $this->sqlsrv->close();
    }

    public function guardarUsuario($user,$nombre,$pass,$rol,$descRol,$rutas)
    {
        date_default_timezone_set("America/Managua");
        $data = array(
            "Usuario" => $user,
            "Nombre" => $nombre,
            "Password" => md5($pass),
            "Rol" => $rol,
            "DescripcionRol" => $descRol,
            "Rutas" => $rutas,
            "Estado" => 1,
            "FechaCreacion" => date("Y-m-d")    
        );
        $query = $this->db->insert("Usuarios", $data);
        if ($query) {
            return true;
        } else {
            return false;
        }
        
    }

    public function mostrarUsuarios()
    {
        $query = $this->db->get("Usuarios");
        if ($query->num_rows()>0) {
            return $query->result_array();
        }
        return 0;
    }

    public function darBaja($id)
    {
        $this->db->where("IdUsuario",$id);
        $data = array(
            "Estado" => 0
        );
        $this->db->update("Usuarios",$data);
    }

    public function restaurar($id)
    {
        $this->db->where("IdUsuario",$id);
        $data = array(
            "Estado" => 1
        );
        $this->db->update("Usuarios",$data);
    }

    /*******************Login*************************** */

    public function login($name,$pass)
    {
        if ($name != FALSE && $pass != FALSE) {
            $this->db->where('Usuario', $name);
            $this->db->where('Password', $pass);

            $query = $this->db->get('usuarios');

            if ($query->num_rows() == 1) {
                return $query->result_array();
            }
            return 0;
        }
    }
    /*******************Login****************************** */

    public function InsertLog($idusuario, $usuario, $mensaje){
        date_default_timezone_set("America/Managua");
        $datos = array('IdUsuario' => $idusuario, 
                'Usuario' => $usuario,
                "Mensaje" => $mensaje,
                'Fecha' => date('Y-m-d H:i:s')
                );
        $this->db->insert('logs',$datos);
    }

    public function updatePass($id,$pass)
	{
		$this->db->where("IdUsuario",$id);
		$data = array(
			"Password" => md5($pass)
		);
		$this->db->update("usuarios",$data);
	}

}

?>
