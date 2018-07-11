<script>

	$("#DateChooseOrderS").change(function(){
		$("#checkAllOS").prop("checked",false);
		$("#tblNewConsOrderS").DataTable({
			"ajax": "NewConsolidadoOrderS/"+$(this).val(),
			responsive:true,
			"autoWidth":false,
			"info": true,
			"sort":false,
			"destroy": true,
			"paging": false,
			"pagingType": "full_numbers",
			"lengthMenu": [
				[5,10,50,100, -1],
				[5,10,50,100, "Todo"]
			],
			"language": {
				"info": "Registro _START_ a _END_ de _TOTAL_ entradas",
				"infoEmpty": "Registro 0 a 0 de 0 entradas",
				"zeroRecords": "No se encontro coincidencia",
				"infoFiltered": "(filtrado de _MAX_ registros en total)",
				"emptyTable": "NO HAY DATOS DISPONIBLES",
				"lengthMenu": '_MENU_ ',
				"search": '<i class=" material-icons">search</i>',
				"loadingRecords": " <div class='progress'>"+
				"<div class='indeterminate'></div>"+
				"</div>",
				"paginate": {
					"first": "Primera",
					"last": "Última ",
					"next": "Siguiente",
					"previous": "Anterior"
				}
			},
			"columns": [
				{ "data": "Codigo" },
				{ "data": "Descripcion" },
				{ "data": "GRM" },
				{ "data": "Saldo" },
				{ "data": "cam2"},
				{ "data": "Unidades_Pedidas" },
				{ "data": "LBS" },
				{ "data": "Estado" },
				{ "data": "FechaEntrega" },
				{ "data": "Cam1"}
			]
		});
	});

	function Duplicados(codigo, fechaEntrega, tipo){
		$.ajax({
			url: "repetidosS/"+codigo+"/"+fechaEntrega+"/"+tipo,
			type: "POST",
			success: function(data){
				if (data == "existe") {
					swal({
						allowOutsideClick: false,
						text: "Ya existe un consolidado con fecha "+fechaEntrega+" ",
						type: "info"
					}).then(function () {
						switch (tipo){
							case "U":
								$("#btnprocesarOrdenS").hide();
								break;
							case "P":
								$("#btnConsPrevS").hide();
								break;
							case "O":
								$("#btnConsOrderS").hide();
								break;
						}
					});
				}else{
					switch (tipo){
						case "U":
							$("#btnprocesarOrdenS").show();
							break;
						case "P":
							$("#btnConsPrevS").show();
							break;
						case "O":
							$("#btnConsOrderS").show();
							break;
					}
				}
			}
		});
	}

	function incrementarLlave(tipo,fecha){
		var form = {
			tipo: tipo,
			fecha: fecha
		};
		$.ajax({
			url:"remisionConsolidado",
			type: "POST",
			data: form,
			success:function(data){
				if(true){
					console.log(form);
				}
			}
		});
	}

	function verificarOS(posicion,cod)
	{
		var restante = 0;
		var saldo = $("#tblNewConsOrderS").DataTable().row(posicion).data().Saldo;
		var unidades = $("#tblNewConsOrderS").DataTable().row(posicion).data().Unidades_Pedidas;
		var fecha = $("#tblNewConsOrderS").DataTable().row(posicion).data().FechaEntrega;

		if ($("#chkos"+cod).is(":checked")) {
			Duplicados(cod,fecha,"O");

			restante = saldo - unidades;
			$("#restos"+cod).html(restante);
			if (restante < 0) {
				$("#restos"+cod).css("color","red");
				$("#estadoOS"+cod).val("2");
			}
		}else{
			$("#restos"+cod).html(0);
			$("#restos"+cod).css("color","black");
			$("#estadoOS"+cod).val("");
		}
	}

	function checkAllOS()
	{
		var linea = 0;
		var disponible = 0;
		if ($("#checkAllOS").is(":checked",true)) {
			ofact = $("#tblNewConsOrderS").DataTable();
			ofact.rows().data().each(function (index,value) {

				var cod = $("#tblNewConsOrderS").DataTable().row(linea).data().Codigo;
				var fecha = $("#tblNewConsOrderS").DataTable().row(linea).data().FechaEntrega;
				$("#chkos"+cod).prop("checked",true);

				if ($("#chkos"+cod).is(":checked")) {
					Duplicados(cod,fecha,"O");

					var saldo = $("#tblNewConsOrderS").DataTable().row(linea).data().Saldo;
					var unidades = $("#tblNewConsOrderS").DataTable().row(linea).data().Unidades_Pedidas;
					disponible = saldo - unidades;
					$("#restos"+cod).html(disponible);
					if (disponible < 0) {
						$("#restos"+cod).css("color","red");
						$("#estadoOS"+cod).val("2");
					}
				}
				linea++;
			});
		}else{
			ofact = $("#tblNewConsOrderS").DataTable();
			ofact.rows().data().each(function (index,value) {
				var cod = $("#tblNewConsOrderS").DataTable().row(linea).data().Codigo;
				$("#chkos"+cod).prop("checked",false);
				if (!$("#chkos"+cod).is(":checked")) {
					$("#restos"+cod).html(0);
					$("#restos"+cod).css("color","black");
					$("#estadoOS"+cod).val("");
				}
				linea++;
			});
		}
	}

	$("#btnConsOrderS").on("click", function () {
		$("#ProcesarLoad").modal({dismissible : false});
		$("#ProcesarLoad").modal("open");
		var table = $("#tblNewConsOrderS").DataTable();
		var array = new Array();
		var i = 0;
		table.rows().eq(0).each(function (index) {
			var row = table.row(index);
			var data = row.data();
			if ($("#chkos"+data.Codigo).is(":checked",true)) {
				array[i] = data.Codigo+","+data.Descripcion+","+data.GRM+","+data.Unidades_Pedidas+","+data.LBS+","+data.FechaEntrega+","+data.Saldo+","+$("#restos"+data.Codigo).html()+","+$("#estadoOS"+data.Codigo).val();
				i++;
			}
		});
		var form_data = {
			consOS: array
		};

		$.ajax({
			url: "GuardarConsOS",
			type: "POST",
			data: form_data,
			beforeSend: function (data){
				if (!$(".AlloS").is(":checked")) {
					$("#ProcesarLoad").modal("close");
					swal({
						allowOutsideClick: false,
						text: "No se ha podido autorizar esta orden ya que los datos a procesar estan vacíos",
						type: "warning"
					});
					$.ajax.abort();
				}
			},
			success: function (data) {
				if(data != "") {
					var fecha = $("#DateChooseOrderS option:selected").val(); var tipo = "O";
					incrementarLlave(tipo,fecha);
					$("#ProcesarLoad").modal("close");
					swal({
						text: "Guardado con exito",
						type: "success",
						allowOutsideClick: false
					}).then(function () {
						location.href = "ConsolidadoS";
					});
				}
			},
			error: function () {
				swal({
					text: "Oops! Algo salio mal, no se pudo guardar el consolidado. Contáctece con el administrador",
					type: "error",
					allowOutsideClick: false
				});
				$("#ProcesarLoad").modal("close");
			}
		});
	});
