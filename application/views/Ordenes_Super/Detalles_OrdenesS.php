<!--//////////////////////////////////////////////////////////
                CONTENIDO
///////////////////////////////////////////////////////////-->
<main class="mdl-layout__content mdl-color--grey-100">
	<div class="contenedor">
		<div class="container">
			<div class="col s12 m12 l12">
				<div class="card">
					<div class="card-content">
						<div class="card-title">
							<h6 class="center" style="margin-top:;font-weight:bold;">
								<?php
								$cabecera;
								if ($detalles) {
									foreach ($detalles as $key) {
										$cabecera = $key;
									}
									echo " DETALLE ORDEN DE ENTREGA RUTA#".$cabecera["Ruta"];
								}
								?>
							</h6>
						</div><br>
						<div class="container">
							<div class="row ">
								<?php
								$cabecera;
								if ($detalles) {
									foreach ($detalles as $key) {
										$cabecera = $key;
									}
									echo '
												<div class="center col s6 m6 l6">
                                                    <span>Ruta</span>: <span>'.$cabecera["Ruta"].'</span>
                                                </div>
                                                <div class="col s6 m6 l6">
                                                    <span>Fecha Entrega</span>: <span>'.$cabecera["FechaEntrega"].'</span>
                                                </div>
                                            ';
								}
								?>
							</div>
						</div>
					</div>
				</div>
			</div>

			<br>
			<br>
			<div class="Buscar row column noMargen">
				<div class="col s1 m1 l1 offset-l3 offset-m2">
					<i class="material-icons iconSearch">search</i>
				</div>
				<div class="input-field col s12 m6 l4">
					<input id="BuscarDetOrdenes" type="text" placeholder="Buscar">
					<label for="search"></label>
				</div>
			</div>
			<!--/////////////////////////////////////////////////////////////////////////////////////////
                                       BOTONES
        //////////////////////////////////////////////////////////////////////////////////////////-->
			<div class="row">
				<div class="col s6 m6 l6" style="text-align:left;">
					<div id="retornarP">
						<a data-tooltip='REGRESAR' href="javascript: history.back()" class="purple-text darken-1 tooltipped">
							<i class="waves-effect waves-light material-icons titulosGen">keyboard_backspace</i>
						</a>
					</div>
				</div>
				<div class="row">
				</div>
				<div class="col s12 m12 l12" >
					<div class="card">
						<div class="card-content">
							<div class="div-cont">
								<div class="row">
									<div class="col s3 m3 l3 left">
										<?php
										$suma = 0;
										if ($detalles) {
											foreach ($detalles as $key) {
												$suma+=$key["LBS"];
											}
											echo "<p style='padding:10px 15px;' class='hoverable'>Total Pedido (lbs): <span>".number_format($suma,2)."</span></p>";
										}
										?>
									</div>
								</div>
								<div>
									<table id="tblDetOrS" class="table striped" style="height:20px !important;">
										<thead>
										<tr class="tblcabecera">
											<th>Fecha Entrega</th>
											<th>Unidades</th>
											<th>LBS</th>
											<th>Vendedor</th>
											<th>Cliente</th>
											<th>Acciones</th>
										</tr>
										</thead>
										<tbody>
										<?php
										if (!$detalles) {
										} else {
											foreach ($detalles as $key) {
												echo "
                                                            <tr>
                                                                <td>".$key["FechaEntrega"]."</td>
                                                                <td>".number_format($key["Unidades"],2)."</td>
                                                                <td>".number_format($key["LBS"],2)."</td>
                                                                <td>".$key["Vendedor"]."</td>
                                                                <td>".$key["Cliente"]."</td>
                                                                <td class='center-align'>
                                                                   <a href='javascript:void(0)' 
                                                                   onclick='DetallesModal(".'"'.$key["FechaEntrega"].'","'.$key["IdCliente"].'","'.$key["Vendedor"].'","'.$key["Cliente"].'"'.")'>
                                                                       <i class='material-icons'>visibility</i>
                                                                   </a>
                                                                   
                                                                   <a href='javascript:void(0)'
                                                                   onclick='DetOrdSxCli(".'"'.$key["IdCliente"].'","'.$key["FechaEntrega"].'","'.$key["Vendedor"].'","'.$key["Cliente"].'","'.$key["Estado"].'"'.")'>
                                                                       <i class='material-icons'>edit</i>
                                                                   </a>
                                                                   
                                                                   <a target='_blank' class='tooltipped'  data-tooltip='Remision' data-position='right' href='javascript:void(0)'
                                                                   onclick='remcli(".'"'.$key["IdCliente"].'","'.$key["Ruta"].'","'.$key["FechaEntrega"].'"'.")'>
                                                                       <i class='material-icons'>record_voice_over</i>
                                                                   </a>
                                                                </td>
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
	</div>
</main>

<div id="modalDetalleOrderS" class="modal">
	<div class="modal-content">
		<div class="row">
			<div class="col s4 m4 l4">
				<h5 class="center">Fecha Entrega</h5>
				<p class="center-align" id="spanFecha"></p>
			</div>
			<div class="col s4 m4 l4">
				<h5 class="center">Vendedor</h5>
				<p class="center-align" id="spanVendedor"></p>
			</div>
			<div class="col s4 m4 l4">
				<h5 class="center">Cliente</h5>
				<p class="center-align" id="spanCliente"></p>
			</div>
			<br><br><br>
			<div class="col s12 m12 l12">
				<table id="tblDetalleOrderS" class="table striped">
					<thead class="tblcabecera">
					   <tr>
						   <th>Codigo</th>
						   <th>Descripcion</th>
						   <th>GR/lb</th>
						   <th>Unidades</th>
						   <th>LBS</th>
					   </tr>
					</thead>
					<tbody>
					</tbody>
				</table>
			</div>
		</div>
		<div class="row center">
			<div class="col s12 m12 l12">
				<a href="javascript:void(0)" class="btn btn-red modal-close waves-effect waves-light">CERRAR</a>
			</div>
		</div>
	</div>
</div>
<!--------------------------------------------------------------------------------------------------------------------->
<!--------------------------------------------------------------------------------------------------------------------->
<div id="modalEditOrderS" class="modal modal-fixed-footer">
	<div class="modal-content">
		<div class="row">
			<div class="col s4 m4 l4">
				<h5 class="center">Fecha Entrega</h5>
				<p class="center-align" id="spanFechaEdit"></p>
			</div>
			<div class="col s4 m4 l4">
				<h5 class="center">Vendedor</h5>
				<p class="center-align" id="spanVendedorEdit"></p>
			</div>
			<div class="col s4 m4 l4">
				<h5 class="center">Cliente</h5>
				<p class="center-align" id="spanClienteEdit"></p>
			</div>
			<br><br><br>
		</div>
		<div class="row">
			<div class="col s12 m12 l12">
				<table id="tblEditarOrdenS" class="table striped">
					<thead>
					<tr class="tblcabecera">
						<th>Codigo</th>
						<th>Productos</th>
						<th>GR/lb</th>
						<th>Unidades</th>
						<th>LBS</th>
						<th>Eliminar</th>
					</tr>
					</thead>
					<tbody>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<div class="modal-footer">
		<div class="col s12 m12 l12">
			<a href="javascript:void(0)" id="btnUpdateOr" onclick="actualizarOrden()" class="waves-effect waves-light btn btn-blue">Actualizar</a>
			<a href="javascript:void(0)" class="modal-close waves-effect waves-light btn btn-red">Cancelar</a>
		</div>
	</div>
</div>
