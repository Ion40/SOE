<!--//////////////////////////////////////////////////////////
                CONTENIDO
///////////////////////////////////////////////////////////-->
<main class="mdl-layout__content mdl-color--grey-100">
    <div class="contenedor">
        <div class="container"><br>
            <h5 class="titulosGen" style="color:black;">Lista de Consolidados</h5><br>
            <div class="Buscar row column noMargen">
                <div class="col s1 m1 l1 offset-l3 offset-m2">
                    <i class="material-icons iconSearch">search</i>
                </div>
                <div class="input-field col s12 m6 l4">
                    <input id="BuscarUsuarios" type="text" placeholder="Buscar">
                    <label for="search"></label>
                </div>
            </div>
        

        <!--/////////////////////////////////////////////////////////////////////////////////////////
                                       BOTONES
        //////////////////////////////////////////////////////////////////////////////////////////-->
        <div class="row">
            <!--<div class="col s6 m6" style="text-align:left;">
                <div id="retornarP">
                     <a data-tooltip='REGRESAR' href="" class="purple-text darken-1 tooltipped">
                        <i class="waves-effect waves-light material-icons titulosGen">keyboard_backspace</i>
                    </a>
                </div>  
            </div> -->
            <div class="col s12 m12 l12">
                <div class="row">
                    <div class="col s12 m12 l12">
                        <a href="NewConsolidado" class="btn btn-block btn-blue waves-effect waves-light hoverable right">NUEVO</a>
                    </div>       
                </div>
                <div class="card">
                    <div class="card-content">
                     
                        <div class="div-cont">
                            <table id="TblUsuarios" class="table striped">
                                <thead>
                                    <tr class="tblcabecera">
                                        <th>FECHA</th>
                                        <th>TOTAL</th>
                                        <th>Acciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                   <?php
                                    if(!$data){
                                    }else{
                                        foreach ($data as $key) {
                                            echo "
                                                <tr>
                                                    <td class='center'>".$key["Fecha"]."</td>
                                                    <td class='center'>".$key["TOTAL"]."</td>
                                                    <td class='center'>
                                                    <a onclick='detalles(".'"'.$key["Fecha"].'"'.")' class='modal-trigger tooltipped' data-tooltip='ver detalles' data-position='left' href='#modalDet'><i class='material-icons'>remove_red_eye</i></a>

                                                    <a class='tooltipped' data-tooltip='Remisión' href='javascript:void(0)'><i class='material-icons'>assignment_turned_in</i></a>

                                                    <a onclick='Eliminar(".'"'.$key["Fecha"].'"'.")' href='javascript:void(0)' class='tooltipped' data-tooltip='Eliminar' data-position='right'><i class='material-icons'>delete</i></a>
                                                    </td>
                                                </tr>
                                            ";
                                        }
                                    }
                                   ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </div>
</main><br>


<div id="modalDet" class="modal">
    <div class="modal-content">
       <a href="#!" class="modal-close right" style="margin-top: -15px;"><i class="material-icons">close</i></a>
       <br><br>
       <div class="row">
           <div class="col s12 m12 l12">
               <table class="striped table" id="tblDetCons">
                 <thead>
                    <tr class="tblcabecera">
                       <th>Codigo</th>
                       <th>Descripcion</th>
                       <th>GRM</th>
                       <th class="center">1</th>
                       <th class="center">2</th>
                       <th class="center">3</th>
                       <th class="center">4</th>
                       <th class="center">5</th>
                       <th class="center">6</th>
                       <th class="center">7</th>
                       <th class="center">8</th>
                       <th class="center">9</th>
                       <th class="center">10</th>
                       <th id="TOTAL" class="center">TOTAL</th>
                    </tr>
                  </thead>
                  <tbody>
                  </tbody>
				   <tfoot>
				   		<tr>
							<th class=""></th>
							<th class=""></th>
							<th class=""></th>
							<th class="green white-text"></th>
							<th class="green white-text"></th>
							<th class="green white-text"></th>
							<th class="green white-text"></th>
							<th class="green white-text"></th>
							<th class="green white-text"></th>
							<th class="green white-text"></th>
							<th class="green white-text"></th>
							<th class="green white-text"></th>
							<th class="green white-text"></th>
							<th class="grey white-text" id="totalFooter"></th>
						</tr>
				   </tfoot>
               </table>
           </div>
       </div>
    </div>
  </div>
