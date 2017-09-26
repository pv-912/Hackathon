<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>

</body>
</html>
<?php
$servername = "localhost";
$username = "root";
$password = "99569";
$dbname = "hackathon";
$conn = new mysqli($servername, $username, $password, $dbname);


if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}   ?>