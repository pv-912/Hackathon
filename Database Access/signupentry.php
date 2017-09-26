<?php
   include("config.php");
   $sql = "INSERT INTO prashan (name,department,status)
   VALUES ('".$_POST['name']."','".$_POST['department']."',0)";
   
   if ($conn->query($sql) === TRUE) {
       echo "New record created successfully";
   } else {
       echo "Error: " . $sql . "<br>" . $conn->error;
   }
   
   $conn->close();
?>