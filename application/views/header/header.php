<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <!--Import Google Icon Font localmente by Alder-->
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/js/fuente.css" >

        <link rel="shortcut icon" href="<?php echo base_url(); ?>assets/img/logo.png" />
        <link rel="icon" type="image/png" href="<?php echo base_url(); ?>/img/iweb.png" />
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>SOE - DELMOR</title>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Import materialize.css-->        
        <link type="text/css" rel="stylesheet" href="<?php echo base_url(); ?>assets/css/jquery.dataTables.min.css" />
        <link type="text/css" rel="stylesheet" href="<?php echo base_url(); ?>assets/css/index.css" media="screen,projection"/> 

        <link type="text/css" rel="stylesheet" href="<?php echo base_url(); ?>assets/css/sweetalert2.min.css"/>
        <link type="text/css" rel="stylesheet" href="<?php echo base_url(); ?>assets/css/chosen.css"/>
        <link type="text/css" rel="stylesheet" href="<?php echo base_url(); ?>assets/css/materialize.css" media="screen,projection"/>
        
         <link rel="stylesheet" href="<?PHP echo base_url();?>assets/css/dataTables.tableTools.css">

        <style type="text/css" media="screen">
            select{
                display: block;
                height: auto;
                width: 90px;
                margin-bottom: 10px;
                color: black;
                font-size: 15px;
                border: none;
            }
            
            .dataTables_wrapper .dataTables_filter{ text-align: left; }
            .dataTables_wrapper .dataTables_filter input{ width: auto;}
            .Ancho { width: 5%;}
        </style>
    </head>

