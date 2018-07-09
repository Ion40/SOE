

<!--//////////////////////////////////////////////////////////
                CONTENIDO
///////////////////////////////////////////////////////////-->
<main class="mdl-layout__content mdl-color--grey-100">
	<div class="contenedor">
		<div class="container">
			<p class="left" style="margin-top:-50px;">
				<img src="<?php echo base_url('assets/img/delmor.png');?>" class="center" width="200px">
			</p>
			<h3 class="center">Bienvenido a SOE</h3>
			<br>
			<br>
			<div class="row">
				<div class="col s12 m12 l12">
					<div class="col s12 m12 l12 left">
						<div id="myChart1" style="width:100%; height:400px;">
							<?php
								/*if ($masVend) {
								include(APPPATH."libraries\googchart\GoogChart.class.php");
								$chart = new GoogChart();

									$data = array(
												''.$masVend[0]["Descripcion"].'' => $masVend[0]["Codigo"],
												''.$masVend[1]["Descripcion"].'' => $masVend[1]["Codigo"],
												''.$masVend[2]["Descripcion"].'' => $masVend[2]["Codigo"],
												''.$masVend[3]["Descripcion"].'' => $masVend[3]["Codigo"],
												''.$masVend[4]["Descripcion"].'' => $masVend[4]["Codigo"],
												''.$masVend[5]["Descripcion"].'' => $masVend[5]["Codigo"],
												''.$masVend[6]["Descripcion"].'' => $masVend[6]["Codigo"],
												''.$masVend[7]["Descripcion"].'' => $masVend[7]["Codigo"],
												''.$masVend[8]["Descripcion"].'' => $masVend[8]["Codigo"],
												''.$masVend[9]["Descripcion"].'' => $masVend[9]["Codigo"],
											);

									// Set graph colors
									$color = array(
												'#99C754',
												'#54C7C5',
												'#999999',
											);

									/* # Chart 1 # */
									/*$chart->setChartAttrs( array(
										'type' => 'pie',
										'title' => 'Top 10 Productos más vendidos',
										'data' => $data,
										'size' => array( 800, 300 ),
										'color' => $color
										));
									// Print chart
									echo $chart;
								}*/

								?>
						</div>
					</div>	
					<br>
					<br>
					<br>
					<div class="col s12 m12 l12">
						<div id="myChart" style="width:100%; height:400px;">
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</main>
<br>																		