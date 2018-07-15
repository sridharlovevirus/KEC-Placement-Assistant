<?php
$rollno="";
$department="";
$token="";
include 'db.php';
if(isset($_GET['rollno']))
{
$rollno=$_GET['rollno'];
}
if(isset($_GET['department']))
{
$department=$_GET['department'];
}
if(isset($_GET['token']))
{
$token=$_GET['token'];
}
if(($rollno!="")&&($department!="")&&($token!=""))
{
$sql="insert into fcm values('$rollno','$department','$token')";
mysql_query($sql);
}
if(isset($_GET['d']))
{
if($_GET['d']==1)
{
$r=$_GET['r'];
$s="delete from fcm where Rollno='$r'";
mysql_query($s);
}
}
?>
