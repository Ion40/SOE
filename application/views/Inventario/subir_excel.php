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
						<h5 class="titulosGen" style="color:black;">Cargar nuevo inventario</h5>
						<br>
						
			            <div class="row">
			            <form action="'."cargarProd".'" id="formCargaProducto" enctype="multipart/form-data" method="post" name="formCargaProducto">
							<div class=" col s6 m4 l4">
								<label for="">Selecciona una fecha</label>
								<input type="text" class="center datepicker" id="fecha" name="fecha">
							</div>
							<div class="col s6 m4 l4">
								<div class="file-field input-field">
									<div class="btn">
										<span>
											<i class="material-icons">file_upload</i>
										</span>
										<input type="file" id="dataProducto" name="dataProducto">
									</div>
									<div class="file-path-wrapper">
										<input class="file-path validate" type="text">
									</div>
								</div>
			                </div>
			                </form>
							<div class="col s6 m4 l2">
								<button id="btnCargaProd" class="btn btn-blue btn-block waves-effect waves-light">Subir Archivo</button>
							</div>
			            </div>
					';	

					echo '
  						<div class="alert-warning" role="alert">
  				 <p class="text-left" style="font-weight: bold; margin-top: -3px">
  				    <i class="left material-icons">info</i> Importante!
  				 </p>
  				 <p style="text-align: justify;">
  				 	Antes de subir un nuevo archivo excel asegurese que los nombres o descripción
  				 	de los artículos no contengan comas (,) ya que produciría un error en la carga del archivo
  				 </p>
            </div>
					';
				}				
			?>
            <br>
            <br>
            
			<h4 class="center" style="color:black;">Inventario físico de productos terminados</h4>
			<div class="Buscar row column noMargen">
				<div class="col s1 m1 l1 offset-l3 offset-m2">
					<i class="material-icons iconSearch">search</i>
				</div>
				<div class="input-field col s12 m6 l4">
					<input id="BuscarInventario" type="text" placeholder="Buscar">
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
								<table id="TblProducos" class="table striped">
									<thead>
										<?php
											if ($this->session->userdata("RolUser") == 6 || $this->session->userdata("RolUser") == 0) {
												echo '
												   <tr class="tblcabecera">
														<th>Codigo</th>
														<th>Descripción</th>
														<th>Grm</th>
														<th>Saldo</th>
														<th>Libras</th>
														<th>Acciones</th>
													</tr>
												';
											} else {
												echo '
												   <tr class="tblcabecera">
														<th>Codigo</th>
														<th>Descripción</th>
														<th>Grm</th>
														<th>Saldo</th>
														<th>Libras</th>
														<th>Estado</th>
													</tr>
												';
											}
											
										?>
									</thead>
									<tbody>
										<?php
											if (!$prod) {
											} else {
												foreach ($prod as $key) {
													switch ($key["Estado"]) {
														case "":
														$key["Estado"] = "";
														   break;

														case 0:
															$key["Estado"] = "<span style='font-weight: bold;' class='green-text'>Disponible</span>";
															break;
														
														case 1:
															$key["Estado"] = "<span style='font-weight: bold;' class='orange-text'>Parcial</span>";
															break;

														default:
														    $key["Estado"] = "<span style='font-weight: bold;' class='red-text'>Crítico</span>";
														  break;	
													}
													echo"
														<tr>
															<td>".$key["Codigo"]."</td>
															<td>".$key["Descripcion"]."</td>
															<td>
															  <p>".$key["GRM"]."</p>
															</td>
															<td>
															  <input id='codigoedit' name='codigoedit'  type='hidden' value=''>
															   <input type='text' name='editsaldo' class='editar".$key["Codigo"]."' id='editsaldo".$key["Codigo"]."' style='display:none;' value=".$key["Saldo"].">
															   <p class='ocult".$key["Codigo"]."'>".number_format($key["Saldo"],2)."</p>
															</td>
															<td>
															<input type='text' name='editlibras' class='editar".$key["Codigo"]."' id='editlibras".$key["Codigo"]."' style='display:none;' value=".$key["Libras"].">
															<p class='ocult".$key["Codigo"]."'>".$key["Libras"]."</p></td>";
																if ($this->session->userdata("RolUser") == 2
																	|| $this->session->userdata("RolUser") == 3 || $this->session->userdata("RolUser") == 4
																	|| $this->session->userdata("RolUser") ==5  || $this->session->userdata("RolUser") == 7
																	|| $this->session->userdata("RolUser") == 8) {
																	echo "<td class='center'>".$key["Estado"]."</td>";
																}
																if ($this->session->userdata("RolUser") == 6 || $this->session->userdata("RolUser") == 0) {
																	echo "
																	<td class='center'>
																	<a href='javascript:void(0)' id=".$key["Codigo"]." onclick='editar(".$key["Codigo"].")'><i class='material-icons'>edit</i></a>
																	<a href='javascript:void(0)'  id='update".$key["Codigo"]."' style='display:none;' class='update".$key["Codigo"]."'><i class='material-icons'>send</i></a>
																    <a href='javascript:void(0)' id='cancel".$key["Codigo"]."' style='display:none;' class='update".$key["Codigo"]."'><i class='material-icons'>cancel</i></a>
																</td>";
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
					<div class="row">
						<div class="container">
							<div class="col s8 m6 l4">
								<div class="card-panel hoverable">
									<div class="card-content">
										<span class="card-title">
											<p style="margin-top:-15px;" class="center">Total Inventario</p>
										</span>
										<p style="font-weight:bold; margin-bottom:-15px;" id="total" class="center">
											<?php
											  $total = 0;
												if (!$prod) {
													echo $total;
												} else {
													foreach ($prod as $key) {
														$total = $key["Total"];
													}
													echo number_format($total,2);
												}
											?>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</main>
<br>
