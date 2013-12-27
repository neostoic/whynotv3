<?php

function geteventful($lat,$long,$cat) {
	$url = "http://api.eventful.com/json/events/search?app_key=LD4Sg27hx2B2W5pF&sort_order=popularity&page_size=40&include=categories,links&where=" . $lat . "," . $long . "&date=today&within=2&keywords=" . $cat;
	$data = file_get_contents($url);
	$data = json_decode($data,true);
	if ($data['total_items']!=0) {
	$data = $data['events']['event'];
	return $data;
	}
}

?>