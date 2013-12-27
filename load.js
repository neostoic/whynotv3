$(document).ready(function() {
    $.getJSON('model.php',function(data) {
        $('#name').text(data['name']);
        $('#desc').text(data['desc']);
        $('#image').attr('src',data['image']);
        $( '#map' ).attr( 'src', function ( i, val ) { return val; });
        $('#info').attr('href',data['url']);
    });

    $('body').on('swipeleft',function(){
        $.ajax({
            type: "POST",
            url: "addtodb.php",
            dataType: 'json',
            data: {'choice': '-1'}
        });
        $.getJSON('model.php',function(data) {
            $('#name').text(data['name']);
            $('#desc').text(data['desc']);
            $('#image').attr('src',data['image']);
            $( '#map' ).attr( 'src', function ( i, val ) { return val; });
            $('#info').attr('href',data['url']);
    });

    $('body').on('swiperight',function(){
        $.ajax({
            type: "POST",
            url: "addtodb.php",
            dataType: 'json',
            data: {'choice': '1'}
        });
        $.getJSON('model.php',function(data) {
            $('#name').text(data['name']);
            $('#desc').text(data['desc']);
            $('#image').attr('src',data['image']);
            $( '#map' ).attr( 'src', function ( i, val ) { return val; });
            $('#info').attr('href',data['url']);
        });
    });
});
});