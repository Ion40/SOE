<header></header>
    <main></main>
    <footer class="page-footer" style="">
        <div class="center" style="padding:5px;">
            ©<?php echo date('Y')?> Copyright Informática DELMOR
        </div>
    </footer>
    <script type="text/javascript" src="<?php echo base_url('assets/js/jquery-2.1.1.min.js')?>"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/js/jquery.dataTables.min.js"></script>
        <script type="text/javascript" src="<?php echo base_url(); ?>assets/js/materialize.js"></script>


        <script type="text/javascript" src="<?php echo base_url(); ?>assets/js/sweetalert2.min.js"></script>
        <script type="text/javascript" src="<?php echo base_url(); ?>assets/js/chosen.jquery.js"></script>
        <script type="text/javascript" src="<?PHP echo base_url();?>assets/js/dataTables.buttons.min.js"></script>
        <script type="text/javascript" src="<?PHP echo base_url();?>assets/js/extensions/dataTables.colVis.min.js"></script>
        <script type="text/javascript" src="<?PHP echo base_url();?>assets/js/extensions/dataTables.tableTools.min.js"></script>
        <script src="<?PHP echo base_url();?>assets/js/bootstrap.js"></script> 

        <script type="text/javascript" src="<?php echo base_url(); ?>assets/js/highcharts.js"></script>
        <script type="text/javascript" src="<?php echo base_url(); ?>assets/js/highcharts-3d.js"></script>
        <script type="text/javascript" src="<?php echo base_url(); ?>assets/js/modules/data.js"></script>
        <script type="text/javascript" src="<?php echo base_url(); ?>assets/js/modules/exporting.js"></script>
        <script type="text/javascript" src="<?php echo base_url(); ?>assets/js/modules/exporting-data.js"></script>

        <!-- Biblioteca de gráficos do Google Chart -->
       <script type="text/javascript" src="<?php echo base_url(); ?>assets/js/charts_loader.js"></script>



        <script>    
            $(document).ready(function(){
                $(".link li a").each(function(){
                    if (this.href.trim() == window.location) {
                        $(this).css("background-color","rgba(0, 0, 0, 0.1)");
                    }
                });
                 $('.modal').modal({dismissible : false});
                 $('.datepicker').datepicker();
                 $('.sidenav').sidenav();
                 $(".dropdown-trigger").dropdown();
                 $('.tooltipped').tooltip();
				 $('.tabs').tabs();
            });
             var config = {
        '.chosen-select': {

        }
    }
    for (var selector in config) {
        $(selector).chosen(config[selector]);
    }

    $(".contraseña").on("click", function () {
		$("#newPassword").modal("open");
	});

     $("#showPass").on("change", function () {
     	if ($(this).is(":checked",true))
		{
			$("#password").attr("type","text");
		}else{
			$("#password").attr("type","password");
		}
	 });

     $("#btnActualizarPass").on("click", function () {
     	var form_data = {
     		Pass: $("#password").val()
		};

		 $.ajax({
			 url: "UpdatePassword",
			 type: "POST",
			 data: form_data,
			 beforeSend: function() {
			 	if ($("#password").val() == "")
			 	{
			 		swal({
						text: "Para actualizar debe ingresar una nueva contraseña!",
						type: "warning"
					});
			 		$.ajax.abort();
				}
			 },
			 success: function (data) {
				 swal({
					 text: "Contraseña actualizada!",
					 type: "success"
				 });
			 },
			 error: function () {
				 swal({
					 text: "Ocurrió un error al tratar de cambiar tu contraseña, pongase en contácto con el administrador",
					 type: "error"
				 });
			 }
		 });
	 });
        </script>
</body>
</html>

    <!--
        <script type="text/javascript" src="<?php echo base_url('assets/js/JQExcel.js')?>"></script>
        <script type="text/javascript">
            $(".botonExcel").click(function(event) {        
                
                $("#datos_a_enviar").val( $("<div>").append( $("#tbArticulos").eq(0).clone()).html());
                $("#FormularioExportacion").submit();
            });
        </script>
    
    -->
        <!--Graficas script-->
