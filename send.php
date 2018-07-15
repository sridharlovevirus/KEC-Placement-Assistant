<?php
error_reporting(0);
session_start();
include 'db.php';
if(isset($_POST['submit']))
{
	$n=$_SESSION['user'];
	$target = "uploads/";
$t=$_POST['t'];

$s=$_POST['s'];
$msg=$_POST['msg'];
$file = rand(1000,100000)."-".$_FILES['file']['name'];
    $file_loc = $_FILES['file']['tmp_name'];
 $file_size = $_FILES['file']['size'];
 $file_type = $_FILES['file']['type'];
 $folder="uploads/";
 $path=$folder.$file;
 move_uploaded_file($file_loc,$folder.$file);
$time = date("d/m/y h:i:sa");
$y=substr($path, -1);
if($y=='-')
{
	$path="";
}

 $ra=rand(1000,9999);
 $r="select * from login where mailid='$t'";

 $m=mysql_query($r);
 $rt=mysql_num_rows($m);
 if($rt!=0)
 {
 $q="insert into mail values('$n','$s','$t','$msg','$path','$time',$ra,0)";
 $r=mysql_query($q);
 }
 else
 {
	 echo "<script>alert('invalid mail id')</script>";
	 header('Refresh:0; url=compose.php');
	exit();
 }
 echo "<script>alert('mail sent!!')</script>";
header('Refresh:0; url=mailbox.php?sent=1');
}
?>