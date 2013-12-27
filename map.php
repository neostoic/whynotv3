<!DOCTYPE html>
<?php
session_start();
// First, we need to take their postcode and get the lat/lng pair:
$postcode = $_SESSION['suggestion']['postcode'];

// Sanitize their postcode:
$search_code = urlencode($postcode);
$url = 'http://maps.googleapis.com/maps/api/geocode/json?address=' . $search_code . '&sensor=false';
$json = json_decode(file_get_contents($url));

$lat = $json->results[0]->geometry->location->lat;
$lng = $json->results[0]->geometry->location->lng;

if (!$lat) {
    $lat=$_SESSION['suggestion']['lat'];
    $lng = $_SESSION['suggestion']['long'];
}

if (!$lat) {
    $lat = $_SESSION['lat'];
    $long = $_SESSION['long'];
}

?>
<html>
<head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <style type="text/css">
        html { height: 100%}
        body { height: 100%; margin: 0; padding: 0 }
        #map-canvas { height: 100% }
    </style>
    <script type="text/javascript"
            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAaKsyipdH7qWdbo8n7ZkdbUzqwdZatus4&sensor=false">
    </script>
    <script type="text/javascript">
        function initialize() {
            var myLatlng = new google.maps.LatLng(<?php echo $lat . "," . $lng;?>);
            var mapOptions = {
                center: myLatlng,
                zoom: 16,
                scrollwheel: false,
                draggable: false,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var map = new google.maps.Map(document.getElementById("map-canvas"),
                mapOptions);
            var marker = new google.maps.Marker({
                position: myLatlng,
                map: map
            });
        }
        google.maps.event.addDomListener(window, 'load', initialize);
    </script>
</head>
<body>
<div id="map-canvas"/>
</body>
</html>