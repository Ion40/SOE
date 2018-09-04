<script>
$(document).ready(function () {
	$("#BuscarClientes").on("keyup", function () {
		var t = $("#TblClientes").DataTable();
		t.search(this.value).draw();
	});

$("#TblClientes").DataTable({
	"ajax": "mostrarClientes",
	responsive:true,
	"autoWidth":false,
	"info": true,
	"sort":true,
	"destroy": true,
	"paging": true,
	/* "dom": 'T<"clear">lfrtip',
     "tableTools": {
         "sSwfPath": "<php// echo base_url(); ?>assets/data/swf/copy_csv_xls_pdf.swf",
		},*/
	"pagingType": "full_numbers",
	"lengthMenu": [
		[10,30,50,100, -1],
		[10,30,50,100, "Todo"]
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
		{ "data": "Nombre" },
		{ "data": "Ruta" },
		{ "data": "FechaCreacion" },
		{ "data": "Estado" },
		{ "data": "Camp1"}
	],
	"columnDefs": [
		{ className: "center", "targets": [4] }
	]
});
	/*setInterval(function(){
		table.ajax.reload();
	},1000);*/
});

$("#guardarClient").on("click", function () {
	var selected = '',
		fin = '';
	$('#ruta option:checked').each(function () {
		selected += $(this).val() + ',';
	});
	fin = selected.length - 1; // calculo cantidad de caracteres menos 1 para eliminar la coma final
	selected = selected.substr(0, fin); // elimino la coma final

	alert(selected);
	var form_data = {
		nombre: $("#nombre").val(),
		ruta: selected
	};
	$.ajax({
		url: "SaveClientes",
		type: "POST",
		data: form_data,
		async: true,
		beforeSend: function (data) {
			var nom = $("#nombre").val();
			if (nom == ""){
				swal({
					title: "Campo vacío",
					text: "Debe escribir el nombre del cliente!",
					type: "info"
				}).then(function () {
					$("#nombre").focus();
				});
				$.ajax.abort();
			}
		},
		success: function (data) {
			swal({
				title: "Registrado",
				text: "El cliente "+$("#nombre").val()+" ha sido registrado con éxito",
				type: "success"
			}).then( function () {
				$("#nombre").val("");
				$("#nombre").focus();
			});
		},
		error: function () {
			swal({
				title: "Error",
				text: "No se pudo guardar el cliente, pongase en contacto con el administrador",
				type: "error"
			});
		}
	});
});


function Baja(id,estado)
{
	var mensaje = "";
	if (estado == "Activo") { mensaje = "Deseas dar de baja a este cliente?"}
	else{ mensaje = "Deseas restaurar este cliente?" }
	swal({
		title: 'Estas seguro?',
		text: mensaje,
		type: 'warning',
		showCancelButton: true,
		confirmButtonColor: '#3085d6',
		cancelButtonColor: '#d33',
		confirmButtonText: 'Si',
		cancelButtonText: "No"
	}).then( function () {

		$.ajax({
			url: "BajaCliente/"+id+"/"+estado,
			type: "POST",
			success: function (data) {
				swal({
					title: "Exito",
					text: "La operacion se llevo a cabo con éxito",
					type: "success"
				}).then( function () {
					const table = $("#TblClientes").DataTable();
					table.ajax.reload();
				});
			},
			error: function () {
				swal({
					title: "Error",
					text: "Ocurrió un error, contáctece con el administrador",
					type: "error"
				});
			}
		});
	});
}

function editar(id,nombre,ruta)
{
	$("#idcliente").val(id);
	$("#nombreedit").val(nombre);
	$("#rutaedit option:selected").val(ruta).trigger("chosen:updated");
	$("#rutaedit option:selected").text("Ruta#"+ ruta).trigger("chosen:updated");
	$("#modalClienteEdit").modal("open");
}

$("#actualizarClient").on("click", function () {
	swal({
		title: 'Actualizar',
		text: "Estas seguro que deseas actualizar el usuario a "+ $("#nombreedit").val() +" ?",
		type: 'question',
		showCancelButton: true,
		confirmButtonColor: '#3085d6',
		cancelButtonColor: '#d33',
		confirmButtonText: 'Actualizar',
		cancelButtonText: "Cancelar"
	}).then(function () {
		var form_data = {
			idcliente: $("#idcliente").val(),
			nombreedit: $("#nombreedit").val(),
			rutaedit: $("#rutaedit option:selected").val()
		};

		$.ajax({
			url: "UpdateClientes",
			type: "POST",
			data: form_data,
			success: function (data) {
				swal({
					title: "Exito",
					text: "El cliente ha sido actualizado con éxito",
					type: "success"
				}).then(function () {
					const tabla = $("#TblClientes").DataTable();
					tabla.ajax.reload();
				});
			},
			error: function () {
				swal({
					title: "Error",
					text: "Ocurrió un error al intentar actualizar este cliente, contáctece con el administrador",
					type: "error"
				});
			}
		});
	});
});

</script>
