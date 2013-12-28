$(document).ready(function() {
    $.getJSON('pins.php',function(data) {
    	var like = '';
    	for (var i=0 ; i<data.length ; i++) {
    		like += "<div class='row'>";
    		like += "<div class='col-md-3'></div>";
    		like += "<div class='col-md-3'><center><img src='" + data[i]['Image'] + "' class='img-pin img-responsive img-thumbnail'></center></div>";
    		like += "<div class='col-md-3'><left><h3>" + data[i]['Event'] + "</h3></left></div>";
    		like += "<div class='col-md-3'></div></div>";
    	}
    	$('#events').append(like);
    });
});