<script>
$(document).ready(function(){
Top10Mas();	
});

//FUNCION PARA CONVERTIR UN JSON A UN ARRAY
function json2array(json_data){
  var result = [];
  for(var i in json_data)
    result.push([i, json_data[i]]);
 
  return result;
}

function Top10Mas(){
	var url_data = "MasVendidos";
	var vendidos;
	var options;

	$.ajax({
	  type: 'GET',
	  url: url_data,
	  dataType: 'json',
	  success: function(data) {
	    vendidos = json2array(data.vendidos);
	    options = data.opciones;
	  },
	  error: function() {
	    swal({
	    	text: "Ocurrió un error al procesar los datos de la gráfica",
	    	type: "error"
	    });
	  }
	});
	google.charts.load('current', {'packages':['corechart']});
	google.charts.setOnLoadCallback(function(){
	  data = google.visualization.arrayToDataTable(vendidos);
	  var chart = new google.visualization.PieChart(document.getElementById('myChart1'));
	  chart.draw(data, options);
	});
}
</script>