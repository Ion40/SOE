<script>
$(document).ready(function () {
	$("#txtBuscar").on("keyup",function () {
		var t = $("#tblOrdenesPreS").DataTable();
		t.search(this.value).draw();
	});
	$("#txtBuscar1").on("keyup",function () {
		var t = $("#tblNuevaOrdenPrevS").DataTable();
		t.search(this.value).draw();
	});
	$("#txtBuscar2").on("keyup",function () {
		var t = $("#tblDetOrS").DataTable();
		t.search(this.value).draw();
	});

	$("#tblOrdenesPreS").DataTable({
		responsive:true,
		"autoWidth":false,
		"info": true,
		"sort":true,
		"destroy": false,
		"pagingType": "full_numbers",
		"lengthMenu": [
			[10,30,50,100, -1],
			[10,30,50,100, "Todo"]
		],
		"order": [
			[0, "asc"]
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
		}
	});

	$("#tblNuevaOrdenPrevS").DataTable({
		responsive: false,
		"autoWidth": false,
		"paging": false,
		"info": false,
		"sort": true,
		"language": {
			"emptyTable": "NO HAY DATOS DISPONIBLES",
			"lengthMenu": '_MENU_ ',
			"search": '<i class=" material-icons">search</i>',
			"loadingRecords": "Cargando...",
			"paginate": {
				"first": "Primera",
				"last": "Última ",
				"next": "Siguiente",
				"previous": "Anterior"
			}
		}
	});

	var calculo = 0;
	var table = $("#tblNuevaOrdenPrevS").DataTable();
	table.rows().eq(0).each(function (index) {
		var row = table.row(index);
		var data = row.data();
		$("#unid" + data[0]).on("keyup", function () {
			if ($("#unid" + data[0]).val() != "") {
				calculo = (($("#unid" + data[0]).val() * data[2]) / 454);
				$("#lbs" + data[0]).val(calculo.toFixed(2));
			} else {
				$("#lbs" + data[0]).val("");
			}
		});
	});

});

$(".text").on("blur",function () {
	var suma = 0;
	var text = 0;
	$(".text1").each(function () {
		suma += Number($(this).val());
	});
	$("#totallbs").html(suma.toFixed(2));
});

function espere() {
	swal({
		title: "Guardando datos",
		text: 'Actualizado con éxito',
		showConfirmButton:false,
		showCloseButton: false,
		allowOutsideClick: false,
		html:'<p>Espere por favor...</p><br>'+'<div class="preloader-wrapper active">'+
		'<div class="spinner-layer spinner-blue-only">'+
		'<div class="circle-clipper left">'+
		'<div class="circle"></div>'+
		'</div><div class="gap-patch">'+
		'<div class="circle"></div>'+
		'</div><div class="circle-clipper right">'+
		'<div class="circle"></div>'+
		'</div>'+
		'</div>'+
		'</div>'
	}).then();
}

function guardar(){
	swal({
		text: "Estas seguro que todos los datos son correctos? verifique la informacion antes de guardar",
		type: 'warning',
		showCancelButton: true,
		confirmButtonColor: '#0094ce',
		cancelButtonColor: '#b73a33',
		confirmButtonText: 'Confirmar',
		cancelButtonText: 'Cancelar'
	}).then(function(){
		espere();
		var i = 0;
		var array = new Array();
		var table = $("#tblNuevaOrdenPrevS").DataTable();
		table.rows().eq(0).each(function(index){
			var row = table.row(index);
			var data = row.data();
			if ($("#unid" + data[0]).val() != "") {
				array[i] = data[0]+","+data[1]+","+data[2]+","+$("#unid" + data[0]).val()+","+$("#lbs" + data[0]).val()+","+$("#vendedor").val()+","+$("#fechaentrega").val()+","+$("#Rutas option:selected").val()+","+$("#idClientes option:selected").val();
				i++;
			}else{
			}
		});
		var form_data = {
			preventasS: array
		};

		$.ajax({
			url: "SaveOrdPrevS",
			type: "post",
			data: form_data,
			async:true,
			beforeSend:function(){
				if($("#vendedor").val()=="" || $("#fechaentrega").val()=="" ||
					$("#Rutas option:selected").text()== "Seleccione una ruta" ||
					$("#idClientes option:selected").text()== "Seleccione un cliente" ){
					swal({
						text: "Todos los campos son requeridos, verifique e intente de nuevo!",
						type: "info",
						confirmButtonText: "CERRAR"
					});
					$.ajax.abort();
				}
			},
			success: function(data){
				if(true){
					var fecha = $("#fechaentrega").val(); var ruta = $("#Rutas option:selected").val();
					incrementarLlaveS(ruta,fecha);
					swal({
						text: "Orden Preventa guardada",
						type: "success"
					}).then(function(){
						$("#vendedor").val("");
						$(".text").val("");
						$(".text1").val("");
						$("#totallbs").html(0.0);
					});
				}
			},
			error: function () {
				swal({
					title: "Error",
					text: "Ocurrió un error al intentar guardar esta orden, contáctece con el administrador",
					type: "error"
				});
			}
		});
	});
}

