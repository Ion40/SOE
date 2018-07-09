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
                 Nuevo Consolidado
            </h3>
		</div>
			<br>
			<br>
			<a data-tooltip="REGRESAR" href="Consolidado" class="purple-text darken-1 tooltipped">
				<i class="waves-effect waves-light material-icons titulosGen">keyboard_backspace</i>
			</a>
			<br>
			<br>
			<!--/////////////////////////////////////////////////////////////////////////////////////////
                                       BOTONES
        //////////////////////////////////////////////////////////////////////////////////////////-->
			<div class="row">
				<div class="col s12 m12 l12">
					<ul class="tabs">
						<li class="tab col s4 m4 l4"><a class="active" href="#Orders">Ordenes</a></li>
						<li class="tab col s4 m4 l4"><a  href="#PrevOrders">Preventas</a></li>
						<li class="tab col s4 m4 l4"><a href="#General">Unificado</a></li>
					</ul>
				</div>
				<div id="Orders" class="col s12">
					<br><br>
					<div class="row">
						<div class="row">
							<div class="col s4 m4 l4">
								<label for="">Selecciona una fecha</label>
								<select name="DateChooseOrder" id="DateChooseOrder" class="browser-default chosen-select">
									<option  disabled selected></option>
									<?php
									if (!$fechas) {
									} else {
										foreach ($fechas as $key) {
											echo "
											<option value='".$key["FechaEntrega"]."'>".$key["FechaEntrega"]."</option>
                       	  				";
										}
									}

									?>
								</select>
							</div>
							<div class="col s6 m6 l6 right">
								<a href="#" id="btnConsOrders" class=" btn btn-block btn-blue waves-effect waves-light hoverable right">
									Procesar
								</a>
							</div>
						</div>
						<div class="col s12 m12 l12">
							<div class="">
								<div class="">
									<div class="div-cont">
										<table id="tblNewConsOrder" class="table striped">
											<thead>
											<tr class="tblcabecera">
												<th>Codigo</th>
												<th style="width: 200px;">Descripcion</th>
												<th>GRM</th>
												<th>Saldo</th>
												<th>Saldo Restante</th>
												<th>Unidades <br> Pedidas</th>
												<th>LBS</th>
												<th>Estado</th>
												<th>FechaEntrega</th>
												<th class="center tooltipped" data-tooltip="Aplicar todos" data-position="right">
													<p>
														<label>
															<input onclick="checkAllO()" type="checkbox" class="filled-in" id="checkAllO" />
															<span></span>
														</label>
													</p>
												</th>
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
				<div id="PrevOrders" class="col s12">
					<br><br>
					<div class="row">
						<div class="row">
							<div class="col s4 m4 l4">
								<label for="">Selecciona una fecha</label>
								<select name="datechoose" id="datechoose" class="browser-default chosen-select">
									<option  disabled selected></option>
									<?php
									if (!$fechas) {
									} else {
										foreach ($fechas as $key) {
											echo "
											<option value='".$key["FechaEntrega"]."'>".$key["FechaEntrega"]."</option>
                       	  				";
										}
									}

									?>
								</select>
							</div>
							<div class="col s6 m6 l6 right">
								<a href="#" id="btnConsPrev" class=" btn btn-block btn-blue waves-effect waves-light hoverable right">Procesar</a>
							</div>
						</div>
						<div class="col s12 m12 l12">
							<div class="">
								<div class="">
									<div class="div-cont">
										<table id="tblConsPreventa" class="table striped">
											<thead>
											<tr class="tblcabecera">
												<th>Codigo</th>
												<th style="width: 200px;">Descripcion</th>
												<th>GRM</th>
												<th>Saldo</th>
												<th>Saldo Restante</th>
												<th>Unidades <br> Pedidas</th>
												<th>LBS</th>
												<th>Estado</th>
												<th>FechaEntrega</th>
												<th class="center tooltipped" data-tooltip="Aplicar todos" data-position="right">
													<p>
														<label>
															<input onclick="checkAllP()" type="checkbox" class="filled-in" id="checkAllP" />
															<span></span>
														</label>
													</p>
												</th>
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
				<div id="General" class="col s12">
					<!-- Consolidado General -->
					<br><br>
					<div class="row">
						<div class="row">
							<div class="col s4 m4 l4">
								<label for="">Selecciona una fecha</label>
								<select name="FechaFilter" id="FechaFilter" class="browser-default chosen-select">
									<option  disabled selected></option>
									<?php
									if (!$fechas) {
									} else {
										foreach ($fechas as $key) {
											echo "
											<option value='".$key["FechaEntrega"]."'>".$key["FechaEntrega"]."</option>
                       	  				";
										}
									}

									?>
								</select>
							</div>
							<div class="col s6 m6 l6 right">
								<a href="#" id="btnprocesarOrden" class=" btn btn-block btn-blue waves-effect waves-light hoverable right">Procesar</a>
							</div>
						</div>
						<div class="col s12 m12 l12">
							<div class="">
								<div class="">
									<div class="div-cont">
										<table id="tblNuevoConsolidado" class="table striped">
											<thead>
											<tr class="tblcabecera">
												<th>Codigo</th>
												<th style="width: 200px;">Descripcion</th>
												<th>GRM</th>
												<th>Saldo</th>
												<th>Saldo Restante</th>
												<th>Unidades <br> Pedidas</th>
												<th>LBS</th>
												<th>Estado</th>
												<th>FechaEntrega</th>
												<th class="center tooltipped" data-tooltip="Aplicar todos" data-position="right">
													<p>
														<label>
															<input onclick="checkAll()" type="checkbox" class="filled-in" id="checkAll" />
															<span></span>
														</label>
													</p>
												</th>
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

		</div>
	</div>
</main>

<div id="ProcesarLoad" class="modal">
    <div class="modal-content">
      <div class="center">
      	<div class="preloader-wrapper big active">
	    <div class="spinner-layer spinner-blue-only">
	      <div class="circle-clipper left">
	        <div class="circle"></div>
	      </div><div class="gap-patch">
	        <div class="circle"></div>
	      </div><div class="circle-clipper right">
	        <div class="circle"></div>
	      </div>
	    </div>
	  </div>
	  <p class="center">Procesando</p>
      </div>
    </div>
  </div>
