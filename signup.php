
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
               
               <form action = "signupentry.php" method = "post">
                  <label>Name  :<br></label><input type = "text" name = "name" class = "box"/><br /><br />
                  <label>Department    :</label><br><input type = "text" name = "department" class = "box" /><br/><br />
                  <!-- <label>Status  :</label><input type = "int" name = "status" class = "box" /><br/><br /> -->
                  
                  <input type = "submit" value = " Submit "/><br />
               </form>
               <a href="login.php" >Log In</a>
               <div style = "font-size:11px; color:#cc0000; margin-top:10px"><?php echo $error; ?></div>
					
            </div>
				
         </div>
			
      </div>

   </body>
</html>