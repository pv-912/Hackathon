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

		// $sql1 = "UPDATE prashan set status = '1' WHERE `timestamp` &gt; DATE_SUB(NOW(), INTERVAL 1 MINUTE)";
		// if ($conn->query($sql1) === TRUE) {
		//        echo "New record created successfully";
		//    }


		

		$conn->close();

		?>
		
	</table>
<style>
body{
	width: 100vw;
	margin:0;
	padding:0;
	overflow-x: hidden;

  background: red; /* For browsers that do not support gradients */
  background: -webkit-linear-gradient(-90deg, #99d6ff, #1aa3ff); /* For Safari 5.1 to 6.0 */
}

	.active,
	.nonactive{
		background-color: #fafafa;
		text-align: center;
	}

		.active:before {
	
    content: "•"; 
    color: #00cc00; 
    font-size: 35px;
}
.nonactive:before {
	
    content: "•"; 
    color: black; 
    font-size: 35px;
}
		.avail{
			margin-top: 20px;
			font-size: 40px;
			color: red;
		}
		table{
			margin-top: -15px;
		}
		thead{
			background-color: #003484;
		}
		thead td{
			margin:0;
			color: #fff;
			width: 25vw;
			padding:10px 0;
			font-size: 2vw;
			text-align: center;
		}
		.profId,
		.profName{
			background-color: #fafafa;
			padding:10px 10vw;
			font-size: 1.5vw;
			text-align: center;
			color: #555
		}

		@media only screen and (max-width: 520px) {
			.avail{
			font-size: 30px;
			color: #000;
		}
			thead{
			background-color: #003484;
		}
		thead td{
			min-width: 32.5vw;
			padding:10px 0;
			font-size: 4vw;
			text-align: center;
			color: #fff;

		}

		
		.profId,
		.profName{
			background-color: #fafafa;
			padding:10px 0;
			font-size: 2.8vw;
			text-align: center;
			min-width: 32.5vw;
		}
		}
		
	</style>

</body>
</html>