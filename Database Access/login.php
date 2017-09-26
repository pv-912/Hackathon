<?php
   include("config.php");
   
   session_start();
   
   if($_SERVER["REQUEST_METHOD"] == "POST") {
      $myusername = $_POST['name'];
      $mydepartment = $_POST['department'];
    
      
      $sql = "SELECT * FROM prashan WHERE name = '".$myusername."' and department = '".$mydepartment."'";
   
      $result = mysqli_query($conn,$sql);

      $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
      echo $row['active'];
    $count = mysqli_num_rows($result);
      
      
		
      if($count == 1) {
          echo  "'".$myusername."'";
         session_register("'".$myusername."'");
         $_SESSION['login_user'] = $myusername;
         
         header("location: welcome.php");
      }else {
         $error = "Invalid Credentials";
      }
   }
?>


<html>
   
   <head>
      <title>Login Page</title>
      
      <style type = "text/css">
         body {
            font-family:Arial, Helvetica, sans-serif;
            font-size:14px;
         }
         
         label {
            font-weight:bold;
            width:100px;
            font-size:14px;
         }
         
         .box {
            border:#666666 solid 1px;
         }
         a{
             text-decoration:none;
         }
      </style>
      
   </head>
   
   <body bgcolor = "#FFFFFF">
	
      <div align = "center">
         <div style = "width:300px; border: solid 1px #333333; " align = "left">
            <div style = "background-color:#333333; color:#FFFFFF; padding:3px;"><b>Login</b></div>
				
            <div style = "margin:30px">
               
               <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method = "post">
                  <label>UserName  :</label><input type = "text" name = "name" class = "box"/><br /><br />
                  <label>Password  :</label><input type = "text" name = "department" class = "box" /><br/><br />
                  <input type = "submit" value = " Submit "/><br />
               </form>
               <a href="signup.php" >Don't Have Account, Register Here</a>
               <div style = "font-size:11px; color:#cc0000; margin-top:10px"><?php echo $error; ?></div>
					
            </div>
				
         </div>
			
      </div>

   </body>
</html>