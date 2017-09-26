


<?php
include('config.php');

$sql = "update prashan set status = '".$_POST['status']."' where id = ".$_POST['id'];

if ($conn->query($sql) === TRUE) {
    echo "Status updated";
} else {
    return false;
}




   $conn->close();
?>