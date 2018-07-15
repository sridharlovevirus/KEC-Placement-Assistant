<?php
$con=mysql_connect("localhost","root","");
echo "ok";
if(isset($_POST['fname'])&&isset($_POST['lname'])&&isset($_POST['occupation'])&&isset($_POST['dob']))
{
	$fname=$_POST['fname'];
	$lname=$_POST['lname'];
	$occupation=$_POST['occupation'];
	$dob=$_POST['dob'];
$sql="insert into student values ('$fname','$lname','$lname','$occupation','$dob')";
$res=mysql_query($sql);
	
}
?>