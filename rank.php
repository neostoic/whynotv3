<?php

function weight($event,$usertags) {
	if($event['image']) {
		$event['weight'] += 1;
	}
	if($event['source'] == 'yelp') {
		$event['weight'] += 1;
	}
	for ($i=0 ; $i<count($event['tags']) ; $i++) {
		for ($j=0 ; $j<count($usertags) ; $j++) {
			if($event['tags'][$i] == $usertags[$j]['Tag']) {
				$event['weight'] += $usertags[$j]['Weight'];
			}
		}
	}
	if (!$event['weight']) {
		$event['weight'] = 0;
	}
	return $event;
}

?>