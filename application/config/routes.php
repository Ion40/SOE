<?php
defined('BASEPATH') OR exit('No direct script access allowed');
$route['default_controller'] = 'Login_controller';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;

$route["Login"] = "Login_controller";
$route["Acreditar"] = "Login_controller/Acreditar"; 
$route["Salir"] = "Login_controller/Salir";

/***************************Rutas Usuarios*********************************/

$route["Usuarios"] = "Usuarios_controller";
$route["GuardarU"] = "Usuarios_controller/guardarUsuario";
$route["Baja/(:any)"] = "Usuarios_controller/darBaja/$1";
$route["Restaurar/(:any)"] = "Usuarios_controller/restaurar/$1";
$route["UpdatePassword"] = "Usuarios_controller/updatePass";

/***************************Rutas Usuarios*********************************/

/***************************Rutas Inventario***********************************************/

$route["Inventario"] = "Inventario_controller";
$route["cargarProd"] = "Inventario_controller/cargarInventario"; 
$route["ActualizarProd"] = "Inventario_controller/actualizarProd";
$route["productos"] = "Inventario_controller/listarProductos"; 

/***************************Rutas Inventario***********************************************/

/***************************Rutas Ordenes***********************************************/

$route["Ordenes"] = "Ordenes_controller";
$route["NuevaOrden"] = "Ordenes_controller/nuevaOrden"; 
$route["GuardarOrden"] = "Ordenes_controller/guardarOrden";
$route["detalleOrden/(:any)"] = "Ordenes_controller/getOdenDetalles/$1"; 
$route["detalleOrden2/(:any)/(:any)"] = "Ordenes_controller/getOdenDetalles2/$1/$2";
$route["detalleSupervisor/(:any)/(:any)"] = "Ordenes_controller/detalleSupervisor/$1/$2"; 
$route["DetOrden/(:any)/(:any)/(:any)"] = "Ordenes_controller/detallesOrdenSupervisor/$1/$2/$3";
$route["remisionOrd/(:any)/(:any)/(:any)"] = "Ordenes_controller/remisionOrden/$1/$2/$3";
$route["remisionOrdSupervisor/(:any)/(:any)"] = "Ordenes_controller/remisionOrdenSupervisor/$1/$2";
$route["LlavesOrd"] = "Ordenes_controller/incrementarLlave";
$route["Visto/(:any)/(:any)/(:any)"] = "Ordenes_controller/estadoVisto/$1/$2/$3";
$route["DetallesOrdenYan/(:any)/(:any)/(:any)"] = "Ordenes_controller/detallesOrdenYan/$1/$2/$3";
$route["ActualizarOrden"]= "Ordenes_controller/actualizarOrden";
$route["ElimUno/(:any)"]= "Ordenes_controller/eliminarUno/$1";  

/***************************Rutas Ordenes***********************************************/

/***************************************************************************************** */
$route["Preventas"] = "Preventas_controller";
$route["NuevaPreventa"] = "Preventas_controller/nuevaOrdenPreventa";
$route["GuardaPreventa"] = "Preventas_controller/guardarPreventa";
$route["detallePreventa/(:any)"] = "Preventas_controller/getPrevenDetalle/$1";
$route["detallePreventa2/(:any)/(:any)"] = "Preventas_controller/getPrevenDetalle2/$1/$2";
$route["DetOrdenPre/(:any)/(:any)"] = "Preventas_controller/detallePreventaPorRuta/$1/$2";
$route["DetOrdenPreGen/(:any)/(:any)/(:any)"] = "Preventas_controller/detallePreventaPorRutaGen/$1/$2/$3";  
$route["remisionPre/(:any)/(:any)/(:any)"] = "Preventas_controller/Remisionpreventa/$1/$2/$3";
$route["Llaves"] = "Preventas_controller/incrementarLlave";
$route["DetalleModal/(:any)/(:any)/(:any)"] = "Preventas_controller/modalDetalles/$1/$2/$3";
$route["ActualizaPrev"] = "Preventas_controller/actualizarOrdenPrev";
$route["VistoPrev/(:any)/(:any)/(:any)"] = "Preventas_controller/estadoVisto/$1/$2/$3";

