<?php
  date_default_timezone_set("America/Managua");
  setlocale(LC_ALL,'Spanish_Nicaragua');
?>
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
                                    ORDEN DE ENTREGA REALIZADAS (PREVENTAS)
                                </h6>
                            </div>
                            <br><br>
							<div class="div-cont">
								<div class="row center">
                                    <?php
										if ($this->session->userdata("RolUser")==4) {
											echo '
											<div class="col s4 m4 l4">
												<p>Supervisor: <span>'.$this->session->userdata("NameU").'</span></p>
											</div>
											<div class="col s4 m4 l4">
												<p>Rutas: <span>'.$this->session->userdata("Rutas").'</span></p>
											</div>
											<div class="col s4 m4 l4">
												<p>Fecha: <span>'.strftime("%A %d de %B")." del ".date("Y").'</span></p>
											</div>
											';
										}else{
											echo '
											<div class="col s6 m6 l6">
												<p>Nombre: <span>'.$this->session->userdata("NameU").'</span></p>
											</div>
											<div class="col s6 m6 l6">
												<p>Fecha: <span>'.strftime("%A %d de %B")." del ".date("Y").'</span></p>
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
					<input id="BuscarPreventas" type="text" placeholder="Buscar">
					<label for="search"></label>
				</div>
			</div>
			<!--/////////////////////////////////////////////////////////////////////////////////////////
                                       BOTONES
        //////////////////////////////////////////////////////////////////////////////////////////-->
			<div class="row">
            <div class="row">
                    <div class="col s12 m12 l12">
                    	<?php
							if ($this->session->userdata('RolUser') != 2){
								echo '
								<a href="NuevaPreventa" id="nuevaPreventa" 
								  class="btn btn-block btn-blue waves-effect waves-light hoverable right">
								agregar</a>
								';
							}
						?>
                    </div>       
                </div>
				<div class="col s12 m12 l12">
					<div class="card">
						<div class="card-content">
							<div class="div-cont">
								<table id="tblPreventas" class="table striped">
									<thead>
										<?php 
											if ($this->session->userdata("RolUser") == 4) {
												echo '
												<tr class="tblcabecera">
												<th class="center-align">Fecha</th>
												<th class="center-align">Unidades</th>
												<th class="center-align">Estado</th>
												<th class="center-align">Detalles</th>
											</tr>
												';
											}else{
												echo '
												<tr class="tblcabecera">
												<th style="display:none;" class="center-align">Codigo</th>
												<th class="center-align">Supervisor</th>
												<th class="center-align">Fecha</th>
												<th class="center-align">Unidades</th>
												<th class="center-align">LBS</th>
												<th class="center-align">Estado</th>
												<th class="center-align">Detalles</th>
												<th class="center-align">Acciones</th>
											</tr>
												';
											}
										?>
									</thead>
									<tbody>
                                    <?php
										$estado;
											if($this->session->userdata("RolUser")==4){
												if (!$prev) {
												} else {
													foreach($prev as $key){
														$key["Estado"] = ($key["Estado"] == 0) ? $estado= "<i class='blue-text material-icons'>check</i>" : $estado= "<i class='green-text material-icons'>done_all</i>";
														echo "
															<tr>
																<td>".$key["FechaEntrega"]."</td>
																<td>".number_format($key["Unidades"],2)."</td>
																<td class='center-align'>".$estado."</td>
																<td class='center detalles'>
																  <i id='detail1".$key["FechaEntrega"]."' class='blue-text material-icons'>expand_more</i>
																  <i id='detail2".$key["FechaEntrega"]."' style='display:none;' class='blue-text material-icons'>expand_less</i> 	
																  <div id='loader".$key['FechaEntrega']."' style='display:none;' class='preloader-wrapper small active' >
																	<div class='spinner-layer spinner-blue-only'>
																	<div style='overflow: visible!important;' class='circle-clipper left'>
																		<div class='circle'></div>
																	</div><div class='gap-patch'>
																		<div class='circle'></div>
																	</div><div style='overflow: visible!important;' class='circle-clipper right'>
																		<div class='circle'></div>
																	</div>
																	</div>
																</div>
																</td>
															</tr>
														";
													}
												}
											}else{
												if(!$prev2){
												}
												else{
													foreach ($prev2 as $key) {
													echo "
														<tr>
															<td style='display:none;'>".$key["IdUsuario"]."</td>
															<td>".$key["Nombre"]."</td>
															<td>".$key["FechaEntrega"]."</td>
															<td>".number_format($key["Unidades"],2)."</td>
															<td>".number_format($key["LBS"],2)."</td>";
															if($key["Estado"]==1){
																echo "<td class='center-align'><i class='material-icons green-text'>done_all</i></td>";
															}else{
																echo "<td class='center-align'><i class='material-icons blue-text'>check</i></td>";
															}
															echo "<td class='center detalles1'>
															  <i id='detail1".$key["IdUsuario"]."' class='blue-text material-icons'>expand_more</i>
															  <i id='detail2".$key["IdUsuario"]."' style='display:none;' class='blue-text material-icons'>expand_less</i> 	
															  <div id='loader".$key['IdUsuario']."' style='display:none;' class='preloader-wrapper small active' >
																<div class='spinner-layer spinner-blue-only'>
																<div style='overflow: visible!important;' class='circle-clipper left'>
																	<div class='circle'></div>
																</div><div class='gap-patch'>
																	<div class='circle'></div>
																</div><div style='overflow: visible!important;' class='circle-clipper right'>
																	<div class='circle'></div>
																</div>
																</div>
															</div>
															</td>
															<td class='center-align'>
																<a class='dropdown-trigger btn-floating teal' href='#' data-target='dropdown".$key["IdUsuario"]."'><i class='material-icons'>edit</i></a>
	
																	<!-- Dropdown Structure -->
																	<ul id='dropdown".$key["IdUsuario"]."' class='dropdown-content'>";
																		if ($key["Estado"] == 0) {
																			echo "<li><a href='javascript:void(0)' onclick='estadoVisto(".'"'.$key["FechaEntrega"].'","'.$key["IdUsuario"].'","'.$key["Estado"].'"'.")'>Visto</a></li>";
																		}else{
																			echo"<li><a href='javascript:void(0)' onclick='estadoVisto(".'"'.$key["FechaEntrega"].'","'.$key["IdUsuario"].'","'.$key["Estado"].'"'.")'>Pendiente</a></li>";
																		}
																	echo "</ul>
																</td>	
														</tr>
													";
													}
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
</main>

<div id="modalPreventa" class="modal modal-fixed-footer">
    <div class="modal-content">
    	<div class="row">
    		<div class="col s12 m12 l12">
    			<h5 class="center">Fecha Entrega: <span id="hFecha"></span></h5>
    		</div>
    		<div class="col s6 m6 l6 center">
    			<h5 class="">Vendedor: <span id="hVendedor"></span></h5>
    		</div>
    		<div class="col s6 m6 l6 center">
    			<h5 class="">Ruta: <span id="hRuta"></span></h5>
    		</div>
    	</div>
		  <div class="row">
		  	<div class="col s12 m12 l12">
		  		<table id="tblEditarPrev" class="table striped">
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
       		<a href="javascript:void(0)" id="btnUpdateOrPrev" onclick="actualizarOrdenPrev()"  class="waves-effect waves-light btn btn-blue">Actualizar</a>
      		<a href="javascript:void(0)" class="modal-close waves-effect waves-light btn btn-red">Cancelar</a>
       </div>
    </div>
  </div>
