<!--//////////////////////////////////////////////////////////
                CONTENIDO
///////////////////////////////////////////////////////////-->
<main class="mdl-layout__content mdl-color--grey-100">
    <div class="contenedor">
        <div class="container"><br>
            <h5 class="titulosGen" style="color:black;">Registro de actividades</h5><br>
            <div class="Buscar row column noMargen">
                <div class="col s1 m1 l1 offset-l3 offset-m2">
                    <i class="material-icons iconSearch">search</i>
                </div>
                <div class="input-field col s12 m6 l4">
                    <input id="BuscarEnLogs" type="text" placeholder="Buscar">
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
                <div class="card hoverable">
                    <div class="card-content">
                     
                        <div class="div-cont">
                            <table width="100%" id="tblLogs" class="table striped">
                                <thead>
                                    <tr class="tblcabecera">
                                        <th>CODIGO USUARIO</th>
                                        <th>USUARIO</th>
                                        <th>MENSAJE</th>
                                        <th>FECHA</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <div class="divcont"></div>
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