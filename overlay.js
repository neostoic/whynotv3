function hideDiv(){

    if ($(window).width() > 1024) {

            $("#overlay").fadeOut("fast");
    }else{

        $("#overlay").fadeIn("slow");
        $('#swipeleftbtn_left').fadeOut("fast");
        $('#swiperightbtn_right').fadeOut("fast");
    }

}

$(document).ready(function() {
	hideDiv();
	$('#overlay').click(function() {
		$(this).slideUp();
	})
})