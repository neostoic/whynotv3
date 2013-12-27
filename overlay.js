function hideDiv(){

    if ($(window).width() > 1024) {

            $("#overlay").fadeOut("slow");

    }else{

        $("#overlay").fadeIn("slow");

    }

}

$(document).ready(function() {
	hideDiv();
	$('#overlay').click(function() {
		$(this).slideUp();
	})
})