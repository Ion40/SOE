<script>
$(document).ready(function(){
    $("#BuscarPreventas").on("keyup", function () {
			var table = $("#tblNuevaPreventa, #tblPreventas").DataTable();
			table.search(this.value).draw();
		});

     


        $("#tblPreventas").DataTable({
        responsive:true,
        "autoWidth":false,
        "info": true,
        "sort":true,
        "destroy": false,
       /* "dom": 'T<"clear">lfrtip',
        "tableTools": {
            "sSwfPath": "<php// echo base_url(); ?>assets/data/swf/copy_csv_xls_pdf.swf",
		},*/
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
        }
    });
		

    $("#tblNuevaPreventa").DataTable({
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
		var table = $("#tblNuevaPreventa").DataTable();
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

function guardar(){
	swal({
		text: "Estas seguro que todos los datos son correctos? verifique la informacion antes de guardar",
		type: 'warning',
		showCancelButton: true,
		confirmButtonColor: '#0094ce',
		cancelButtonColor: '#b73a33',
		confirmButtonText: 'Confirmar',
		cancelButtonText: 'Cancelar'
	}).then(function () {
		var i = 0;
		var array = new Array();
		var table = $("#tblNuevaPreventa").DataTable();
		table.rows().eq(0).each(function(index){
			var row = table.row(index);
			var data = row.data();
			if ($("#unid" + data[0]).val() != "") {
				array[i] = data[0]+","+data[1]+","+data[2]+","+$("#unid" + data[0]).val()+","+$("#lbs" + data[0]).val()+","+$("#vendedor").val()+","+$("#fechaentrega").val()+","+$("#Rutas option:selected").val();
				i++;
			}else{
			}
		});
		var form_data = {
		    preventa: array
		};

		$.ajax({
			url: "GuardaPreventa",
			type: "post", 
			data: form_data,
			async:true,
			beforeSend:function(){
				if($("#vendedor").val()=="" || $("#fechaentrega").val()=="" || $("#Rutas option:selected").val()== "Seleccione una ruta" ){
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
					incrementarLlave(ruta,fecha);
					swal({
						text: "Orden guardada",
						type: "success"
					}).then(function(){
						location.reload();
					});
				}
			}
		});
	})
}

function incrementarLlave(ruta,fecha){
   var form = {
       ruta: ruta,
       fecha: fecha
   };
   $.ajax({
       url:"Llaves",
       type: "POST",
       data: form,
       success:function(data){
           if(true){
            console.log(form);
           }
       }
   });
}

$("#tblPreventas").on("click","tbody .detalles", function(){
	var table = $("#tblPreventas").DataTable();
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
		url: "detallePreventa/"+fecha,
		async: true,
		success:function(response){
			var thead = '',
			    tbody= '';
			var cont = 0;
			if (response != "false") {
				var obj = $.parseJSON(response);
				var temp = obj.length; var cantRows = 0;
				thead += "<tr class='tblcabecera1'><th class='center'>Ruta</th>";
				thead += "<th class='center'>Vendedor</th>";
				thead += "<th class='center'>Supervisor</th>";
				thead += "<th class='center'>Unidades</th>";
				thead += "<th class='center'>LBS</th>";
                thead += "<th class='center'>Acciones</th></tr>";
                
                 

				$.each(JSON.parse(response), function(i, item){
					tbody += "<tr>"+
					"<td><a href='DetOrdenPre/"+item["Ruta"]+"/"+item["FechaEntrega"]+"'>"+item["Ruta"]+"</a></td>"+
					"<td>"+item["Vendedor"]+"</td>"+
					"<td>"+item["Nombre"]+"</td>"+
					"<td>"+item["Unidades"]+"</td>"+
					"<td>"+item["LBS"]+"</td>"+	
                    "<td class='center'><a class='btn-floating blue dropdown-trigger' data-target='dropdown"+item["Ruta"]+"' href='javascript:void(0)'><i class='material-icons'>menu</i></a></td>"+	
                    '<ul id="dropdown'+item["Ruta"]+'" class="dropdown-content">'+
                            '<li><a class="modal-trigger" href="#modalPreventa" onclick="editar('+item["Ruta"]+","+"'"+item["FechaEntrega"]+"'"+","+"'"+item["Vendedor"]+"'"+","+item["Estado"]+","+item["Usuario"]+')">Editar</a></li>'+
                            '<li><a target="_blank" href="remisionPre/'+item["Ruta"]+'/'+item["FechaEntrega"]+'/'+item["Usuario"]+'">Remision</a></li>'+
                        '</ul>';
				});

                

				callback($("<table id='detPreventa' class='table striped'>"+ thead + tbody + "</table>")).show();
				$('#loader' + div).hide();
                $('#detail1' + div).show();
                $('.dropdown-trigger').dropdown();
                                
			} else {
				thead += "<tr class='tblcabecera1'><th class='center'>Ruta</th>";
				thead += "<th class='center'>Vendedor</th>";
				thead += "<th class='center'>Supervisor</th>";
				thead += "<th class='center'>Unidades</th>";
				thead += "<th class='center'>LBS</th></tr>";
                tbody += '<tr >' +
                    '<td></td>' +
                    '<td></td>' +
                    '<td></td>' +
                    '<td>No hay datos disponibles</td>' +
                    '<td></td>' +
                    '<td></td>' +
                    '</tr>';
                callback($('<table id="detPreventa" class="table striped">' + thead + tbody + '</table>')).show();
                $('#loader' + div).hide();
                $('#detail' + div).show();
                $('.dropdown-trigger').dropdown();
			}	
		}
	});
	
}

function editar (ruta,fecha,vendedor,estado,idUser){
	$("#hFecha").html(fecha);
	$("#hRuta").html(ruta);
	$("#hVendedor").html(vendedor);
	if (estado == 1) {
		$("#btnUpdateOrPrev").hide();
	}else{
		$("#btnUpdateOrPrev").show();
	}
	$("#tblEditarPrev").DataTable({
		"ajax": "DetalleModal/"+ruta+"/"+fecha+"/"+idUser,
        responsive:true,
        "autoWidth":false,
        "info": false,
        "sort":true,
		"paging": false,
        "destroy": true,
       /* "dom": 'T<"clear">lfrtip',
        "tableTools": {
            "sSwfPath": "<php// echo base_url(); ?>assets/data/swf/copy_csv_xls_pdf.swf",
		},*/
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
            { "data": "IdOrden" }
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
	var table = $("#tblEditarPrev").DataTable();
	var calculo;
		table.rows().eq(0).each(function (index) {
			var row = table.row(index);
			var data = row.data();
			calculo = (($("#UnidadesEdit"+data.Codigo).val() * $("#editgr"+data.Codigo).html()) / 454);
			$("#lbsEdit"+data.Codigo).val(calculo.toFixed(2));
		});
}

function actualizarOrdenPrev(){
	var ordenes = new Array();
	var i=0;
	var table = $("#tblEditarPrev").DataTable();
	table.rows().eq(0).each(function (index) {
			var row = table.row(index);
			var data = row.data();
			ordenes[i]= $("#idOrdenEdit"+data.Codigo).val()+","+$("#UnidadesEdit"+data.Codigo).val()+","+$("#lbsEdit"+data.Codigo).val();
			i++;
		});

	var form_data = {
	  Ordenes: ordenes
	};

	$.ajax({
		url: "ActualizaPrev",
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


/******************************************************************************************************************************/
$("#tblPreventas").on("click","tbody .detalles1", function(){
	var table = $("#tblPreventas").DataTable();
	var tr = $(this).closest('tr');
	$(this).addClass("detalleNumOrdOrange");
	var row = table.row(tr);
	var data = table.row($(this).parents('tr')).data();

	//var id = $("#sup"+data[1]).html();
	if (row.child.isShown()) {
		row.child.hide();
		tr.removeClass("shown");
		$("#detail1"+data[0]).hide();
		$("#detail2"+data[0]).show();
	} else {
		$("#loader"+data[0]).show();
		$("#detail1"+data[0]).show();
		$("#detail2"+data[0]).hide();

		detalle1(row.child,data[2],data[0],data[0]);
		tr.addClass("shown");
	}
});

function detalle1(callback,nombre,fecha,div){
	$.ajax({
		url: "detallePreventa2/"+nombre+"/"+fecha,
		async: true,
		success:function(response){
			var thead = '',
			    tbody= '';
			var cont = 0;
			if (response != "false") {
				var obj = $.parseJSON(response);
				var temp = obj.length; var cantRows = 0;
				thead += "<tr class='tblcabecera1'><th class='center'>Ruta</th>";
				thead += "<th class='center'>Vendedor</th>";
				thead += "<th class='center'>Supervisor</th>";
				thead += "<th class='center'>Unidades</th>";
				thead += "<th class='center'>LBS</th>";
                thead += "<th class='center'>Acciones</th></tr>";
                
                 

				$.each(JSON.parse(response), function(i, item){
					tbody += "<tr>"+
					"<td><a href='DetOrdenPreGen/"+item["Ruta"]+"/"+item["FechaEntrega"]+"/"+fecha+"'>"+item["Ruta"]+"</a></td>"+
					"<td>"+item["Vendedor"]+"</td>"+
					"<td>"+item["Nombre"]+"</td>"+
					"<td>"+item["Unidades"]+"</td>"+
					"<td>"+item["LBS"]+"</td>"+	
                    "<td class='center'><a class='btn-floating blue dropdown-trigger' data-target='dropdown"+item["Ruta"]+"' href='javascript:void(0)'><i class='material-icons'>menu</i></a></td>"+	
                    '<ul id="dropdown'+item["Ruta"]+'" class="dropdown-content">'+
                            '<li><a class="modal-trigger" href="#modalPreventa" onclick="editar('+item["Ruta"]+","+"'"+item["FechaEntrega"]+"'"+","+"'"+item["Vendedor"]+"'"+","+item["Estado"]+","+fecha+')">Editar</a></li>'+
                            '<li><a target="_blank" href="remisionPre/'+item["Ruta"]+'/'+item["FechaEntrega"]+'/'+fecha+'">Remision</a></li>'+
                        '</ul>';
				});

                

				callback($("<table id='detPreventa' class='table striped'>"+ thead + tbody + "</table>")).show();
				$('#loader' + div).hide();
                $('#detail1' + div).show();
                $('.dropdown-trigger').dropdown();
                                
			} else {
				thead += "<tr class='tblcabecera1'><th class='center'>Ruta</th>";
				thead += "<th class='center'>Vendedor</th>";
				thead += "<th class='center'>Supervisor</th>";
				thead += "<th class='center'>Unidades</th>";
				thead += "<th class='center'>LBS</th></tr>";
                tbody += '<tr >' +
                    '<td></td>' +
                    '<td></td>' +
                    '<td></td>' +
                    '<td>No hay datos disponibles</td>' +
                    '<td></td>' +
                    '<td></td>' +
                    '</tr>';
                callback($('<table id="detPreventa" class="table striped">' + thead + tbody + '</table>')).show();
                $('#loader' + div).hide();
                $('#detail' + div).show();
                $('.dropdown-trigger').dropdown();
			}	
		}
	});
}


function estadoVisto(fecha,user,estado){
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
			url:"VistoPrev/"+fecha+"/"+user+"/"+estado,
			type:"POST",
			success:function(){
				location.reload();
			}
		});
	});
}


function Eliminar(elem){
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
            url: "ElimUno/"+elem,
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


/*****************************************************************************************************************************/
</script>