/***************************************************************************************** */

/****************************************MONITOREO************************************************* */
$route["Monitoreo"] = "Monitoreo_controller";
$route["MostrarLogs"] = "Monitoreo_controller/mostrarLogs";

/****************************************MONITOREO************************************************* */

/****************************************CONSOLIDADO************************************************* */
$route["Consolidado"] = "Consolidado_controller";
$route["NuevoConsolidado"] = "Consolidado_controller/NuevoCons";
$route["CargarNuevoConsolidado/(:any)"] = "Consolidado_controller/getConsolidado/$1";
$route["GuardarCons"] = "Consolidado_controller/guardarConsolidado";
$route["repetidos/(:any)/(:any)/(:any)"] = "Consolidado_controller/buscarRepetidos/$1/$2/$3";
$route["RemisionCons/(:any)/(:any)"] = "Consolidado_controller/Remision/$1/$2";
$route["DetalleConsolidado/(:any)/(:any)"] = "Consolidado_controller/DetallesCons/$1/$2";
$route["EliminarConsol/(:any)/(:any)"] = "Consolidado_controller/eliminarCons/$1/$2";


$route["NewConsolidadoPre/(:any)"] ="Consolidado_controller/nuevoConsolidadoP/$1";
$route["NewConsolidadoOrder/(:any)"] ="Consolidado_controller/nuevoConsolidadoOrder/$1";
$route["GuardarConsP"] = "Consolidado_controller/guardarConsolidadoP";
$route["GuardarConsO"] = "Consolidado_controller/guardarConsolidadoO";

$route["InfoConsolidado/(:any)"] = "Consolidado_controller/detallesConsolidado/$1";
$route["remisionConsolidado"]  = "Consolidado_controller/incrementarLlave";

/****************************************CONSOLIDADO************************************************* */

/****************************************INICIO************************************************* */
$route["Inicio"] = "Inicio_controller";
$route["MasVendidos"] = "Inicio_controller/masVendidos";

/****************************************INICIO************************************************* */


$route["Bat"] = "bat_controller/execBat";


$route["ListConsolidado"] = "ListaConsolidado_controller";
$route["NewConsolidado"] = "ListaConsolidado_controller/newConsol";  
$route["SaveConsolidado"] = "ListaConsolidado_controller/guardarConsolidadoM";  
$route["DetConsolidado/(:any)"] = "ListaConsolidado_controller/detalleConsolidado/$1";
$route["EliminarConsolM/(:any)"] = "ListaConsolidado_controller/Delete/$1";

/***************************************************************************************************/
$route["Clientes"] = "Clientes_controller";
$route["SaveClientes"] = "Clientes_controller/guardarCliente";
$route["UpdateClientes"] = "Clientes_controller/actualizarCliente";
$route["mostrarClientes"] = "Clientes_controller/getClientes";
$route["BajaCliente/(:any)/(:any)"] = "Clientes_controller/bajaCliente/$1/$2";

