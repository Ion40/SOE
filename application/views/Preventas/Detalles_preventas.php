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
                                        if ($ordenesDet) {
                                            foreach ($ordenesDet as $key) {
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
                                        if ($ordenesDet) {
                                            foreach ($ordenesDet as $key) {
                                                $cabecera = $key;
                                            }
                                            echo '
                                                <div class="col s4 m4 l4">
                                                    <span class="">Nombre vendedor</span>: <span>'.$cabecera["Vendedor"].'</span>
                                                </div>
                                                <div class="center col s4 m4 l4">
                                                    <span>Ruta</span>: <span>'.$cabecera["Ruta"].'</span>
                                                </div>
                                                <div class="col s4 m4 l4">
                                                    <span>Fecha</span>: <span>'.$cabecera["FechaEntrega"].'</span>
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
					<input id="BuscarDetPrev" type="text" placeholder="Buscar">
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
                                        if ($ordenesDet) {
                                            foreach ($ordenesDet as $key) {
                                                $suma+=$key["LBS"];
                                            }
                                            echo "<p style='padding:10px 15px;' class='hoverable'>Total Pedido (lbs): <span>".number_format($suma,2)."</span></p>";
                                        }
                                   ?> 
                                </div>    
                            </div>
								<div>
                                    <table id="tblDetOrPrev" class="table striped" style="height:20px !important;">
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
                                                if (!$ordenesDet) {
                                                } else {
                                                    foreach ($ordenesDet as $key) {
                                                        echo "
                                                            <tr>
                                                                <td>".$key["Codigo"]."</td>
                                                                <td>".$key["Descripcion"]."</td>
                                                                <td>".$key["GR/lb"]."</td>
                                                                <td>".number_format($key["Unidades"],2)."</td>
                                                                <td>".number_format($key["LBS"],2)."</td>
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