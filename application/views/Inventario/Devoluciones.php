<!--//////////////////////////////////////////////////////////
                CONTENIDO
///////////////////////////////////////////////////////////-->
<main class="mdl-layout__content mdl-color--grey-100">
	<div class="contenedor">
		<div class="container">
			<br>
			<?php
			if ($this->session->userdata("RolUser") == 6 || $this->session->userdata("RolUser") == 0) {
				echo '
						<h5 class="titulosGen" style="color:black;">Nueva Devolución</h5>
						<br>
						
			            <div class="row">
			            <form action="'."cargarProdDev".'" id="formCargaProductoDev" enctype="multipart/form-data" method="post" name="formCargaProductoDev">
							<div class=" col s6 m4 l4">
								<label for="">Selecciona una fecha de entrega</label>
								<select class="browser-default chosen-select" name="fechaDev" id="fechaDev">
									<option disabled selected>Fecha Entrega</option>';
									  if (!$fechas)
									  {}else{
										  foreach ($fechas as $fecha) {
											  echo '
											    <option value="'.$fecha["FechaEntrega"].'">'.$fecha["FechaEntrega"].'</option>		
											  ';
									  	}
									  }
								echo '</select>
							</div>
							<div class="col s6 m4 l4">
								<div class="file-field input-field">
									<div class="btn">
										<span>
											<i class="material-icons">file_upload</i>
										</span>
										<input type="file" id="dataProductoDev" name="dataProductoDev">
									</div>
									<div class="file-path-wrapper">
										<input class="file-path validate" type="text">
									</div>
								</div>
			                </div>
			                </form>
							<div class="col s6 m4 l2">
								<button id="btnCargaProdDevol" class="btn btn-blue btn-block waves-effect waves-light">Subir Archivo</button>
							</div>
			            </div>
					';
			}
			?>
			<br>
			<br>

			<h4 class="center" style="color:black;">Lista Devoluciones</h4>
			<div class="Buscar row column noMargen">
				<div class="col s1 m1 l1 offset-l3 offset-m2">
					<i class="material-icons iconSearch">search</i>
				</div>
				<div class="input-field col s12 m6 l4">
					<input id="BuscarDevoluciones" type="text" placeholder="Buscar">
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
					<div class="card">
						<div class="card-content">
							<div class="div-cont">
								<table id="TblDevoluciones" class="table striped">
									<thead>
									<?php
									if ($this->session->userdata("RolUser") == 6 || $this->session->userdata("RolUser") == 0) {
										echo '
												   <tr class="tblcabecera">
														<th>Fecha Entrega</th>
														<th>Cantidad Dev.</th>
														<th>Libras</th>
														<th>Fecha Creacion</th>
														<th>Acciones</th>
													</tr>
												';
									} else {
										echo '
												   <tr class="tblcabecera">
														<th>Fecha Entrega</th>
														<th>Cantidad Dev.</th>
														<th>Libras</th>
														<th>Fecha Creacion</th>
													</tr>
												';
									}

									?>
									</thead>
									<tbody>
									<?php
									if (!$prod) {
									} else {
											foreach ($prod as $key)
											{
												echo "
													<tr>
													 <td>".$key["FechaEntrega"]."</td>
													 <td>".number_format($key["CantDev"],2)."</td>
													 <td>".number_format($key["Libras"],2)."</td>
													 <td>".$key["FechaCreacion"]."</td>
												";
												if ($this->session->userdata("RolUser") == 2
													|| $this->session->userdata("RolUser") == 3 || $this->session->userdata("RolUser") == 4
													|| $this->session->userdata("RolUser") ==5  || $this->session->userdata("RolUser") == 7
													|| $this->session->userdata("RolUser") == 8) {
													echo "
														<td class='center'>
														  <a href='#' 
														   onclick='DetallesDevoluciones(".'"'.$key["FechaEntrega"].'"'.")'>
														    <i class='material-icons'>remove_red_eye</i>
														  </a>
														</td>		
													";
												}
												if ($this->session->userdata("RolUser") == 6 || $this->session->userdata("RolUser") == 0) {
													echo "
														<td class='center'>
														  <a href='#' 
														   onclick='DetallesDevoluciones(".'"'.$key["FechaEntrega"].'"'.")'>
														    <i class='material-icons'>remove_red_eye</i>
														  </a>
														  <a href='#' 
														   onclick='EliminarDevolucion(".'"'.$key["FechaEntrega"].'"'.")'>
														    <i class='material-icons'>delete</i>
														  </a>
														</td>		
													";
												}
												echo "
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
					<!--<div class="row">
						<div class="container">
							<div class="col s8 m6 l4">
								<div class="card-panel hoverable">
									<div class="card-content">
										<span class="card-title">
											<p style="margin-top:-15px;" class="center">Total Inventario</p>
										</span>
										<p style="font-weight:bold; margin-bottom:-15px;" id="total" class="center">

										</p>
									</div>
								</div>
							</div>
						</div>
					</div>-->
				</div>
			</div>
		</div>
	</div>
</main>
<br>

<div id="modalDetalleDevoluciones" class="modal">
	<div class="modal-content">
		<a href="javascript:void(0)" class="modal-close right"><i class="material-icons">close</i></a>
		<div class="row">
			<div class="col s12 m12 l12">
				<h5 class="center">
					Detalles Devolucion <br> Fecha <span id="FechaDevolucion"></span>
				</h5>
				<br>
			</div>
			<div class="col s12 m12 l12">
				<table id="tblDetDev" class="striped table">
					<thead>
					   <tr class="tblcabecera">
						   <th>Codigo</th>
						   <th>Descripcion</th>
						   <th>GR</th>
						   <th>Cant Dev</th>
						   <th>Libras</th>
					   </tr>
					</thead>
					<tbody>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