function incrementarLlaveS(ruta,fecha){
	var form = {
		ruta: ruta,
		fecha: fecha
	};
	$.ajax({
		url:"LlavesOrdS",
		type: "POST",
		data: form,
		success:function(data){
			if(true){
				console.log(form);
			}
		}
	});
}

function ChangeState(fecha,user,estado)
{
	if(estado == 0){
		var miMSS = "Estas seguro que deseas poner en visto esta orden?";
	}else{
		var miMSS = "Estas seguro que deseas poner en pendiente esta orden?";
	}
	swal({
		text: miMSS,
		type: 'question',
		showCancelButton: true,
		confirmButtonColor: '#0094ce',
		cancelButtonColor: '#b73a33',
		confirmButtonText: 'Confirmar',
		cancelButtonText: 'Cancelar'
	}).then(function(){
		$.ajax({
			url:"changeState/"+fecha+"/"+user+"/"+estado,
			type:"POST",
			success:function(){
				location.reload();
			}
		});
	});
}

$("#tblOrdenesPreS").on("click","tbody .detalles", function(){
	var table = $("#tblOrdenesPreS").DataTable();
	var tr = $(this).closest('tr');
	$(this).addClass("detalleNumOrdOrange");
	var row = table.row(tr);
	var data = table.row($(this).parents('tr')).data();

	if (row.child.isShown()) {
		row.child.hide();
		tr.removeClass("shown");
		$("#detail1"+data[0]).hide();
		$("#detail2"+data[0]).show();
	} else {
		$("#loader"+data[0]).show();
		$("#detail1"+data[0]).show();
		$("#detail2"+data[0]).hide();

		detalle(row.child,data[0], data[0]);
		tr.addClass("shown");
	}
});

function detalle(callback,fecha,div){
	$.ajax({
		url: "DetOrdenPrevS/"+fecha,
		async: true,
		success:function(response){
			var thead = '',
				tbody= '';
			var cont = 0;
			if (response != "false") {
				var obj = $.parseJSON(response);
				var temp = obj.length; var cantRows = 0;
				thead += "<tr class='tblcabecera1'><th class='center'>Ruta</th>";
				thead += "<th class='center'>Fecha Entrega</th>";
				thead += "<th class='center'>Unidades</th>";
				thead += "<th class='center'>LBS</th>";
				thead += "<th class='center'>ACCIONES</th></tr>";

				$.each(JSON.parse(response), function(i, item){
					tbody += "<tr>"+
						"<td><a href='DetallesPreventas/"+item["Ruta"]+"/"+item["FechaEntrega"]+"'>"+item["Ruta"]+"</a></td>"+
						"<td>"+item["FechaEntrega"]+"</td>"+
						"<td>"+item["Unidades"]+"</td>"+
						"<td>"+item["LBS"]+"</td>"+
						"<td class='center'><a class='btn-floating blue dropdown-trigger' data-target='dropdown"+item["Ruta"]+"' href='javascript:void(0)'><i class='material-icons'>menu</i></a></td>"+
						'<ul id="dropdown'+item["Ruta"]+'" class="dropdown-content">'+
						'<li><a target="_blank" href="remisionOrdenPrevSRutas/'+item["Ruta"]+'/'+item["FechaEntrega"]+'">Remision</a></li>'+
						'</ul>';
				});
				callback($("<table id='detOrdenPrevS' class='table striped'>"+ thead + tbody + "</table>")).show();
				$('#loader' + div).hide();
				$('#detail1' + div).show();
				$('.dropdown-trigger').dropdown();
			} else {
				thead += "<tr class='tblcabecera1'><th class='center'>Ruta</th>";
				thead += "<th class='center'>Fecha Entrega</th>";
				thead += "<th class='center'>Unidades</th>";
				thead += "<th class='center'>LBS</th>";
				thead += "<th class='center'>ACCIONES</th></tr>";
				tbody += '<tr >' +
					'<td></td>' +
					'<td></td>' +
					'<td></td>' +
					'<td>No hay datos disponibles</td>' +
					'<td></td>' +
					'<td></td>' +
					'</tr>';
				callback($('<table id="detOrdenPrevS" class="table striped">' + thead + tbody + '</table>')).show();
				$('#loader' + div).hide();
				$('#detail' + div).show();
			}
		}
	});

}

function DetallesModal(fecha,idcliente,vendedor,nombrecliente)
{
	var loc = window.location;
	var pathName = loc.pathname.substring(0, loc.pathname.lastIndexOf('/') + 3);
	var ruta = loc.href.substring(0, loc.href.length - ((loc.pathname + loc.search + loc.hash).length - pathName.length));

	$("#spanFecha").html(fecha);
	$("#spanVendedor").html(vendedor);
	$("#spanCliente").html(nombrecliente);
	$("#tblDetalleOrderPrevS").DataTable({
		"ajax": ruta+"../DetallesOrderPrevSModal/"+fecha+"/"+idcliente,
		responsive:true,
		"autoWidth":false,
		"info": true,
		"sort":true,
		"destroy": true,
		"pagingType": "full_numbers",
		"lengthMenu": [
			[5,10,50,100, -1],
			[5,10,50,100, "Todo"]
		],
		"order": [
			[0, "asc"]
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
			{"data": "Codigo"},
			{"data": "Descripcion"},
			{"data": "GR/lb"},
			{"data": "Unidades"},
			{"data": "LBS"}
		]
	});
	$("#modalDetalleOrderS").modal("open");
}

