<?php

include('yelp.php');
include('yelp2.php');
include('yelpbus.php');

function getyelpall($lat,$long,$cat) {
	$data = array();
	$data[] = json_decode(getyelp($lat,$long,$cat),true);
	$data[] = json_decode(getyelp2($lat,$long,$cat),true);
	$data = $data[0]['businesses'];
	return $data;
}

function getbus($id) {
	$data = array();
	$data[] = json_decode(yelpbus($id));
	//print_r(yelpbus($id));
}

//getyelpall(51.529,-0.1255,'pub');
//getbus('craft-beer-co-london');

?>