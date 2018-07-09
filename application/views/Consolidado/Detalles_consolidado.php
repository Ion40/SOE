<!--//////////////////////////////////////////////////////////
                CONTENIDO
///////////////////////////////////////////////////////////-->
<main class="mdl-layout__content mdl-color--grey-100">
	<div class="contenedor">
		<div class="container">
        <div class="col s12 m12 l12">
					 <h5 class="center" style="margin-top:20PX;font-weight:bold;">
                        <?php
                             $cabecera;
                                if ($detalle) {
                                    foreach ($detalle as $key) {
                                      $cabecera = $key;
                                    }
                                echo " DETALLE CONSOLIDADO FECHA ENTREGA ".$cabecera["FechaEntrega"];
                            }
                         ?> 
                    </h5>
				</div>

			<br>
            <br>
			<div class="Buscar row column noMargen">
				<div class="col s1 m1 l1 offset-l3 offset-m2">
					<i class="material-icons iconSearch">search</i>
				</div>
				<div class="input-field col s12 m6 l4">
					<input id="txtBuscarConsDet" type="text" placeholder="Buscar">
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
                                        if ($detalle) {
                                            foreach ($detalle as $key) {
                                                $suma+=$key["LBS"];
                                            }
                                            echo "<p style='padding:10px 15px;' class='hoverable'>Total Pedido (lbs): <span>".number_format($suma,2)."</span></p>";
                                        }
                                   ?> 
                                </div>    
                            </div>
								<div>
                                    <table id="tblDetCons" class="table striped" style="height:20px !important;">
                                        <thead>
                                            <tr class="tblcabecera">
                                                <th>Codigo</th>
                                                <th>Productos</th>
                                                <th>GRM</th>
                                                <th>Unidades</th>
                                                <th>LBS</th>
                                                <th>Saldo</th>
                                                <th>Saldo Actual</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                                                if (!$detalle) {
                                                } else {
                                                    foreach ($detalle as $key) {
                                                        echo "
                                                            <tr>
                                                                <td>".$key["Codigo"]."</td>
                                                                <td>".$key["Descripcion"]."</td>
                                                                <td>".$key["GRM"]."</td>
                                                                <td>".$key["Unidades"]."</td>
                                                                <td>".$key["LBS"]."</td>
                                                                <td>".$key["Saldo"]."</td>
                                                                <td>".$key["SaldoRestante"]."</td>
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