/***************************************************************************************************/
$route["Orders"] = "OrdenesS_controller";
$route["NewOrders"] = "OrdenesS_controller/newOrderS";
$route["DetallesOrderS/(:any)/(:any)"] = "OrdenesS_controller/detalles_OrdenesS/$1/$2";
$route["saveOrdenS"] = "OrdenesS_controller/guardarOrdenS";
$route["DetOrdenS/(:any)"] = "OrdenesS_controller/getDetalleOrdenS/$1";
$route["DetallesOrderSModal/(:any)/(:any)"] = "OrdenesS_controller/DetallesModal/$1/$2";
$route["changeState/(:any)/(:any)/(:any)"] = "OrdenesS_controller/estadoVistoS/$1/$2/$3";
$route["DetOrderSxCli/(:any)/(:any)"] = "OrdenesS_controller/DetallesOrdenSXCliente/$1/$2";
$route["ActualizarOrdenS"] = "OrdenesS_controller/actualizarOrdenS";
$route["remisionOrdenSRutas/(:any)/(:any)"] = "OrdenesS_controller/remisionOrdenSRutas/$1/$2";
$route["remisionOrdenSCliente/(:any)/(:any)/(:any)"] = "OrdenesS_controller/remisionOrdenScliente/$1/$2/$3";
$route["LlavesOrdS"]  = "OrdenesS_controller/incrementarLlaveS";
$route["ElimUnoS/(:any)"]  = "OrdenesS_controller/eliminarUnoS/$1";

/***************************************************************************************************/
$route["PreventasS"] = "PreventasS_controller";
$route["NewPreventS"] = "PreventasS_controller/newPreventaS";
$route["SaveOrdPrevS"] = "PreventasS_controller/guardarPreventaS";
$route["DetOrdenPrevS/(:any)"] = "PreventasS_controller/getDetalleOrdenPrevS/$1";
$route["DetallesPreventas/(:any)/(:any)"] = "PreventasS_controller/detalles_OrdenesPrevS/$1/$2";
$route["DetallesOrdPrevSXCliente/(:any)/(:any)"] = "PreventasS_controller/DetallesOrdenPrevSXCliente/$1/$2";
$route["DetallesOrderPrevSModal/(:any)/(:any)"] = "PreventasS_controller/DetallesModal/$1/$2";
$route["ElimUnoPrevS/(:any)"]  = "PreventasS_controller/eliminarUnoPrevS/$1";
$route["ActualizarOrdenPrevS"]  = "PreventasS_controller/actualizarOrdenPrevS";
$route["remisionOrdenPreSCliente/(:any)/(:any)/(:any)"] = "PreventasS_controller/remisionOrdenPrevScliente/$1/$2/$3";
$route["remisionOrdenPrevSRutas/(:any)/(:any)"] = "PreventasS_controller/remisionOrdenPrevSRutas/$1/$2";

/***************************************************************************************************/
$route["ConsolidadoS"] = "ConsolidadoS_controller";
$route["NuevoConsolidadoS"] = "ConsolidadoS_controller/NuevoConsolidadoS";
$route["NewConsolidadoOrderS/(:any)"] = "ConsolidadoS_controller/nuevoConsolidadoOrderS/$1";
$route["GuardarConsOS"] = "ConsolidadoS_controller/guardarConsolidadoOS";
$route["repetidosS/(:any)/(:any)/(:any)"] = "ConsolidadoS_controller/buscarRepetidos/$1/$2/$3";

$route["NewConsolidadoOrderPrevS/(:any)/(:any)"] = "ConsolidadoS_controller/nuevoConsolidadoPS/$1/$2";
$route["GuardarConsPS"] = "ConsolidadoS_controller/guardarConsolidadoPS";

$route["NewConsolidadoUnif/(:any)"] = "ConsolidadoS_controller/nuevoConsolidadoUnif/$1";
$route["GuardarConsolidadosS"] = "ConsolidadoS_controller/guardarConsolidadoS";
$route["InfoConsolidadoS/(:any)"] = "ConsolidadoS_controller/detallesConsolidadoS/$1";
$route["DetalleConsolidadoS/(:any)/(:any)/(:any)"] = "ConsolidadoS_controller/DetallesConsS/$1/$2/$3";
$route["EliminarConsolS/(:any)/(:any)/(:any)"] = "ConsolidadoS_controller/EliminarCons/$1/$2/$3";
$route["RemisionConsS/(:any)/(:any)/(:any)"] = "ConsolidadoS_controller/RemisionS/$1/$2/$3";

