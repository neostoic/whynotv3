<?php

session_start();

$suggestion = $_SESSION['suggestion'];
$name = $suggestion['name'];
$user = $_SESSION['user'];

$json = $_POST;
$choice = $json['pin'];

$con = mysqli_connect("localhost","root","root","whynotv3");
if (mysqli_connect_errno())
{
	echo "Failed to connect to MySQL: " . mysqli_connect_error();
}

$insertpins = "INSERT INTO `Pins`(`User`, `Event`) VALUES ('$user','$name')";
mysqli_query($con,$insertpins);

?>