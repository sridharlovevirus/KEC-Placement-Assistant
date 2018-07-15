<?php
//error_reporting(0);
session_start();
include 'db.php';
if(isset($_POST['submit']))
{
	$n=$_SESSION['user'];
	$senderid=$n."@kongu.edu";
	$target = "uploads/";
//$t=$_POST['t'];

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
$dept1=$_GET['dept'];

$y=substr($path, -1);
if($y=='-')
{
	$path="";
}
echo "path".$path;
	 $tu="select mailid from login where department='$dept1'";
	 $q1245=mysql_query($tu);
	 while($mailg=mysql_fetch_array($q1245))
	 {
		 if($senderid!=$mailg['mailid'])
		 {
			  $ra=rand(10000,99999);
 $q="insert into mail values('$n','$s','$mailg[mailid]','$msg','$path','$time',$ra,0)";
 $r=mysql_query($q);
		 }
 }
 

echo "<script>alert('mail sent!!')</script>";
header('Refresh:0; url=mailbox.php?sent=1');
}
?>