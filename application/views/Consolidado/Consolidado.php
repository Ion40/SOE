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
        	<h3 class="center" style="margin-top:;font-weight:bold;">
                 Lista de Consolidados
            </h3>
		</div>

			<br>
            <br>
			<div class="Buscar row column noMargen">
				<div class="col s1 m1 l1 offset-l3 offset-m2">
					<i class="material-icons iconSearch">search</i>
				</div>
				<div class="input-field col s12 m6 l4">
					<input id="BuscarConsolidado" type="text" placeholder="Buscar">
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
						  	  <a href="NuevoConsolidado" id="nuevoConsolidado" 
						  	    class="btn btn-block btn-blue waves-effect waves-light hoverable right">
						  	  Nuevo</a>		
						  	';
						  }
						?>
                    </div>       
                </div>
				<div class="col s12 m12 l12">
					<div class="card">
						<div class="card-content">
							<div class="div-cont">
								<table id="tblConsolidado" class="table striped">
									<thead>
										<tr class="tblcabecera">
											<th class="center">Fecha Entrega</th>
											<th class="center">Unidades</th>
											<th class="center">LBS</th>
											<th class="center">Fecha Creacion</th>
											<th>Detalles</th>
										</tr>
									</thead>
									<tbody>
										<?php
											if (!$cons) {
											} else {
												foreach ($cons as $key){
													echo "
														<tr>
															<td class='center'>".$key["FechaEntrega"]."</td>
															<td class='center'>".number_format($key["Unidades"],2)."</td>
															<td class='center'>".number_format($key["LBS"],2)."</td>
															<td class='center'>".$key["FechaCreacion"]."</td>
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
