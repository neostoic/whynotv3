<?php

session_start();

include('getyelp.php');
include('geteventful.php');
include('parse.php');
include('getuser.php');
include('rank.php');
include('sort.php');
include('sanitise.php');
include('topevent.php');

$lat = $_SESSION['lat'];
// $lat = 51.529;
$long = $_SESSION['long'];
// $long = -0.1255;
$cat = $_SESSION['cat'];
// $cat = 'cafe';
$user = $_SESSION['user'];
// $user = 'test1';
$refreshdata = $_SESSION['refresh'];

if ($refreshdata) {
	//GET DATA
	$places = getyelpall($lat,$long,$cat);
	$events = geteventful($lat,$long,$cat);
	//PARSE Data
	//yelp
	$yelp = parseyelp($places);
	$_SESSION['yelp'] = $yelp;
	//eventful
	$eventful = parseeventful($events);
	$_SESSION['eventful'] = $eventful;
	$_SESSION['refresh'] = false;
}

$yelp = $_SESSION['yelp'];
$eventful = $_SESSION['eventful'];

//users history
$userevents = getevents($user);

//sanitise data
//yelp
$yelp = sanitise($yelp,$userevents);
//eventful
if ($eventful) {
	$eventful = sanitise($eventful,$userevents);
}

// get user tags
$usertags = gettags($user);

// weight yelp
for ($i=0 ; $i<count($yelp) ; $i++) {
	$yelp[$i] = weight($yelp[$i],$usertags);
}

//weight eventful
if ($eventful) {
	for($i=0 ; $i<count($eventful) ; $i++) {
		$eventful[$i] = weight($eventful[$i],$usertags);
	}
}

//sort yelp
$yelp = sortevents($yelp);

//sort eventful
if ($eventful) {
	$eventful = sortevents($eventful);
}

//pick top
if ($eventful) {
	$suggestion = topevent($yelp[0],$eventful[0]);
	$_SESSION['suggestion'] = $suggestion;
} else {
	$suggestion = $yelp[0];
	$_SESSION['suggestion'] = $suggestion;
}
//print
print_r(json_encode($suggestion));

?>