<script>    
$(document).ready(function(){
});

$("#TblUsuarios").DataTable({
	responsive: true,
	"autoWidth": false,
	"info": true,
	"sort": true,
	"order": [
		[3, "desc"]
	],
	"pagingType": "full_numbers",
	"lengthMenu": [
		[10, 20, 100, -1],
		[10, 20, 100, "Todo"]
	],
	"language": {
		"info": "Registro _START_ a _END_ de _TOTAL_ usuarios",
		"infoEmpty": "Registro 0 a 0 de 0 usuarios",
		"zeroRecords": "No se encontro coincidencia",
		"infoFiltered": "(filtrado de _MAX_ registros en total)",
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


$("#tblRutas").DataTable({
	responsive: true,
	"autoWidth": false,
	"paging": false,
	"info": false,
	"sort": true,
	"order": [
		[1, "asc"]
	],
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


$("#rol").on("change", function () { //por el momento; despues hacer que se muestre por el valor y no por nombre.
    $("#descrol").val($("#rol option:selected").text());
	if ($("#rol option:selected").val() == 4 || $("#rol option:selected").val() == 7 || $("#rol option:selected").val() == 8) {
		$("#divtblrutas").show();
	} else {
		$("#divtblrutas").hide();
	}
});


$("#guardarU").on("click", function () {
	var table = $("#tblRutas").DataTable();
	var posi = 0;
	var array = new Array();
	table.rows().eq(0).each(function (index) {
		var row = table.row(index);
		var data = row.data();
		if ($("#check" + data[1]).is(":checked") == true) {
			array[posi] = data[1];
			posi++;
		}
	});
	var form_data = {
		usuario: $("#usuario").val(),
		nombre: $("#nombre").val(),
		password: $("#password").val(),
		rol: $("#rol option:selected").val(),
        descrol: $("#descrol").val(),
		rutas: array
	}
	$.ajax({
		url: "GuardarU",
		type: "post",
		data: form_data,
		async: true,
		beforeSend: function () {
			if ($("#confpassword").val() != $("#password").val()){
				swal({
					text: "Las contraseñas no coinciden",
					type: "info"
				});
				$.ajax.abort();
			}
			if ($("#usuario").val() == "" || $("#nombre").val() == "" || $("#password").val() == "" || $("#rol option:selected").text() == "Elige un rol"){
				swal({
					text: "todos los campos son requeridos!",
					type: "info"
				});
				$.ajax.abort();
			}
		},
		success: function (data) {
			if (true) {
				swal({
					text: "Usuario registrado!",
					type: "success",
					confirmButtonText: "ACEPTAR"
				}).then(function () {
					location.reload();
				});
			}
		},
		error: function () {
			swal({
				text: "Ocurrio un error, contáctece con el administador!",
				type: "error",
				confirmButtonText: "CERRAR"
			});
		}
	});
});


function Baja(elem) {
	var id = $(elem).attr("id");
	swal({
		text: "Estas seguro que deseas dar de baja este usuario?",
		type: 'question',
		showCancelButton: true,
		confirmButtonColor: '#0094ce',
		cancelButtonColor: '#b73a33',
		confirmButtonText: 'Confirmar',
		cancelButtonText: 'Cancelar'
	}).then(function () {
		$.ajax({
			url: "Baja"+"/"+elem,
			type:"post",
			async: true,
			success: function () {
				if (true) {
					swal({
						text: "Este usuario ha sido dado de baja exitosamente!",
						type: "success",
						confirmButtonText: "CERRAR"
					}).then(function () {
						location.reload();
					});
				} else {
					swal({
						text: "Oops! Ocurrio un error, contáctece con el administrador",
						type: "error",
						confirmButtonText: "CERRAR"
					});
				}
			}
		});
	});
}

function Restaurar(elem) {
	var id = $(elem).attr("id");
	swal({
		text: "Estas seguro que deseas restaurar este usuario?",
		type: 'question',
		showCancelButton: true,
		confirmButtonColor: '#0094ce',
		cancelButtonColor: '#b73a33',
		confirmButtonText: 'Confirmar',
		cancelButtonText: 'Cancelar'
	}).then(function () {
		$.ajax({
			url: "Restaurar"+"/"+elem,
			type:"post",
			async: true,
			success: function () {
				if (true) {
					swal({
						text: "Este usuario ha sido restaurado exitosamente!",
						type: "success",
						confirmButtonText: "CERRAR"
					}).then(function () {
						location.reload();
					});
				} else {
					swal({
						text: "Oops! Ocurrio un error, contáctece con el administrador",
						type: "error",
						confirmButtonText: "CERRAR"
					});
				}
			}
		});
	});
}

function editar(usuario)
{
    
    $("#usuarioedit").val(usuario);
}

</script>
