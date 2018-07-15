<?php
session_start();
include '../databaseconnection/db.php';
					 
$fileName = $_FILES["file1"]["name"]; // The file name
$fileTmpLoc = $_FILES["file1"]["tmp_name"]; // File in the PHP tmp folder
$fileType = $_FILES["file1"]["type"]; // The type of file it is
$fileSize = $_FILES["file1"]["size"]; // File size in bytes
$fileErrorMsg = $_FILES["file1"]["error"]; // 0 for false... and 1 for true
$id1=$_SESSION['id'];
 $inputFileName="profile/".$id1. '.' . end(explode(".",$_FILES["file1"]["name"]));
 $format=explode(".",$fileName);
 $_SESSION['dp']=$inputFileName;
 if($format[1]=='jpg'||$format[1]=='jpeg'||$format[1]=='png'||$format[1]=='bmp')
 {
	 if (!$fileTmpLoc) { // if file not chosen
    echo "ERROR: Please browse for a file before clicking the upload button.";
    exit();
}
if(move_uploaded_file($fileTmpLoc, "$inputFileName")){
	$_SESSION['ok']=2;
    $id=$_SESSION['user'];
	
	$s=0;
	$sql="update logindetails set userimagepath='$inputFileName' where username='$user'";
				$r=mysql_query($sql,$con);
	echo $sql;
	 // header('Refresh: 0;url=profile.php');
} else {
    echo "move_uploaded_file function failed";
}
 }
 else
 {
	 $_SESSION['format']=1;
//	 header('Refresh: 0;url=profileupload.php');
 }
?>