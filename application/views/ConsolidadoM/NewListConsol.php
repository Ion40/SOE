<!--//////////////////////////////////////////////////////////
                CONTENIDO
///////////////////////////////////////////////////////////-->
<main class="mdl-layout__content mdl-color--grey-100">
    <div class="contenedor">
        <div class="container"><br>
            <h6 class="titulosGen" style="color:black;">Consolidado Total</h6><br>
            <div class="Buscar row column noMargen">
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
            <div class="input-field col s12 m12 l3">
                    <input id="date" type="text" class="datepicker center" placeholder="Selecciona una Fecha">
                </div>
            <div class="">
                <div class="row">
                    <div class="col s12 m12 l12">
                        <button id="" onclick="saveConsolidadoM()" 
                        class="btn btn-block btn-blue waves-effect waves-light hoverable right ">Guardar</button>      
                    </div>       
                </div>
                <div class="card">
                    <div class="card-content">
                        <div class="div-cont">
                            <table id="tblNewConsol" class="table striped">
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
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                        if (!$inv) {
                                        } else {
                                            foreach ($inv as $key) {
                                                echo "
                                                    <tr>
                                                        <td>".$key["Codigo"]."</td>
                                                        <td>".$key["Descripcion"]."</td>
                                                        <td>".number_format($key["GRM"],0)."</td>
                                                        <td><input value='0' class='txt".$key["Codigo"]."' type='text' name='Camp1' id='Camp1_".$key["Codigo"]."'></td>
                                                        <td><input value='0' class='txt".$key["Codigo"]."' type='text' name='Camp2' id='Camp2_".$key["Codigo"]."'></td>
                                                        <td><input value='0' class='txt".$key["Codigo"]."' type='text' name='Camp3' id='Camp3_".$key["Codigo"]."'></td>
                                                        <td><input value='0' class='txt".$key["Codigo"]."' type='text' name='Camp4' id='Camp4_".$key["Codigo"]."'></td>
                                                        <td><input value='0' class='txt".$key["Codigo"]."' type='text' name='Camp5' id='Camp5_".$key["Codigo"]."'></td>
                                                        <td><input value='0' class='txt".$key["Codigo"]."' type='text' name='Camp6' id='Camp6_".$key["Codigo"]."'></td>
                                                        <td><input value='0' class='txt".$key["Codigo"]."' type='text' name='Camp7' id='Camp7_".$key["Codigo"]."'></td>
                                                        <td><input value='0' class='txt".$key["Codigo"]."' type='text' name='Camp8' id='Camp8_".$key["Codigo"]."'></td>
                                                        <td><input value='0' class='txt".$key["Codigo"]."' type='text' name='Camp9' id='Camp9_".$key["Codigo"]."'></td>
                                                        <td><input value='0' class='txt".$key["Codigo"]."' type='text' name='Camp0' id='Camp0_".$key["Codigo"]."'></td>
                                                    </tr>
                                                ";
                                            }
                                        }
                                     ?>
                                </tbody>
                                <tfoot>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th class="green white-text center">1</th>
                                        <th class="green white-text center">2</th>
                                        <th class="green white-text center">3</th>
                                        <th class="green white-text center">4</th>
                                        <th class="green white-text center">5</th>
                                        <th class="green white-text center">6</th>
                                        <th class="green white-text center">7</th>
                                        <th class="green white-text center">8</th>
                                        <th class="green white-text center">9</th>
                                        <th class="green white-text center">10</th>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </div>
</main><br>
