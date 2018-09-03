<script>
$(document).ready(function(){

$("#BuscarEnLogs").on("keyup",function(){
	var table = $("#tblLogs").DataTable();
	table.search(this.value).draw();
 });

var table = $("#tblLogs").DataTable({
		"ajax": "MostrarLogs",
        responsive:true,
        "autoWidth":false,
        "info": true,
        "sort":false,
        "destroy": true,
        "paging": true,
       /* "dom": 'T<"clear">lfrtip',
        "tableTools": {
            "sSwfPath": "<// echo base_url(); ?>assets/data/swf/copy_csv_xls_pdf.swf",
		},*/
        "pagingType": "full_numbers",
        "lengthMenu": [
            [20,50,100, -1],
            [20,50,100, "Todo"]
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
            { "data": "IdUsuario" },
            { "data": "Usuario" },
            { "data": "Mensaje" },
            { "data": "Fecha" }
        ]
    });

setInterval(function(){
	table.ajax.reload();
},1000);
});	

</script>
