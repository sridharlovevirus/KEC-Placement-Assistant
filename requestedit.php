<?php
session_start();
$user=$_SESSION['user'];
mysql_connect('localhost','root','');
mysql_select_db('kongu');

if(isset($_GET['request']))
{
	$rollno=$_GET['rollno'];
	$e="select * from studentpersonal where rollno='$rollno'";
	$r=mysql_query($e);
	$re=mysql_fetch_array($r);
	$o=$re['finish'];
	if($o==0)
	{
		echo "<script>alert('Already Accepted!!!')</script>";
		header('Refresh:1;url=mailbox.php');
		exit();
	}
	else{
	
if($_GET['request']==1)
{
$q="update studentpersonal set finish=0 where rollno='$rollno'";
mysql_query($q);
$rollno=$rollno."@kongu.edu";
echo "<script>alert('request accepted!!!!')</script>";
	 $t=date("d/m/y h:i:sa");
	 $rt=rand(11111,99999);
$et="insert into mail values('$user','Accept for Editing Personal Information','$rollno','Your Request Was Successfully processed','','$t','$rt',0)";
mysql_query($et);
header('Refresh:1;url=mailbox.php');
}
else
{
	echo "<script>alert('request deny!!!!')</script>";
	$_SESSION['drollno']=$rollno;
	header('Refresh:1; url=res.php');
}
}
}
?>