function DetOrdPrevSxCli(cliente,fecha,vendedor,nombrecliente,estado)
{
	var loc = window.location;
	var pathName = loc.pathname.substring(0, loc.pathname.lastIndexOf('/') + 3);
	var ruta = loc.href.substring(0, loc.href.length - ((loc.pathname + loc.search + loc.hash).length - pathName.length));

	$("#spanFechaEdit").html(fecha);
	$("#spanVendedorEdit").html(vendedor);
	$("#spanClienteEdit").html(nombrecliente);
	$("#modalEditOrderS").modal("open");

	if (estado == 1) {
		$("#btnUpdateOr").hide();
	} else {
		$("#btnUpdateOr").show();
	}
	$("#tblEditarOrdenPrevS").DataTable({
		"ajax": ruta+"../DetallesOrdPrevSXCliente/"+cliente+"/"+fecha,
		responsive:true,
		"autoWidth":false,
		"info": false,
		"sort":true,
		"paging": false,
		"destroy": true,
		"order": [
			[0, "asc"]
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
			{ "data": "GR/lb" },
			{ "data": "Unidades" },
			{ "data": "LBS" },
			{ "data": "delete"},
			{"data": "IdOrdenS"}
		],
		"initComplete": function(settings, json){
			if (estado == 1) {
				$(".txteditord").prop("disabled",true);
				$(".delete").removeAttr("onclick");
			} else {
				$(".txteditord").prop("disabled",false);
				$(".delete").show();
			}
		}
	});
}

function cambiarUnidades(){
	var table = $("#tblEditarOrdenPrevS").DataTable();
	var calculo;
	table.rows().eq(0).each(function (index) {
		var row = table.row(index);
		var data = row.data();
		calculo = (($("#UnidadesEdit"+data.Codigo).val() * $("#editgr"+data.Codigo).html()) / 454);
		$("#lbsEdit"+data.Codigo).val(calculo.toFixed(2));
	});
}

function Eliminar(elem){
	var loc = window.location;
	var pathName = loc.pathname.substring(0, loc.pathname.lastIndexOf('/') + 3);
	var ruta = loc.href.substring(0, loc.href.length - ((loc.pathname + loc.search + loc.hash).length - pathName.length));
	var id = $(elem).attr("id");
	swal({
		text: "Estas seguro que deseas Eliminar este registro?",
		type: 'question',
		showCancelButton: true,
		confirmButtonColor: '#0094ce',
		cancelButtonColor: '#b73a33',
		confirmButtonText: 'Confirmar',
		cancelButtonText: 'Cancelar'
	}).then(function () {
		$.ajax({
			url: ruta+"../ElimUnoPrevS/"+elem,
			type: "POST",
			success: function () {
				swal({
					text: "Datos eliminados correctamente!",
					type: "success"
				}).then(function () {
					location.reload();
				});
			},
			error: function () {
				swal({
					text: "Ocurrio un error al tratar de eliminar este registro, contactece con el administrador",
					type: "error"
				});
			}
		});
	});

}

function actualizarOrden(){
	var loc = window.location;
	var pathName = loc.pathname.substring(0, loc.pathname.lastIndexOf('/') + 3);
	var ruta = loc.href.substring(0, loc.href.length - ((loc.pathname + loc.search + loc.hash).length - pathName.length));

	var ordenes = new Array();
	var i=0;
	var table = $("#tblEditarOrdenPrevS").DataTable();
	table.rows().eq(0).each(function (index) {
		var row = table.row(index);
		var data = row.data();
		ordenes[i]= $("#idOrdenSEdit"+data.Codigo).val()+","+$("#UnidadesEdit"+data.Codigo).val()+","+$("#lbsEdit"+data.Codigo).val();
		i++;
	});

	var form_data = {
		OrdenesPrevS: ordenes
	};

	$.ajax({
		url: ruta+"../ActualizarOrdenPrevS",
		type: "POST",
		data: form_data,
		success: function(data){
			if (true) {
				swal({
					text: "Orden actualizada correctamente!",
					type: "success",
					confirmButtonText: "Aceptar"
				}).then(function(){
					location.reload();
				});
			}else{
				swal({
					text: "Ocurrio un error al intentar actualizar la orden!, pongase en contácto con el administrador",
					type: "error",
					confirmButtonText: "Aceptar"
				});
			}
		}
	});
}

function remcli (cliente,ruta,fecha) {
	var loc = window.location;
	var pathName = loc.pathname.substring(0, loc.pathname.lastIndexOf('/') + 3);
	var ruta1 = loc.href.substring(0, loc.href.length - ((loc.pathname + loc.search + loc.hash).length - pathName.length));
	this.location.href = ruta1+"../remisionOrdenPreSCliente/"+cliente+"/"+ruta+"/"+fecha;
}


</script>
