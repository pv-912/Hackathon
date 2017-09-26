<?php
include('config.php');
$sql1 = "UPDATE prashan set status = 0 WHERE id=19 and updated > date_sub(now(), interval 5 minutes)";
	var_dump(date_sub(now(),interval 5 minutes));
		if ($conn->query($sql1) === TRUE) {
		       echo "New record ";
		   }

$conn->close();

?>