$(document).ready(function() {
	getJSON('https://api.instagram.com/v1/users/13712751/media/recent/?client_id=0d2190cb952643d4bba30349d438f165',function(data) {
		document.write(data);
	});
})