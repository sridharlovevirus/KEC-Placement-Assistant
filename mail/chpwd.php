<?php

session_start();
error_reporting(0);
if($_SESSION['k']!=1)
{
echo "forbidden access";
exit();
}
?>

<html>
<head>
	  <link href="mail.css" rel="stylesheet">
</head>
<body>

<div class="login-page">

<center> <font color="white"><b>Change passcode</b></font></center><br>
  <div class="form">

    <form class="login-form" method="post" action="">
      <input type="password" placeholder="Provide ur new password" name="code">
      
      <input type="password" placeholder="Again enter your password" name="code1">
      <button name="s">Change passcode</button>
    
    </form>
  </div>
</div>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
	<script src="js/mail.js"></script>
	
</body>
</html>
<?php

$id=$_SESSION['u'];
if(isset($_POST['s']))
{

$p=$_POST['code'];

$p1=$_POST['code1'];

if ($p==$p1)
{
//error_reporting(0);
mysql_connect('localhost','root','');
mysql_select_db('kongu');
$q="update login set pa='$p' where id='$id'";
mysql_query($q);
session_unset();
session_destroy();
echo "<center><b>password changed.<br> plz wait....</center>";

header('Refresh:1;url=../index.php');
}
else
{
echo "<center>two password don't match</center>";

}
}

?>