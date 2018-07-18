<!doctype html>
<html lang="es">
<head>
	<meta>
	<title></title>
	<link rel="shortcut icon" href="<?php echo base_url(); ?>assets/img/logo.png" />
	<script type="text/javascript" src="<?php echo base_url('assets/js/jquery-2.1.1.min.js')?>"></script>
	<style>
		#footer {
			padding: 30px 30px;
			width:1000px;
			height: auto;
			margin: 0 auto;
			font-family: 'arial'!important;
			text-transform: uppercase!important;
			margin-top:14vh;
		}
		.footer {
			margin-top: 80px;
		}
		.footer tr td {
			width: 50%;
			text-align: center;
			padding: 5px 5px;
			border: none;
		}
		table {
			color: black;
			font-size: 11.3pt;
			font-weight:bold;
			font-family: 'arial'!important;
			text-transform: uppercase!important;
			border-collapse: collapse;
			width: 1031px;
			margin: 0 auto;
			margin-bottom: 5px;
		}
		table th,td{
			text-align: center;
			border: 1px solid black;
			padding:2px 2px ;
		}
		.encabezado{
			margin:0;
			padding: 0;
			font-weight:800;
		}

		.encabezado_tabla{
			margin:0;
			padding: 10px 10px;
			font-weight:800;
		}

		.negrita{
			font-weight:900;
		}

		/*.contenedor {
			width: 80%;
			height: 100%;
			margin: 0 auto;
			border: 1px solid black;
			border-radius: 2px;
			padding: 2px 2px;
        }*/

		span {
			text-transform: uppercase!important;
			font-weight: bold;
			font-size: 10px;
			margin-left:20%;
		}

		#img{
			border:none;
			width:20px;
		}
		/* .contenedor {
			width: 98%;
			height: 100%;
			margin: 0 auto;
			border: 1px solid black;
			border-radius: 2px;
			padding: 2px 2px;
        } */

		.black{
			background-color:grey;
			color:white;
			font-weight:bold;
		}

		#consecutivo{
			margin-left:-90px;
			float:right;
			margin-right:20px;
			border-left:1px solid black;
			padding-left:5px;
			font-size: 12px !important;
			line-height: 0.5;
			text-align:center;
		}

		.container{
			margin: 0 auto;
			max-width: 1280px;
			width: 80%;
		}

	</style>
	<script>
		$(document).ready(function(){
			window.print();
		})
	</script>
</head>

<body>
<?php
date_default_timezone_set("America/Managua");
setlocale(LC_ALL,'Spanish_Nicaragua');
?>
<div class="contenedor">
	<div class="contenedor-secundario">
		<table class="table-produccion" >
			<thead>
			<tr>
				<td rowspan="3" id="img">
					<img width="150px" id="img1" src="<?php echo base_url()?>assets/img/delmor.png" alt="">
				</td>
				<td class="encabezado" colspan="13">
					Industrias delmor S.A. <br><br>
					Consolidado Total <br><br>
						<?php
						if (!$cons) {
						} else {
							foreach ($cons as $key) {
							}
							echo "".strftime("%d de %B de %Y",strtotime($key["Fecha"]))."";
						}
						?>
				</td>
			</tr>
			</thead>
			<tbody>

			</tbody>
		</table>
	</div>
	<div class="contenedor-secundario">
		<table class="" width="">
			<thead>
			<tr class="">
				<th class="encabezado_tabla">Codigo</th>
				<th class="encabezado_tabla">Productos</th>
				<th class="encabezado_tabla">GR</th>
				<th class="encabezado_tabla">Total</th>
				<th class="encabezado_tabla">Libras</th>
			</tr>
			</thead>
			<tbody>
				<?php
				   if(!$cons)
				   {
				   	echo "NO HAY DATOS DISPONIBLES ";
				   }else{
					   foreach ($cons as $con) {
						   echo "<tr>
								  <td>".$con["Codigo"]."</td>
								  <td>".$con["Descripcion"]."</td>
								  <td>".$con["GRM"]."</td>
								  <td class='negrita'>".number_format($con["Total"],2)."</td>
								  <td>".number_format($con["Libras"],2)."</td>	
								</tr>		
 								";
				   		}
				   }
				?>
			</tbody>
			<tfooter>
					<?php
					$sumTotal = 0;
					$sumLibras = 0;
					if(!$cons)
					{
						echo "NO HAY DATOS DISPONIBLES ";
					}else{
						foreach ($cons as $con) {
							$sumTotal += $con["Total"];
							$sumLibras += $con["Libras"];
						}
						echo "<tr>
								  <th></th>
								  <th></th>
								  <th></th>
								  <th class='negrita'>".number_format($sumTotal,2)."</th>
								  <th class='negrita'>".number_format($sumLibras,2)."</th>	
								</tr>		
 								";
					}
					?>
			</tfooter>
		</table>
	</div>
</div>
</div>
</body>

</html>
