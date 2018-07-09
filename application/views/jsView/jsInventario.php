<script>
$(document).ready(function(){

$("#BuscarInventario").on("keyup",function(){
  var table = $("#TblProducos").DataTable();
  table.search(this.value).draw();    
});
});

$("#TblProducos").DataTable({
        responsive:true,
        "autoWidth":false,
        "info": true,
        "sort":true,
        "destroy": false,
        "dom": 'T<"clear">lfrtip',
        "tableTools": {
            "sSwfPath": "<?php echo base_url(); ?>assets/data/swf/copy_csv_xls_pdf.swf",
        },
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
    } );


$("#btnCargaProd").click(function(){
    if($("#fecha").val() == "")
    {
        swal({
            text: "La fecha de carga no puede estar vacía",
            type: "warning"
        }).then(function(){
            $("#fecha").focus();
        });
        if($("#dataProducto").val() == "")
        {
            swal({
                text: "No se ha cargado ningun archivo excel",
                type: "error"
            });
            event.preventDefault();
        }
    }else{
        $("#formCargaProducto").submit();
        espere();
    }
});

function espere() {
    swal({
        title: "Cargando datos",
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

function editar(id) {
    $("#codigoedit").val(id);
	var i = 0;
	var array = new Array();
	var table = $("#TblProducos").DataTable();
	table.rows().eq(0).each(function (index) {
		var row = table.row(index);
		var data = row.data();
		if ($("#" + data[0]).attr("id") == id) {
			$(".ocult" + data[0]).hide();
			$(".editar" + data[0]).show();
			$("#" + data[0]).hide();
			$(".update" + data[0]).show();
		}
		$("#cancel" + data[0]).click(function () {
			$(".ocult" + data[0]).show();
			$(".editar" + data[0]).hide();
			$("#" + data[0]).show();
			$(".update" + data[0]).hide();
		});

        $("#update"+data[0]).click(function(){
            var form_data = {
            	codigoedit: $("#codigoedit").val(), 
            	editgrm: $("#editgrm"+data[0]).val(),
            	editsaldo: $("#editsaldo"+data[0]).val()
            };
            $.ajax({
            	url: "ActualizarProd",
            	type: "POST",
            	async: true,
            	data: form_data,
            	success: function (data) {
            		if (true) {
            			swal({
            				text: "Datos actualizados",
            				type: "success"
            			}).then(function () {
            				location.reload();
            			});
            		} else {
            			swal({
            				text: "Ocurrió un error, contáctece con el administrador",
            				type: "error"
            			});
            		}
            	}
            });
        });
	});
}
</script>
