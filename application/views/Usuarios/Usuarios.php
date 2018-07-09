<!--//////////////////////////////////////////////////////////
                CONTENIDO
///////////////////////////////////////////////////////////-->
<main class="mdl-layout__content mdl-color--grey-100">
    <div class="contenedor">
        <div class="container"><br>
            <h5 class="titulosGen" style="color:black;">Lista de Usuarios</h5><br>
            <div class="Buscar row column noMargen">
                <div class="col s1 m1 l1 offset-l3 offset-m2">
                    <i class="material-icons iconSearch">search</i>
                </div>
                <div class="input-field col s12 m6 l4">
                    <input id="BuscarUsuarios" type="text" placeholder="Buscar">
                    <label for="search"></label>
                </div>
            </div>
        

        <!--/////////////////////////////////////////////////////////////////////////////////////////
                                       BOTONES
        //////////////////////////////////////////////////////////////////////////////////////////-->
        <div class="row">
            <!--<div class="col s6 m6" style="text-align:left;">
                <div id="retornarP">
                     <a data-tooltip='REGRESAR' href="" class="purple-text darken-1 tooltipped">
                        <i class="waves-effect waves-light material-icons titulosGen">keyboard_backspace</i>
                    </a>
                </div>  
            </div> -->
            <div class="col s12 m12 l12">
                <div class="row">
                    <div class="col s12 m12 l12">
                        <button id="nuevo" data-target="modalUser" class="btn btn-block btn-blue waves-effect waves-light hoverable right modal-trigger">agregar</button>      
                    </div>       
                </div>
                <div class="card">
                    <div class="card-content">
                     
                        <div class="div-cont">
                            <table id="TblUsuarios" class="table striped">
                                <thead>
                                    <tr class="tblcabecera">
                                        <th>USUARIO</th>
                                        <th>NOMBRE</th>
                                        <th>ROL</th>
                                        <th>RUTAS</th>
                                        <th>ESTATUS</th>
                                        <th>Creado</th>
                                        <th>Acciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $estado;
                                    $rol;
                                        if (!$usuarios) {
                                        } else {
                                            foreach ($usuarios as $key) { 
                                                $key["Estado"] = ($key["Estado"] == 1) ? $estado = "Activo" : $estado = "Inactivo";
                                                echo "
                                                    <tr>
                                                        <td>".$key["Usuario"]."</td>
                                                        <td>".$key["Nombre"]."</td>
                                                        <td>".$key["DescripcionRol"]."</td>
                                                        <td>".$key["Rutas"]."</td>
                                                        <td>".$estado."</td>
                                                        <td>".date_format(new DateTime($key["FechaCreacion"]),"d-m-Y")."</td>";
                                                        if ($estado == "Activo") {
                                                            echo"
                                                            <td class='center'> 
                                                                <a id='".$key["IdUsuario"]."' onclick='Baja(".$key["IdUsuario"].")' href='javascript:void(0)'><i class='material-icons'>delete</i></a>
                                                            </td>       
                                                            ";
                                                        } else {
                                                           echo"
                                                           <td class='center'>
                                                                <a id='".$key["IdUsuario"]."' onclick='Restaurar(".$key["IdUsuario"].")' href='javascript:void(0)'><i class='material-icons'>restore</i></a>
                                                           </td>  
                                                           ";
                                                        }
                                                  echo"      
                                                    </tr>
                                                ";
                                            }
                                        }
                                        
                                    ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </div>
</main><br>

