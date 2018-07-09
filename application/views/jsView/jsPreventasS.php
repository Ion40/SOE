<script>
$(document).ready(function () {
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
</script>
