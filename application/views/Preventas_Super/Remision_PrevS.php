<!doctype html>
<html lang="es">
<head>
	<meta>
	<title></title>
	<link rel="shortcut icon" id="icon" href="" />
	<script type="text/javascript" id="jq" src=""></script>
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
			width: 1000px;
			margin: 0 auto;
			margin-bottom: 5px;
		}
		table th,td{
			text-align: center;
			border: 1px solid black;
		}
		.encabezado{
			margin:0;
			padding: 0;
			font-weight:800;
		}

		.negrita{
			font-weight:700;
			text-align:left;
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
			width: 90%;
		}
	</style>
	<script>
		$(document).ready(function(){
			window.print();
		})
	</script>
</head>

<body onload="window.print()">
<?php
date_default_timezone_set("America/Managua");
setlocale(LC_ALL,'Spanish_Nicaragua');
?>
<div class="contenedor">
	<div class="contenedor-secundario">
		<table class="table-produccion">
			<thead>
			<tr>
				<td rowspan="3" id="img">
					<img width="150px" id="img1" src="" alt="">
				</td>
				<td class="encabezado" colspan="13">Industrias delmor S.A.</td>
			</tr>
			<tr>
				<td class="encabezado" colspan="13">Gerencia de mercadeo y ventas</td>
			</tr>
			<tr>
				<td class="encabezado" colspan="13">Orden de entrga y devolucion de productos ISO-Venta-03-01
					<span id="consecutivo" style="font-size:11pt;">
                       <p style="font-size: 12px;"> Consecutivo:</p>
						<?php
						if(!$cons) {
						}else{
							foreach ($cons as $con) {
								echo $con["Valor"]."-R#".$con["Ruta"].
									str_replace("-","",
										date_format(new DateTime($con["FechaEntrega"]),
											"d-m-Y"));
							}
						}
						?>
                    </span> </td>
			</tr>
			<tr>
				<td colspan="1" class="negrita">Nombre del vendedor</td>
				<td colspan="7"><span style="font-size:11pt;"><?php
						if (!$datos) {
						} else {
							foreach ($datos as $key) {
							}
							echo "".$key["Vendedor"]."";
						}
						?></span></td>
			</tr>
			<tr>
				<td colspan="1" class="negrita" style="width:200px;">Ruta/Zona</td>
				<td colspan="7"><span style="font-size:11pt;"><?php
						if (!$datos) {
						} else {
							foreach ($datos as $key) {
							}
							echo "RUTA# ".$key["Ruta"]."";
						}
						?></span></td>
			</tr>
			<tr>
				<td colspan="1" class="negrita">Fecha</td>
				<td><span style="font-size:11pt;"><?php
						if (!$datos) {
						} else {
							foreach ($datos as $key) {
							}
							echo "".strftime("%A %d de %B del %Y",strtotime($key["FechaEntrega"]))."";
						}
						?></span></td>
				<td class="negrita"> Preparado por </td>
				<td><?php echo $this->session->userdata("NameU")?></td>
			</tr>
			</thead>
			<tbody>

			</tbody>
		</table>
	</div>

	<br><br>

	<div class="contenedor-secundario">
		<table class="table-produccion">
			<thead>
			<tr>
				<th colspan="3" class="black">PEDIDO</th>
				<th colspan="4" class="black">CANT. DESPACHO</th>
				<th></th>
				<th colspan="5" class="black">CANT. DEVUELTAS</th>
			</tr>
			<tr class="encabezado">
				<td>CODIGO</td>
				<td>UNID</td>
				<td>LBS</td>
				<td>LOTE 1</td>
				<td>CANT. <br> LOTE 1</td>
				<td>LOTE 2</td>
				<td>CANT. <br> LOTE 2</td>
				<td>PRODUCTOS</td>
				<td>GR/lb</td>
				<td>LOTE 1</td>
				<td>CANT.  <br> LOTE 1</td>
				<td>LOTE 2</td>
				<td>CANT. <br> LOTE 2</td>
			</tr>
			</thead>
			<tbody>
			<?php
			if (!$datos) {
			} else {
				foreach ($datos as $key) {
					echo "
                                        <tr>
                                            <td>".$key["Codigo"]."</td>
                                            <td>".number_format($key["Unidades"],2)."</td>
                                            <td>".number_format($key["LBS"],2)."</td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td style='text-align:left;'>".$key["Descripcion"]."</td>
                                            <td>".number_format($key["GR/lb"],2)."</td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                    ";
				}
			}

			?>
			</tbody>
		</table>
	</div>

	<div class="contenedor-secundario">
		<table class="table-produccion" style="width:20% !important; float:left; margin-left:14.8%; margin-top:5vh;">
			<thead>
			</thead>
			<tbody>
			<tr>
				<td style="width:180px;">TOTAL PEDIDO <br>(lbs)</td>
				<?php
				$suma = 0;
				if (!$datos) {
				} else {
					foreach ($datos as $key) {
						$suma+=$key["LBS"];
					}
					echo "
                                        <td style='width:100px;'>".number_format($suma,2)."</td>
                                    ";
				}
				?>
			</tr>
			</tbody>
		</table>
	</div>
	<div class="contenedor-secundario">
		<table class="table-produccion" style="width:20% !important; float:right; margin-right:14.8%; margin-top:5vh;">
			<thead>
			</thead>
			<tbody>
			<tr>
				<td style="width:100px;">TOTAL <br> DEVOLUCION</td>
				<td style="width:100px;"></td>
			</tr>
			</tbody>
		</table>
	</div>

	<div id="footer">
		<table class="container" style="">
			<tr>
				<td style="text-align:right; padding-right:10px; padding:10px 10px;">ENTREGUE CONFORME DESPACHO:</td>
				<td style="width:550px;"></td>
			</tr>
			<tr>
				<td style="text-align:right; padding-right:10px; padding:10px 10px;">RECIVIDO CONFORME VENDEDOR:</td>
				<td></td>
			</tr>
			<tr>
				<td style="text-align:right; padding-right:10px; padding:10px 10px;">AUTORIZADO CONFORME G. DE VENTAS:</td>
				<td></td>
			</tr>
			<tr>
				<td style="text-align:right; padding-right:10px; padding:10px 10px;">CAJAS RECIBIDAS:</td>
				<td></td>
			</tr>
			<tr>
				<td style="text-align:right; padding-right:10px; padding:10px 10px;">CAJAS ENTREGADAS:</td>
				<td></td>
			</tr>
			<tr>
				<td style="text-align:right; padding-right:10px; padding:10px 10px;">PREPARADOR POR:</td>
				<td></td>
			</tr>
		</table>
	</div>
</div>
</div>
</body>

</html>
<script>
	document.getElementById("icon").href = "http://localhost:8080/SOE/assets/img/logo.png";
	document.getElementById("jq").src = "http://localhost:8080/SOE/assets/js/jquery-2.1.1.min.js";
	document.getElementById("img1").src = "http://localhost:8080/SOE/assets/img/delmor.png";
</script>
