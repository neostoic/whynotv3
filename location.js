window.onload = function(){
    if(navigator.geolocation)
        navigator.geolocation.getCurrentPosition(handlesucces, onError);
}

function handlesucces(location) {
    document.getElementById("latitude").value = location.coords.latitude;
    document.getElementById("longitude").value = location.coords.longitude;
}

function onError() {
	document.write("Error");
}