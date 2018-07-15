<?php
session_start();
include 'db.php';
$user=$_SESSION['user'];
$query="select * from login where id='$user'";
						 $q=mysql_query($query);
						 $n=mysql_num_rows($q);
						 $row = mysql_fetch_array($q);
						 $_SESSION['dp']=$row[8];
						 $dp=$row[8];
						 $mb=$row[7];
						 $em=$row[10];
						 $user=$row[0];
						 $_SESSION['mail']=$row[4];
						 $_SESSION['ph']=$row[7];
						 $_SESSION['name']=$row[2];
						 $_SESSION['id']=$row[0];
						 if(isset($_SESSION['user']))
						 {
						 }
						 else
						 {
							 header('Refresh: 0;url=index.php');
						 }
						 $mb=$_POST['mb'];
						 $pass=$_POST['pass'];
					     $pass1=$_POST['pass1'];
						 if($pass!=$pass1)
						 {
							 $_SESSION['error']=1;
							 header('Refresh: 0;url=form.php');
						 }
						 else
						 {
							  $_SESSION['error']=0;
						 }
						 $email=$_POST['em'];
						 $q="update login set pa='$pass',almail='$email',mobileno='$mb' where id='$user'";
						
						$r=mysql_query($q);
						if($r)
						{
							 header('Refresh: 0;url=profile.php');
						}
?>
