<script>    
$(document).ready(function(){

    $("#BuscarDetOrdenes").on("keyup",function(){
            var table = $("#tblDetOr").DataTable();
            table.search(this.value).draw();
        });

    $("#BuscarDetPrev").on("keyup",function(){
            var table = $("#tblDetOrPrev").DataTable();
            table.search(this.value).draw();
        }); 

    $("#tblDetOr,#tblDetOrPrev").DataTable({
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
    });
});




</script>