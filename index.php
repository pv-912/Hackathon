<!DOCTYPE html>
<html>
<head>
	<title>form</title>
</head>
<body>

<form method="POST" action="form_connect.php">
Name: <input type="text" name="name" >

<br><br>
E-mail: <input type="text" name="email" >

  <br><br>

 Password :  <input type="password" name="password" >
    <input type="submit" name="submit" value="submit">

</form>
<br><br><br>
<a href="get_table.php">All Values<br></a>

<a href="table.php">Availibility<br></a>


Welcome <?php echo $_POST["name"]; ?><br>
Your email address is: <?php echo $_POST["email"];echo $_POST["password"]; ?>

</body>
</html>

</body>
</html>