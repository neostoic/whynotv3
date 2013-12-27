<?php

session_start();

$suggestion = $_SESSION['suggestion'];
$name = $suggestion['name'];
$tags = $suggestion['tags'];
$user = $_SESSION['user'];
$image = $suggestion['image'];

$json = $_POST;
$choice = $json['choice'];

$con = mysqli_connect("localhost","root","root","whynotv3");
if (mysqli_connect_errno())
{
	echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

for ($i=0 ; $i<count($tags) ; $i++) {
	$updatetagssql = "INSERT INTO `UserTags` (`User`, `Tag`, `Weight`) VALUES ('$user','$tags[$i]', '$choice') ON DUPLICATE KEY UPDATE `Weight` = `Weight` + $choice";
	mysqli_query($con,$updatetagssql);
}

$sql = "INSERT INTO `UserHistory`(`User`, `Event`, `Image` ,`Choice`) VALUES ('$user','$name','$image','$choice')";
mysqli_query($con,$sql);

?>