<?php

function topevent($yelp,$eventful) {
	if ($yelp['weight']>$eventful['weight']) {
		return $yelp;
	} else {
		return $eventful;
	}
}

?>