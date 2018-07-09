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
                                    NUEVA ORDEN DE ENTREGA (PREVENTA)
                                </h6>
                            </div>
							<div class="container">
								<div class="row ">
                                        <div class="input-field col s6 m6 l6">
                                            <label for="vendedor">Nombre vendedor</label>
                                            <input type="text" name="vendedor" id="vendedor">
                                        </div>
                                        <div class="input-field col s6 m6 l6">
                                            <label for="fechaentrega">Fecha entrega</label>
                                            <input type="text" name="fechaentrega" class="datepicker" id="fechaentrega">
                                        </div>
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
					<input id="txtBuscar1" type="text" placeholder="Buscar">
					<label for="search"></label>
				</div>
			</div>
			<!--/////////////////////////////////////////////////////////////////////////////////////////
                                       BOTONES
        //////////////////////////////////////////////////////////////////////////////////////////-->
			<div class="row">
				<div class="col s6 m6 l6" style="text-align:left;">
                <div id="retornarP">
                     <a data-tooltip='REGRESAR' href="Preventas" class="purple-text darken-1 tooltipped">
                        <i class="waves-effect waves-light material-icons titulosGen">keyboard_backspace</i>
                    </a>
                </div>  
            </div>
            <div class="row">
                    <div class="col s12 m12 l6">
                        <a href="#" onclick="guardar()" id="GuardarPreventa" class="btn btn-block btn-blue waves-effect waves-light hoverable right">Guardar</a>      
                    </div>       
                </div>
				<div class="col s12 m12 l12" >
					<div class="card">
						<div class="card-content">
							<div class="div-cont">
                            <div class="row">
                                <div class="col s6 m6 l3 right">
                                    <select name="Rutas" id="Rutas" class="browser-default chosen-select">
                                        <option disabled selected>Seleccione una ruta</option>
                                        <?php
                                            if (!$rutas) {
                                            } else {
                                                foreach($rutas as $key){
                                                    echo "
                                                        <option value=".$key["Rutas"].">Ruta# ".$key["Rutas"]."</option>
                                                    ";
                                                }
                                            }
                                            
                                        ?>
                                    </select>
                                </div>   
                                <div class="col s3 m3 l3 left">
                                    <p>Total Pedido (lbs): <span id="totallbs"></span></p>
                                </div>    
                            </div>
								<div>
                                    <table id="tblNuevaPreventa" class="table striped" style="height:20px !important;">
                                        <thead>
                                            <tr class="tblcabecera">
                                                <th>Codigo</th>
                                                <th>Productos</th>
                                                <th>GR/lb</th>
                                                <th>Unidades</th>
                                                <th>LBS</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <?php
                                                if (!$prod) {
                                                } else {
                                                    foreach ($prod as $key) {
                                                        echo "
                                                            <tr>
                                                                <td>".$key["Codigo"]."</td>
                                                                <td>".$key["Descripcion"]."</td>
                                                                <td>".$key["GRM"]."</td>
                                                                <td style='width:10%;' ><input  id='unid".$key["Codigo"]."' type='text' class='text browser-default' name='unidades'></td>
                                                                <td style='width:10%;' class='sum'><input name='libras' type='text' readonly class='text1 browser-default' id='lbs".$key["Codigo"]."'></td>
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
