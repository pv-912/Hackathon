<?php include('config.php');  ?>



<!DOCTYPE html>
<html>
<meta http-equiv="refresh" content="1500"/>
<head>
	<title>Avalibility</title>
</head>
<body>

	<center><p class="avail">Status</p></center>
	<table>
		<thead>
			<td>Name</td>
			<td>Department</td>
			<td>Status</td>
		</thead>
		
	<?php  
			$sql = "SELECT * FROM prashan";
		$result = $conn->query($sql);

		if ($result->num_rows > 0) {
		    
		    while($row = $result->fetch_assoc()) {
		    	
		    	if($row['status']==1){
		        echo " <tr><td class='profName'> " . $row["name"]."</td><td class='profName'> "  . $row["department"]."</td><td class='active'>  </td></tr>";
		    }
		    else{
		        echo " <tr><td class='profName'> " . $row["name"]."</td><td class='profName'> "  . $row["department"]."</td><td class='nonactive'>  </td></tr>";
		    }
		    }
		} else {
		    echo "No Online";
		}
		$conn->close();

		?>
		
	</table>
</body>
</html>