<div id="modalUser" class="modal">
	<div class="modal-content">
        <h6 class="titulosGen" style="color:black;">Nuevo Usuario</h6>
		<div class="row">
			<div class="input-field col s6 m6 l6">
                <input type="text" name="usuario" id="usuario">
                <label for="usuario">Usuario</label>
            </div>
            <div class="input-field col s6 m6 l6">
                <input type="text" name="nombre" id="nombre">
                <label for="nombre">Nombre</label>
            </div>
        </div>
        <div class="row">
			<div class="input-field col s6 m6 l6">
                <input type="password" name="password" id="password">
                <label for="password">Contraseña</label>
            </div>
            <div class="input-field col s6 m6 l6">
                <input type="password" id="confpassword">
                <label for="confpassword">Confirmar Contraseña</label>
            </div>
        </div>
        <div class="row">
            <div class="col s12 m12 l12">
                <input type="hidden" name="descrol" id="descrol">
                <select name="rol" id="rol" class="browser-default chosen-select">
                    <option selected disabled>Elige un rol</option>
                    <option value="1">Gerente General</option>
                    <option value="2">Gerente de Ventas</option>
                    <option value="3">Coordinador de Ventas</option>
                    <option value="4">Supervisor</option>
                    <option value="5">Jefa de tienda</option>
                    <option value="6">Asistente de almacen pdto terminados</option>
					<option value="7">Auxiliar de ventas</option>
					<option value="8">Relaciones públicas y comunicaciones</option>
                </select>
            </div>
        </div> 
        <div class="row">
            <div class="col s12 m12 l12">
                <div id="divtblrutas" style="display:none;">
                    <table id="tblRutas" class="table striped">
                        <thead>
                            <tr class="tblcabecera">
                                <th class="center">Asignar ruta</th>
                                <th>Rutas</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                                if (!$rutas) {
                                } else {
                                    foreach($rutas as $item)
                                    {
                                        echo "
                                            <tr>
                                                <td>
                                                    <p class='center-align'>
                                                        <label>
                                                        <input name='rutas' type='checkbox' id='check".$item["CODRUTA"]."' class='filled-in' />
                                                        <span></span>
                                                        </label>
                                                    </p>
                                              </td>
                                                <td>".$item["CODRUTA"]."</td>
                                            </tr>
                                        ";
                                    }
                                }
                                
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
		<div class="row">
			<div class="col s12 m12 l12 center">
				<button class="btn btn-blue waves-effect waves-light" id="guardarU">Guardar</button>
				<button class="btn btn-red waves-effect waves-light modal-close waves-light">Cerrar</button>
			</div>
		</div>
	</div>
</div>


<div id="modalUserEdit" class="modal">
	<div class="modal-content">
        <h6 class="titulosGen" style="color:black;">Editar Usuario</h6>
		<div class="row">
			<div class="input-field col s6 m6 l6">
                <input type="text" name="usuarioedit" id="usuarioedit">
                <label for="usuarioedit">Usuario</label>
            </div>
            <div class="input-field col s6 m6 l6">
                <input type="text" name="nombreedit" id="nombreedit">
                <label for="nombreedit">Nombre</label>
            </div>
        </div>
        <div class="row">
			<div class="input-field col s6 m6 l6">
                <input type="password" name="passwordedit" id="passwordedit">
                <label for="passwordedit">Contraseña</label>
            </div>
            <div class="input-field col s6 m6 l6">
                <input type="password" id="confpasswordedit">
                <label for="confpasswordedit">Confirmar Contraseña</label>
            </div>
        </div>
       <!-- <div class="row">
            <div class="col s12 m12 l12">
                <input type="hidden" name="descroledit" id="descroledit">
                <select name="roledit" id="roledit" class="browser-default chosen-select">
                    <option selected disabled>Elige un rol</option>
                    <option value="1">Gerente General</option>
                    <option value="2">Gerente de Ventas</option>
                    <option value="3">Gerente de Producción</option>
                    <option value="4">Supervisor</option>   
                    <option value="5">Asistente Prodcutos Terminados</option>                     
                </select>
            </div>
        </div> 
        <div class="row">
            <div class="col s12 m12 l12">
                <div id="divtblrutasedit" style="display:none;">
                    <table id="tblRutasedit" class="table striped">
                        <thead>
                            <tr class="tblcabecera">
                                <th class="center">Asignar ruta</th>
                                <th>Rutas</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                                if (!$rutas) {
                                } else {
                                    foreach($rutas as $item)
                                    {
                                        echo "
                                            <tr>
                                                <td>
                                                    <p class='center-align'>
                                                        <label>
                                                        <input name='rutas' type='checkbox' id='check".$item["CODRUTA"]."' class='filled-in' />
                                                        <span></span>
                                                        </label>
                                                    </p>
                                              </td>
                                                <td>".$item["CODRUTA"]."</td>
                                            </tr>
                                        ";
                                    }
                                }
                                
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>-->
		<div class="row">
			<div class="col s12 m12 l12 center">
				<button class="btn btn-blue waves-effect waves-light" id="actualizarU">Actualizar</button>
				<button class="btn btn-red waves-effect waves-light modal-close waves-light">Cerrar</button>
			</div>
		</div>
	</div>
</div>
