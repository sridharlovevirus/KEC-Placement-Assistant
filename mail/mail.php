<?php
session_start();
error_reporting(0);
$con=mysql_connect('localhost','root','');
mysql_select_db('kongu');

$m=$_POST['mobno'];
$rollno=$_POST['roll'];
//echo $m;
						 $_SESSION['u']=$rollno;
 
						 $query="select * from login where id='$rollno' and mobileno='$m'";
						 $q=mysql_query($query);
						
						 $row = mysql_fetch_array($q);
						$q1="select * from login where mobileno='$m'";
						  $qq=mysql_query($q1);
						   $row = mysql_fetch_array($qq);
						//   echo $q1;
						   if($row['mobileno']=="")
						   {
							   echo "<center><b>mobile number Not correct</b></center>";
						   }
						   else
						   {
						 if($row[2]!="")
						 {
						session_start();
						$s1=$_SESSION['v'];
						$s="YOUR VERIFICATION CODE IS:";
						$s1=$s.$s1;
						$s1=$s1."  Message From KEC";
include( 'way2sms-api.php' );
sendWay2SMS ( '9042578767' , 'keerthi' , $m , $s1 );
header('Refresh:5; url=verify.php');
echo "<b><center>Verification code sent to ur mobile number";
}
else
{
	echo "username not found";
}
}
?>