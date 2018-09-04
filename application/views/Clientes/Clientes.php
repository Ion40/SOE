<!--//////////////////////////////////////////////////////////
                CONTENIDO
///////////////////////////////////////////////////////////-->
<main class="mdl-layout__content mdl-color--grey-100">
	<div class="contenedor">
		<div class="container"><br>
			<h5 class="titulosGen" style="color:black;">Lista de Clientes</h5><br>
			<div class="Buscar row column noMargen">
				<div class="col s1 m1 l1 offset-l3 offset-m2">
					<i class="material-icons iconSearch">search</i>
				</div>
				<div class="input-field col s12 m6 l4">
					<input id="BuscarClientes" type="text" placeholder="Buscar">
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
							<button id="nuevo" data-target="modalClientes" class="btn btn-block btn-blue waves-effect waves-light hoverable right modal-trigger">agregar</button>
						</div>
					</div>
					<div class="card">
						<div class="card-content">

							<div class="div-cont">
								<table id="TblClientes" class="table striped">
									<thead>
									<tr class="tblcabecera">
										<th>Nombre</th>
										<th>Ruta</th>
										<th>Fecha Registro</th>
										<th>Estado</th>
										<th>Acciones</th>
									</tr>
									</thead>
									<tbody>
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

<div id="modalClientes" class="modal">
	<div class="modal-content">
		<h6 class="titulosGen" style="color:black;">Nuevo Cliente</h6>
		<div class="row">
			<div class="col s6 m6 l6">
				<labe for="lblnombre" id="lblnombre">Cliente</labe>
				<input type="text" name="nombre" id="nombre" placeholder="Nombre del cliente">
			</div>
			<div class="col s6 m6 l6">
				<label for="lblRuta" id="lblRuta">Rutas</label>
				<select name="ruta" id="ruta" class="browser-default chosen-select" multiple>
					<!--<option selected disabled>Elige una ruta</option>-->
					<?php
					  if ($this->session->userdata("RolUser") != 7) {
						if (!$rutas){
						}else{
							foreach ($rutas as $key) {
								echo "
									<option value='".$key["Rutas"]."'>Ruta# ".$key["Rutas"]."</option>	
								";
							}
						}
					  }else{
						if (!$rutas){
						}else{
							foreach ($rutas as $key) {
								echo "
									<option value='".$key["Rutas"]."'>Ruta# ".$key["Rutas"]."</option>	
								";
							}
						}
					  }	
					?>
				</select>
			</div>
		</div>
		<div class="row">
			<div class="col s12 m12 l12 center">
				<button class="btn btn-blue waves-effect waves-light" id="guardarClient">Guardar</button>
				<button class="btn btn-red waves-effect waves-light modal-close waves-light">Cerrar</button>
			</div>
		</div>
	</div>
</div>


<div id="modalClienteEdit" class="modal">
	<div class="modal-content">
		<h6 class="titulosGen" style="color:black;">Editar Cliente</h6>
		<div class="row">
			<div class="col s6 m6 l6">
				<labe for="lblnombreedit" id="lblnombreedit">Cliente</labe>
				<input type="hidden" id="idcliente" name="idcliente">
				<input type="text" name="nombreedit" id="nombreedit" placeholder="Nombre del cliente">
			</div>
			<div class="col s6 m6 l6">
				<label for="lblRutaedit" id="lblRutaedit">Rutas</label>
				<select name="rutaedit" id="rutaedit" class="browser-default chosen-select">
					<?php
					if (!$rutas){
					}else{
						foreach ($rutas as $key) {
							echo "
							  	<option value='".$key["Rutas"]."'>Ruta# ".$key["Rutas"]."</option>	
							  ";
						}
					}
					?>
				</select>
			</div>
		</div>
		<div class="row">
			<div class="col s12 m12 l12 center">
				<button class="btn btn-blue waves-effect waves-light" id="actualizarClient">Actualizar</button>
				<button class="btn btn-red waves-effect waves-light modal-close waves-light">Cerrar</button>
			</div>
		</div>
	</div>
</div>
