<?php
session_start();
error_reporting(0);
$ex=$_SESSION['v'];
if(isset($_POST['s']))
{
$code=$_POST['code'];
if($code==$ex)
{
$_SESSION['k']=1;
echo "<b><center>loading please wait...</center></b>";
header('Refresh:2; url=chpwd.php');

}
else
{
echo " wrong verification code ";
}
}
?>


<html>
<head>
	  <link href="mail.css" rel="stylesheet">
</head>
<body>

<div class="login-page">

<center> <font color="white"><b>Provide verification code</b></font></center><br>
  <div class="form">

    <form class="login-form" method="post" action="">
      <input type="text" placeholder="VERIFICATION CODE" name="code">
      
      <button name="s">Verify</button>
    
    </form>
  </div>
</div>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
	<script src="js/mail.js"></script>
	
</body>
</html>