<body class="avoid-fout page-blue ">
<header>
	<nav class="nav-extended">
		<div class="nav-wrapper">
			<a href="Inicio" class="brand-logo center">
				<img class="right hide-on-med-and-down" src="<?php echo base_url()?>assets/img/logo.png" alt="" width="50px" style="margin-top:10px !important;">
			</a>
			<a href="#" data-target="mobile-demo" class="sidenav-trigger">
				<i class="material-icons">menu</i>
			</a>
			<ul id="nav-mobile" class="link hide-on-med-and-down" style="margin-left:10em;">
                <?php
                    switch ($this->session->userdata("RolUser")) {
                        case 0:
                            echo '
                                <li>
                                <a href="Inicio">Inicio</a>
                                </li>
                                <li>
                                    <a href="Usuarios">Usuarios</a>
                                </li>
                                <li>
                                    <a href="Ordenes">Ordenes</a>
                                </li>
                                <li>
                                    <a href="Preventas">Preventas</a>
                                </li>
                                <li>
                                    <a href="Inventario">Inventario</a>
                                </li>
                                <li>
                                    <a href="Monitoreo">Monitoreo</a>
                                </li>
                                <li>
                                    <a href="Consolidado">Consolidado</a>
                                </li>
                                <li>
                                    <a href="javascript:void(0)" class="contraseña">Cambiar Contraseña</a>
                                </li> 
                                <li class="right" style="margin-right:20px;">
                                <a href="'.base_url("index.php/Salir").'"> <i class="material-icons">power_settings_new</i></a>
                                </li>
                                <li class="right">
                                    '.$this->session->userdata("UserN").'
                                </li>
                                <li class="right" style="margin-right:10px;">
                                    <i class="material-icons">account_circle</i>  
                                </li>';
                            break;
						case 2:
							echo '
                                <li>
                                <a href="Inicio">Inicio</a>
                                </li>
                                <li>
                                    <a href="Ordenes">Ordenes</a>
                                </li>
                                <li>
                                    <a href="Preventas">Preventas</a>
                                </li>
                                <li>
                                    <a href="Inventario">Inventario</a>
                                </li>
                                <li>
                                    <a href="Monitoreo">Monitoreo</a>
                                </li>
                                <li>
                                    <a href="Consolidado">Consolidado</a>
                                </li>
                                <li>
                                    <a href="javascript:void(0)" class="contraseña">Cambiar Contraseña</a>
                                </li>
                                <li class="right" style="margin-right:20px;">
                                <a href="'.base_url("index.php/Salir").'"> <i class="material-icons">power_settings_new</i></a>
                                </li>
                                <li class="right">
                                    '.$this->session->userdata("UserN").'
                                </li>
                                <li class="right" style="margin-right:10px;">
                                    <i class="material-icons">account_circle</i>  
                                </li>';
							break;
                        case 3:
                            echo '
                                <li>
                                    <a href="Inicio">Inicio</a>
                                </li>
                                <li>
                                    <a href="Ordenes">Ordenes</a>
                                </li>
                                <li>
                                    <a href="Preventas">Preventas</a>
                                </li>
                                <li>
                                    <a href="Inventario">Inventario</a>
                                </li>
                                <li>
                                    <a href="Monitoreo">Monitoreo</a>
                                </li>
                                <li>
                                    <a href="Consolidado">Consolidado</a>
                                </li>
                                <li>
                                    <a href="javascript:void(0)" class="contraseña">Cambiar Contraseña</a>
                                </li>
                                <li class="right" style="margin-right:20px;">
                                <a href="'.base_url("index.php/Salir").'"> <i class="material-icons">power_settings_new</i></a>
                                </li>
                                <li class="right">
                                    '.$this->session->userdata("UserN").'
                                </li>
                                <li class="right" style="margin-right:10px;">
                                    <i class="material-icons">account_circle</i>  
                                </li>
                            ';
                           break;    
                        
                        case  4:
                            echo '
                            <li>
                                <a href="Inicio">Inicio</a>
                            </li>
                            <li>
                                <a href="Ordenes">Ordenes</a>
                            </li>
                            <li>
                                <a href="Preventas">Preventas</a>
                            </li>
                            <li>
                                    <a href="Inventario">Inventario</a>
                            </li>
                           <li>
                                    <a href="javascript:void(0)" class="contraseña">Cambiar Contraseña</a>
                                </li>
                            <li class="right" style="margin-right:20px;">
                            <a href="'.base_url("index.php/Salir").'"> <i class="material-icons">power_settings_new</i></a>
                            </li>
                            <li class="right">
                                '.$this->session->userdata("UserN").'
                            </li>
                            <li class="right" style="margin-right:10px;">
                                <i class="material-icons">account_circle</i>  
                            </li>
                            ';
                            break;

						case  5:
							echo '
                            <li>
                                <a href="Inicio">Inicio</a>
                            </li>
                            <li>
                                <a href="Ordenes">Ordenes</a>
                            </li>
                            <li>
                                    <a href="Inventario">Inventario</a>
                                </li>
                                <li>
                                    <a href="javascript:void(0)" class="contraseña">Cambiar Contraseña</a>
                                </li>
                            <li class="right" style="margin-right:20px;">
                            <a href="'.base_url("index.php/Salir").'"> <i class="material-icons">power_settings_new</i></a>
                            </li>
                            <li class="right">
                                '.$this->session->userdata("UserN").'
                            </li>
                            <li class="right" style="margin-right:10px;">
                                <i class="material-icons">account_circle</i>  
                            </li>
                            ';
							break;

                            case  6:
                            echo '
                            <li>
                                <a href="Inicio">Inicio</a>
                            </li>
                            <li>
                                    <a href="Inventario">Inventario</a>
                                </li>
                                <li>
                                    <a href="ListConsolidado">Consolidado</a>
                                </li>
                                <li>
                                    <a href="javascript:void(0)" class="contraseña">Cambiar Contraseña</a>
                                </li>
                            <li class="right" style="margin-right:20px;">
                            <a href="'.base_url("index.php/Salir").'"> <i class="material-icons">power_settings_new</i></a>
                            </li>
                            <li class="right">
                                '.$this->session->userdata("UserN").'
                            </li>
                            <li class="right" style="margin-right:10px;">
                                <i class="material-icons">account_circle</i>  
                            </li>
                            ';
                            break;

						case  7:
							echo '
                            <li>
                                <a href="Inicio">Inicio</a>
                            </li>
                            <li>
                                <a href="Clientes">Clientes</a>
                            </li>
                            <li>
                            	<a href="PreventasS">Preventas</a>
                            </li>
                            <li>
                                 <a href="Inventario">Inventario</a>
                            </li>
                            <li>
                                    <a href="javascript:void(0)" class="contraseña">Cambiar Contraseña</a>
                                </li>
                            <li class="right" style="margin-right:20px;">
                            <a href="'.base_url("index.php/Salir").'"> <i class="material-icons">power_settings_new</i></a>
                            </li>
                            <li class="right">
                                '.$this->session->userdata("UserN").'
                            </li>
                            <li class="right" style="margin-right:10px;">
                                <i class="material-icons">account_circle</i>  
                            </li>
                            ';
							break;

						case  8:
							echo '
                            <li>
                                <a href="Inicio">Inicio</a>
                            </li>
                            <li>
                                <a href="Clientes">Clientes</a>
                            </li>
                             <li>
                                <a href="Orders">Ordenes</a>
                            </li>
                            <li>
                            	<a href="PreventasS">Preventas</a>
                            </li>
                            <li>
                                 <a href="Inventario">Inventario</a>
                            </li>
                            <li>
                                    <a href="javascript:void(0)" class="contraseña">Cambiar Contraseña</a>
                                </li>
                            <li class="right" style="margin-right:20px;">
                            <a href="'.base_url("index.php/Salir").'"> <i class="material-icons">power_settings_new</i></a>
                            </li>
                            <li class="right">
                                '.$this->session->userdata("UserN").'
                            </li>
                            <li class="right" style="margin-right:10px;">
                                <i class="material-icons">account_circle</i>  
                            </li>
                            ';
							break;
                    }
                ?>
			</ul>
		</div>
	</nav>
	<ul class="link sidenav" id="mobile-demo">
		<?php
                    switch ($this->session->userdata("RolUser")) {
                        case 0:
                            echo '
                                <li>
                                <a href="Inicio">Inicio</a>
                                </li>
                                <li>
                                    <a href="Usuarios">Usuarios</a>
                                </li>
                                <li>
                                    <a href="Ordenes">Ordenes</a>
                                </li>
                                <li>
                                    <a href="Preventas">Preventas</a>
                                </li>
                                <li>
                                    <a href="Inventario">Inventario</a>
                                </li>
                                <li>
                                    <a href="Monitoreo">Monitoreo</a>
                                </li>
                                <li>
                                    <a href="Consolidado">Consolidado</a>
                                </li>
                                <!-- <li>
                                    <a href="#" class="dropdown-trigger" data-target="dropdownreportes">Reportes <i class="material-icons right">arrow_drop_down</i></a>
                                </li> -->
                                <li class="right" style="margin-right:20px;">
                                <a href="'.base_url("index.php/Salir").'"> <i class="material-icons">power_settings_new</i></a>
                                </li>
                                <li class="right">
                                    '.$this->session->userdata("UserN").'
                                </li>
                                <li class="right" style="margin-right:10px;">
                                    <i class="material-icons">account_circle</i>  
                                </li>';
                            break;
                        case 3:
                            echo '
                                <li>
                                    <a href="Inicio">Inicio</a>
                                </li>
                                <li>
                                    <a href="Ordenes">Ordenes</a>
                                </li>
                                <li>
                                    <a href="Preventas">Preventas</a>
                                </li>
                                <li>
                                    <a href="Inventario">Inventario</a>
                                </li>
                                <li>
                                    <a href="Monitoreo">Monitoreo</a>
                                </li>
                                <li>
                                    <a href="Consolidado">Consolidado</a>
                                </li>
                                <!-- <li>
                                    <a href="#" class="dropdown-trigger" data-target="dropdownreportes">Reportes <i class="material-icons right">arrow_drop_down</i></a> 
                                </li> -->
                                <li class="right" style="margin-right:20px;">
                                <a href="'.base_url("index.php/Salir").'"> <i class="material-icons">power_settings_new</i></a>
                                </li>
                                <li class="right">
                                    '.$this->session->userdata("UserN").'
                                </li>
                                <li class="right" style="margin-right:10px;">
                                    <i class="material-icons">account_circle</i>  
                                </li>
                            ';
                           break;    
                        
                        case  4:
                            echo '
                            <li>
                                <a href="Inicio">Inicio</a>
                            </li>
                            <li>
                                <a href="Ordenes">Ordenes</a>
                            </li>
                            <li>
                                <a href="Preventas">Preventas</a>
                            </li>
                            <li>
                                    <a href="Inventario">Inventario</a>
                                </li>
                            <!-- <li>
                                    <a href="#" class="dropdown-trigger" data-target="dropdownreportes">Reportes <i class="material-icons right">arrow_drop_down</i></a> 
                                </li> -->
                            <li class="right" style="margin-right:20px;">
                            <a href="'.base_url("index.php/Salir").'"> <i class="material-icons">power_settings_new</i></a>
                            </li>
                            <li class="right">
                                '.$this->session->userdata("UserN").'
                            </li>
                            <li class="right" style="margin-right:10px;">
                                <i class="material-icons">account_circle</i>  
                            </li>
                            ';
                            break;

                            case  6:
                            echo '
                            <li>
                                <a href="Inicio">Inicio</a>
                            </li>
                            <li>
                                    <a href="Inventario">Inventario</a>
                                </li>
                            <!-- <li>
                                    <a href="#" class="dropdown-trigger" data-target="dropdownreportes">Reportes <i class="material-icons right">arrow_drop_down</i></a> 
                                </li> -->
                            <li class="right" style="margin-right:20px;">
                            <a href="'.base_url("index.php/Salir").'"> <i class="material-icons">power_settings_new</i></a>
                            </li>
                            <li class="right">
                                '.$this->session->userdata("UserN").'
                            </li>
                            <li class="right" style="margin-right:10px;">
                                <i class="material-icons">account_circle</i>  
                            </li>
                            ';
                            break;
                    }
                ?>
	</ul>
</header>

<ul id="dropdownreportes" class="dropdown-content">
  <li><a href="#!">one</a></li>
  <li><a href="#!">two</a></li>
  <li class="divider"></li>
  <li><a href="#!">three</a></li>
</ul>



<div id="newPassword" class="modal">
    <div class="modal-content">
		<a href="javascript:void(0)" class="right modal-close"><i class="material-icons">close</i></a>
		<div class="row">
			<h3 class="center-align">Cambiar Contraseña</h3>
			<div class="container">
				<div class="col s12 m12 l12 center">
					<label for="lblpassword" id="lblpassword">Nueva Contraseña</label>
					<input type="password" class="center" name="password" id="password">
					<input type="hidden" name="idU" id="idU" value="<?php echo $this->session->userdata("id")?>">
				</div>
				<div class="col s12 m12 l12 left">
					<p>
						<label>
							<input type="checkbox" id="showPass" class="filled-in" />
							<span>Mostrar contraseña</span>
						</label>
					</p>
				</div>
				<div class="center col s12 m12 l12">
					<button id="btnActualizarPass" class="btn btn-blue waves-effect waves-light">actualizar</button>
				</div>
			</div>
		</div>
    </div>
</div>