/*********************************************************************************************************************/
	$("#datechoose").change(function () {
		$("#checkAllP").prop("checked",false);
		var id = $("#userid").val();
		$("#tblConsPreventa").DataTable({
			"ajax": "NewConsolidadoOrderPrevS/"+$(this).val()+"/"+id,
			responsive:true,
			"autoWidth":false,
			"info": true,
			"sort":false,
			"destroy": true,
			"paging": false,
			/* "dom": 'T<"clear">lfrtip',
             "tableTools": {
                 "sSwfPath": "<php// echo base_url(); ?>assets/data/swf/copy_csv_xls_pdf.swf",
                },*/
			"pagingType": "full_numbers",
			"lengthMenu": [
				[5,10,50,100, -1],
				[5,10,50,100, "Todo"]
			],
			"language": {
				"info": "Registro _START_ a _END_ de _TOTAL_ entradas",
				"infoEmpty": "Registro 0 a 0 de 0 entradas",
				"zeroRecords": "No se encontro coincidencia",
				"infoFiltered": "(filtrado de _MAX_ registros en total)",
				"emptyTable": "NO HAY DATOS DISPONIBLES",
				"lengthMenu": '_MENU_ ',
				"search": '<i class=" material-icons">search</i>',
				"loadingRecords": " <div class='progress'>"+
				"<div class='indeterminate'></div>"+
				"</div>",
				"paginate": {
					"first": "Primera",
					"last": "Última ",
					"next": "Siguiente",
					"previous": "Anterior"
				}
			},
			"columns": [
				{ "data": "Codigo" },
				{ "data": "Descripcion" },
				{ "data": "GRM" },
				{ "data": "Saldo" },
				{ "data": "cam2"},
				{ "data": "Unidades_Pedidas" },
				{ "data": "LBS" },
				{ "data": "Estado" },
				{ "data": "FechaEntrega" },
				{ "data": "Cam1"}
			]
		});
	});

	function verificarP(posicion,cod) {
		var restante = 0;
		var saldo = $("#tblConsPreventa").DataTable().row(posicion).data().Saldo;
		var unidades = $("#tblConsPreventa").DataTable().row(posicion).data().Unidades_Pedidas;
		var fecha = $("#tblConsPreventa").DataTable().row(posicion).data().FechaEntrega;

		if ($("#chkp"+cod).is(":checked")) {
			Duplicados(cod,fecha,"P");

			restante = saldo - unidades;
			$("#restp"+cod).html(restante);
			if (restante < 0) {
				$("#restp"+cod).css("color","red");
				$("#estadoP"+cod).val("2");
			}
		}else{
			$("#restp"+cod).html(0);
			$("#restp"+cod).css("color","black");
			$("#estadoP"+cod).val("");
		}
	}

	function checkAllP(){
		var linea = 0;
		var disponible = 0;
		if ($("#checkAllP").is(":checked",true)) {
			ofact = $("#tblConsPreventa").DataTable();
			ofact.rows().data().each(function (index,value) {

				var cod = $("#tblConsPreventa").DataTable().row(linea).data().Codigo;
				var fecha = $("#tblConsPreventa").DataTable().row(linea).data().FechaEntrega;
				$("#chkp"+cod).prop("checked",true);

				if ($("#chkp"+cod).is(":checked")) {
					Duplicados(cod,fecha,"P");

					var saldo = $("#tblConsPreventa").DataTable().row(linea).data().Saldo;
					var unidades = $("#tblConsPreventa").DataTable().row(linea).data().Unidades_Pedidas;
					disponible = saldo - unidades;
					$("#restp"+cod).html(disponible);
					if (disponible < 0) {
						$("#restp"+cod).css("color","red");
						$("#estadoP"+cod).val("2");
					}
				}
				linea++;
			});
		}else{
			ofact = $("#tblConsPreventa").DataTable();
			ofact.rows().data().each(function (index,value) {
				var cod = $("#tblConsPreventa").DataTable().row(linea).data().Codigo;
				$("#chkp"+cod).prop("checked",false);
				if (!$("#chkp"+cod).is(":checked")) {
					$("#restp"+cod).html(0);
					$("#restp"+cod).css("color","black");
					$("#estadoP"+cod).val("");
				}
				linea++;
			});
		}
	}

	$("#btnConsPrevS").on("click", function () {
		$("#ProcesarLoad").modal({dismissible : false});
		$("#ProcesarLoad").modal("open");
		var table = $("#tblConsPreventa").DataTable();
		var array = new Array();
		var i = 0;
		table.rows().eq(0).each(function (index) {
			var row = table.row(index);
			var data = row.data();
			if ($("#chkp"+data.Codigo).is(":checked",true)) {
				array[i] = data.Codigo+","+data.Descripcion+","+data.GRM+","+data.Unidades_Pedidas+","+data.LBS+","+data.FechaEntrega+","+data.Saldo+","+$("#restp"+data.Codigo).html()+","+$("#estadoP"+data.Codigo).val();
				i++;
			}
		});
		var form_data = {
			consPS: array
		};

		$.ajax({
			url: "GuardarConsPS",
			type: "POST",
			data: form_data,
			beforeSend: function (data){
				if (!$(".Allp").is(":checked")) {
					$("#ProcesarLoad").modal("close");
					swal({
						allowOutsideClick: false,
						text: "No se ha podido autorizar esta orden ya que los datos a procesar estan vacíos",
						type: "warning"
					});
					$.ajax.abort();
				}
			},
			success: function (data) {
				if(data != "") {
					var fecha = $("#datechoose option:selected").val(); var tipo = "P";
					incrementarLlave(tipo,fecha);
					$("#ProcesarLoad").modal("close");
					swal({
						text: "Guardado con exito",
						type: "success",
						allowOutsideClick: false
					}).then(function () {
						location.href = "ConsolidadoS";
					});
				}
			},
			error: function () {
				swal({
					text: "Oops! Algo salio mal, no se pudo guardar el consolidado. Contáctece con el administrador",
					type: "error",
					allowOutsideClick: false
				});
				$("#ProcesarLoad").modal("close");
			}
		});
	});

	/*****************************************************************************************************************/
	$("#FechaFilter").change(function(){
		$("#checkAll").prop("checked",false);
		$("#tblNuevoConsolidado").DataTable({
			"ajax": "NewConsolidadoUnif/"+$(this).val(),
			responsive:true,
			"autoWidth":false,
			"info": true,
			"sort":true,
			"destroy": true,
			"paging": false,
			/* "dom": 'T<"clear">lfrtip',
             "tableTools": {
                 "sSwfPath": "<php// echo base_url(); ?>assets/data/swf/copy_csv_xls_pdf.swf",
			},*/
			"pagingType": "full_numbers",
			"lengthMenu": [
				[5,10,50,100, -1],
				[5,10,50,100, "Todo"]
			],
			"language": {
				"info": "Registro _START_ a _END_ de _TOTAL_ entradas",
				"infoEmpty": "Registro 0 a 0 de 0 entradas",
				"zeroRecords": "No se encontro coincidencia",
				"infoFiltered": "(filtrado de _MAX_ registros en total)",
				"emptyTable": "NO HAY DATOS DISPONIBLES",
				"lengthMenu": '_MENU_ ',
				"search": '<i class=" material-icons">search</i>',
				"loadingRecords": " <div class='progress'>"+
				"<div class='indeterminate'></div>"+
				"</div>",
				"paginate": {
					"first": "Primera",
					"last": "Última ",
					"next": "Siguiente",
					"previous": "Anterior"
				}
			},
			"columns": [
				{ "data": "Codigo" },
				{ "data": "Descripcion" },
				{ "data": "GRM" },
				{ "data": "Saldo" },
				{ "data": "cam2"},
				{ "data": "Unidades_Pedidas" },
				{ "data": "LBS" },
				{ "data": "Estado" },
				{ "data": "FechaEntrega" },
				{ "data": "Cam1"}
			]
		});
	});

	function checkAll(){
		var linea = 0;
		var disponible = 0;
		if ($("#checkAll").is(":checked",true)) {
			ofact = $("#tblNuevoConsolidado").DataTable();
			ofact.rows().data().each(function (index,value) {

				var cod = $("#tblNuevoConsolidado").DataTable().row(linea).data().Codigo;
				var fecha = $("#tblNuevoConsolidado").DataTable().row(linea).data().FechaEntrega;
				$("#chk"+cod).prop("checked",true);

				if ($("#chk"+cod).is(":checked")) {
					Duplicados(cod,fecha,"U");

					var saldo = $("#tblNuevoConsolidado").DataTable().row(linea).data().Saldo;
					var unidades = $("#tblNuevoConsolidado").DataTable().row(linea).data().Unidades_Pedidas;
					disponible = saldo - unidades;
					$("#rest"+cod).html(disponible);
					if (disponible < 0) {
						$("#rest"+cod).css("color","red");
						$("#estado"+cod).val("2");
					}
				}
				linea++;
			});
		}else{
			ofact = $("#tblNuevoConsolidado").DataTable();
			ofact.rows().data().each(function (index,value) {
				var cod = $("#tblNuevoConsolidado").DataTable().row(linea).data().Codigo;
				$("#chk"+cod).prop("checked",false);
				if (!$("#chk"+cod).is(":checked")) {
					$("#rest"+cod).html(0);
					$("#rest"+cod).css("color","black");
					$("#estado"+cod).val("");
				}
				linea++;
			});
		}
	}

	function verificar(posicion,cod) {
		var restante = 0;
		var saldo = $("#tblNuevoConsolidado").DataTable().row(posicion).data().Saldo;
		var unidades = $("#tblNuevoConsolidado").DataTable().row(posicion).data().Unidades_Pedidas;
		var fecha = $("#tblNuevoConsolidado").DataTable().row(posicion).data().FechaEntrega;

		if ($("#chk"+cod).is(":checked")) {
			Duplicados(cod,fecha,"U");

			restante = saldo - unidades;
			$("#rest"+cod).html(restante);
			if (restante < 0) {
				$("#rest"+cod).css("color","red");
				$("#estado"+cod).val("2");
			}
		}else{
			$("#rest"+cod).html(0);
			$("#rest"+cod).css("color","black");
			$("#estado"+cod).val("");
		}
	}

	$("#btnprocesarOrdenS").on("click",function () {
		$("#ProcesarLoad").modal({dismissible : false});
		$("#ProcesarLoad").modal("open");
		var table = $("#tblNuevoConsolidado").DataTable();
		var linea = 0;
		var array = new Array();
		table.rows().eq(0).each(function (index){
			var row = table.row(index);
			var data = row.data();
			if ($("#chk"+data.Codigo).is(":checked")) {
				array[linea] = data.Codigo+","+data.Descripcion+","+data.GRM+","+data.Unidades_Pedidas+","+data.LBS+","+data.FechaEntrega+","+data.Saldo+","+$("#rest"+data.Codigo).html()+","+$("#estado"+data.Codigo).val();
				linea++;
			}
		});

		var form_data = {
			consolidadoS: array
		};

		$.ajax({
			url: "GuardarConsolidadosS",
			type: "POST",
			data: form_data,
			async: true,
			beforeSend: function (data) {
				if (!$(".All").is(":checked")) {
					$("#ProcesarLoad").modal("close");
					swal({
						allowOutsideClick: false,
						text: "No se ha podido autorizar esta orden ya que los datos a procesar estan vacíos",
						type: "warning"
					});
					$.ajax.abort();
				}
			},
			success: function(data) {
				if(data != "") {
					var fecha = $("#FechaFilter option:selected").val(); var tipo = "U";
					incrementarLlave(tipo,fecha);
					$("#ProcesarLoad").modal("close");
					swal({
						text: "Guardado con exito",
						type: "success",
						allowOutsideClick: false
					}).then(function () {
						location.href = "ConsolidadoS";
					});
				}
			},
			error: function(){
				swal({
					text: "Oops! Algo salio mal, no se pudo guardar el consolidado. Contáctece con el administrador",
					type: "error",
					allowOutsideClick: false
				});
				$("#ProcesarLoad").modal("close");
			}
		});

	});

	$("#tblConsolidado").on("click","tbody .detalles", function(){
		var t = $("#tblConsolidado").DataTable();
		var tr = $(this).closest("tr");
		$(this).addClass("detalleNumOrdOrange");
		var row = t.row(tr);
		var data = t.row($(this).parents("tr")).data();

		if (row.child.isShown()) {
			row.child.hide();
			tr.removeClass("shown");
			$("#detail1"+data[0]).hide();
			$("#detail2"+data[0]).show();
		}else{
			$("#loader"+data[0]).show();
			$("#detail1"+data[0]).show();
			$("#detail2"+data[0]).hide();
			Info(row.child,data[0],data[0]);
			tr.addClass("shown");
		}
	});

	function Info(callback, fecha, div) {
		$.ajax({
			url: "InfoConsolidadoS/"+fecha,
			async: true,
			success: function (response){
				var thead ="", tbody ="";
				if (response != "false") {
					var obj = $.parseJSON(response);
					thead += "<tr class='tblcabecera1'><th class='center'>Fecha Entrega</th>";
					thead += "<th class='center'>Unidades</th>";
					thead += "<th class='center'>LBS</th>";
					thead += "<th class='center'>Fecha Creacion</th>";
					thead += "<th class='center'>Tipo</th>";
					thead += "<th class='center'>Acciones</th></tr>";

					$.each(JSON.parse(response), function (i, item) {
						tbody += "<tr>"+
							"<td>"+item["FechaEntrega"]+"</td>"+
							"<td>"+item["Unidades"]+"</td>"+
							"<td>"+item["LBS"]+"</td>"+
							"<td>"+item["FechaCreacion"]+"</td>"+
							"<td>"+item["Tipo"]+"</td>"+
							"<td class='center'><a class='btn-floating blue dropdown-trigger' data-target='dropdown"+item["Tipo"]+"' href='javascript:void(0)'><i class='material-icons'>menu</i></a></td>"+
							'<ul id="dropdown'+item["Tipo"]+'" class="dropdown-content">'+
							'<li id=""><a  href="DetalleConsolidadoS/'+item["FechaEntrega"]+"/"+item["Tipo"]+"/"+item["Usuario"]+'">Detalles</a></li>'+
							'<li><a target="_blank" href="RemisionCons/'+item["FechaEntrega"]+"/"+item["Tipo"]+'">Remision</a></li>'+
							'<li class="divider" tabindex="-1"></li>'+
							'<li><a onclick="EliminarConsS('+"'"+item["FechaEntrega"]+"'"+","+"'"+item["Tipo"]+"'"+","+"'"+item["Usuario"]+"'"+')" id="'+item["FechaEntrega"]+'" href="javascript:void(0)">Eliminar</a></li>'+
							'</ul>'+
							'</tr>';
					});
					callback($("<table id='infoCons' class='table striped'>"+ thead + tbody +"</table>")).show();
					$('#loader' + div).hide();
					$('#detail1' + div).show();
					$('.dropdown-trigger').dropdown();
				}else{
					thead += "<tr class='tblcabecera1'><th class='center'>Fecha Entrega</th>";
					thead += "<th class='center'>Unidades</th>";
					thead += "<th class='center'>LBS</th>";
					thead += "<th class='center'>Fecha Creacion</th>";
					thead += "<th class='center'>Tipo</th>";
					thead += "<th class='center'>Acciones</th></tr>";
					tbody += '<tr >' +
						'<td></td>' +
						'<td></td>' +
						'<td></td>' +
						'<td>No hay datos disponibles</td>' +
						'<td></td>' +
						'<td></td>' +
						'</tr>';
					callback($('<table id="infoCons" class="table striped">' + thead + tbody + '</table>')).show();
					$('#loader' + div).hide();
					$('#detail' + div).show();
				}
			}
		});
	}

	function EliminarConsS(elem,tipo,usuario){
		swal({
			text: "Estas seguro que deseas Eliminar este consolidado",
			type: 'warning',
			showCancelButton: true,
			confirmButtonColor: '#0094ce',
			cancelButtonColor: '#b73a33',
			confirmButtonText: 'Si, Borrar!',
			cancelButtonText: 'Cancelar'
		}).then(function () {
			$.ajax({
				url : "EliminarConsolS/"+elem+"/"+tipo+"/"+usuario,
				type: "POST",
				async: true,
				success: function () {
					if (true) {
						swal({
							text: "Consolidado eliminado con éxito.",
							type: "success"
						}).then(function () {
							location.reload();
						});
					}
				}
			});
		});
	}
</script>
