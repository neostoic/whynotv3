$(document).ready(function() {
    $.getJSON('pins.php',function(data) {
    	var like = '';
    	for (var i=0 ; i<data.length ; i++) {
    		like += "<div class='row'><div class='col-md-6'><center><img src='" + data[i]['Image'] + "' class='img-responsive img-thumbnail'></center></div>";
    		like += "<div class='col-md-6'><left><h3>" + data[i]['Event'] + "</h3></left></div></div>";
    	}
    	$('#events').append(like);
    });
});