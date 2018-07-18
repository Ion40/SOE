<script type="text/javascript">
$(document).ready(function(){
$("#BuscarConsolidadosM").on("keyup", function () {
	var table = $("#TblConsolidadoM").DataTable();
	table.search(this.value).draw();
});

  $("#tblNewConsol").DataTable({
        responsive:true,
        "autoWidth":false,
        "info": true,
        "sort":true,
        "paging": false,
        "destroy": true,
        /*"dom": 'T<"clear">lfrtip',
        "tableTools": {
            "sSwfPath": "php echo base_url(); ?>assets/data/swf/copy_csv_xls_pdf.swf",
		},
        "pagingType": "full_numbers",
        "lengthMenu": [
            [10,50,100, -1],
            [10,50,100, "Todo"]
        ],*/
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
});	

function saveConsolidadoM() {
	swal({
		title: "Guardar Consolidado",
		text: "Estas seguro que todos los datos son correctos? Deseas guardar esta orden?",
		type: 'question',
		showCancelButton: true,
		confirmButtonColor: '#0094ce',
		cancelButtonColor: '#b73a33',
		confirmButtonText: 'Confirmar',
		cancelButtonText: 'Cancelar'
	}).then(function () {
		var table = $("#tblNewConsol").DataTable({"paging": false,"destroy": true});
		var i = 0;
		var arr = new Array();
		var arr1 = new Array();
		table.rows().eq(0).each( function (index) {
			var row = table.row(index);
			var data = row.data();
				if ($("#Camp1_"+data[0]).val() != 0 || $("#Camp2_"+data[0]).val() != 0 || $("#Camp3_"+data[0]).val() != 0
				   || $("#Camp4_"+data[0]).val() != 0 || $("#Camp5_"+data[0]).val() != 0 || $("#Camp6_"+data[0]).val() != 0
				   || $("#Camp7_"+data[0]).val() != 0 || $("#Camp8_"+data[0]).val() != 0 || $("#Camp9_"+data[0]).val() != 0
				   || $("#Camp0_"+data[0]).val() != 0)
				{
					arr[i] = data[0]+","+data[1]+","+data[2]+","+$("#date").val()+","+$("#Camp1_"+data[0]).val()+","+$("#Camp2_"+data[0]).val()+","+$("#Camp3_"+data[0]).val()+","+$("#Camp4_"+data[0]).val()+","+$("#Camp5_"+data[0]).val()+","+$("#Camp6_"+data[0]).val()+","+$("#Camp7_"+data[0]).val()+","+$("#Camp8_"+data[0]).val()+","+$("#Camp9_"+data[0]).val()+","+$("#Camp0_"+data[0]).val();
					i++;
				}
		});

		var form_data = {
			datos: arr
		};

		if($("#date").val() == "") {
				swal({
					title: "Datos incompletos",
					text: "Debe seleccionar una fecha!",
					type: "info"
				});
			}else{
				$.ajax({
					url: "SaveConsolidado",
					type: "POST",
					data: form_data,
					async: true,
					success: function(data) {
						if (true) {
							swal({
							title: "Almacenado",
							text: "El consolidado se guardó con éxito",
							type: "success"
						  }).then(function () {
							location.href = "ListConsolidado";
						});
						}
					},
					error: function (){
						swal({
							title: "Error al guardar",
							text: "Ocurrió un error al intentar guardar el consolidado! Contáctece con el administrador",
							type: "error"
						}).then(function (){
							location.reload();
						});
					} 
				});
			}
	});
}


function detalles(fecha) {
	$("#tblDetCons").DataTable({
		"ajax":"DetConsolidado/"+fecha,
        responsive:true,
        "autoWidth":false,
        "info": true,
        "sort":true,
        "destroy": true,
        "dom": 'T<"clear">lfrtip',
        "tableTools": {
            "sSwfPath": "<?php echo base_url(); ?>assets/data/swf/copy_csv_xls_pdf.swf",
		},
        "pagingType": "full_numbers",
        "lengthMenu": [
            [10,50,100, -1],
            [10,50,100, "Todo"]
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
        	{"data": "GRM"},
        	{"data": "Camp1"},
        	{"data": "Camp2"},
        	{"data": "Camp3"},
        	{"data": "Camp4"},
        	{"data": "Camp5"},
        	{"data": "Camp6"},
        	{"data": "Camp7"},
        	{"data": "Camp8"},
        	{"data": "Camp9"},
        	{"data": "Camp10"},
        	{"data": "Camp"}
        ], 
       "columnDefs": [
    		{ className: "combat", "targets": [3,4,5,6,7,8,9,10,11,12] },
		    { className: "total-combat", "targets": [13] }
  		],
  		drawCallback: function() {
			sumarFilas();
			$("#TOTAL").html("TOTAL");
		  },
		"footerCallback": function (row, data, start, end, display) {
			sumarColumnas();
			var api = this.api(), data;
			//Convirtiendo a int para encontrar el Total
			var intVal = function (i) {
				return typeof i === "string" ?
					i.replace(/[\$,]/g, '')*1 :
					typeof i == "number" ?
						i : 0;
			}
			var col_1 = api.column(3).data().reduce(function (a,b) {return intVal(a) + intVal(b)},0);
			var col_2 = api.column(4).data().reduce(function (a,b) {return intVal(a) + intVal(b)},0);
			var col_3 = api.column(5).data().reduce(function (a,b) {return intVal(a) + intVal(b)},0);
			var col_4 = api.column(6).data().reduce(function (a,b) {return intVal(a) + intVal(b)},0);
			var col_5 = api.column(7).data().reduce(function (a,b) {return intVal(a) + intVal(b)},0);
			var col_6 = api.column(8).data().reduce(function (a,b) {return intVal(a) + intVal(b)},0);
			var col_7 = api.column(9).data().reduce(function (a,b) {return intVal(a) + intVal(b)},0);
			var col_8 = api.column(10).data().reduce(function (a,b) {return intVal(a) + intVal(b)},0);
			var col_9 = api.column(11).data().reduce(function (a,b) {return intVal(a) + intVal(b)},0);
			var col_0 = api.column(12).data().reduce(function (a,b) {return intVal(a) + intVal(b)},0);
			var total = api.column(13).data().reduce(function (a,b) {return intVal(a) + intVal(b)},0);

			$(api.column(3).footer()).html(col_1);
			$(api.column(4).footer()).html(col_2);
			$(api.column(5).footer()).html(col_3);
			$(api.column(6).footer()).html(col_4);
			$(api.column(7).footer()).html(col_5);
			$(api.column(8).footer()).html(col_6);
			$(api.column(9).footer()).html(col_7);
			$(api.column(10).footer()).html(col_8);
			$(api.column(11).footer()).html(col_9);
			$(api.column(12).footer()).html(col_0);
			$(api.column(12).footer()).html(total);
		}
    });
}

function Eliminar(fecha){
	
	swal({
		title: "Eliminar Consolidado",
		text: "Estas seguro que deseas eliminar este consolidado?",
		type: 'warning',
		showCancelButton: true,
		confirmButtonColor: '#0094ce',
		cancelButtonColor: '#b73a33',
		confirmButtonText: 'SI',
		cancelButtonText: 'NO'
	}).then(function(){
		$.ajax({
			url: "EliminarConsolM/"+fecha,
			type: "POST",
			async: true,
			success: function (){
				swal({
					title: "Eliminado",
					text: "El consolidado ha sido eliminado con exito!",
					type: "success"
				}).then(function(){
					location.reload();
				});
			},
			error: function (){
				swal({
					title: "Error",
					text: "Ocurrió un error al tratar de eliminar el consolidado! Contáctece con el administrador",
					type: "error"
				}).then(function(){
					location.reload();
				});
			}
		});
	});
}

	function sumarFilas(){
		$('tr').each(function () {
			var sum = 0;
			$(this).find('.combat').each(function () {
				var combat = $(this).text();
				if (!isNaN(combat) && combat.length !== 0) {
					sum += parseFloat(combat);
				}
			});
			$(this).find('.total-combat').html(sum);
		});
	}

	function sumarColumnas() {

	}
</script>
