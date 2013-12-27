$(document).ready(function() {
	$('i').click(function() {
	    $.ajax({
	        type: "POST",
	        url: "pin.php",
	        dataType: 'json',
	        data: {'pin': '1'}
	    });
	    $('i').css('color','#f1c40f');
	    $('#save').css('color','#f1c40f');
	    $('#save').text('Saved!');
    });    
})