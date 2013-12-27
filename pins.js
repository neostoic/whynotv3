$(document).ready(function() {
    $.getJSON('pins.php',function(data) {
    	var like = '';
    	for (var i=0 ; i<data.length ; i++) {
    		like += "<div class='row'><div class='col-md-3'><center><img src='" + data[i]['Image'] + "' class='img-responsive img-circle'></center></div>";
    		like += "<div class='col-md-8'><left><h3>" + data[i]['Event'] + "</h3></left></div></div>";
    	}
    	$('#events').append(like);
    });
});