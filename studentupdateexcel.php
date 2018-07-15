<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Upload Student Details</title>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>
<link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Roboto:100,300'>

      <link rel="stylesheet" href="css/style.css">

  
</head>

<body>

<form action="studentupdate.php" method="post"  enctype="multipart/form-data">
<b><center><img src="excel.png" width="20pt" height="20pt"><a href="student.xlsx">Download Excel template</a></center>
<center><font color="white"><h2>Update Student Details</h2></font></center>
<?php
session_start();
error_reporting(0);
if($_SESSION['exit']==1)
{
	echo "<div class='alert alert-warning alert-dismissable'><a href='#' class='close' data-dismiss='alert' aria-label='close'>×</a><strong>Already Uploaded Data.</strong></div>";
					
	$_SESSION['exit']=0;
}
else
	if($_SESSION['format']==1)
	{
		echo "<b><center>Incorrect Format</center></b>";
		$_SESSION['format']=0;
	}
	else 
		if($_SESSION['access']==1)
	{
		echo "<b><center>You insuffient permisssion add this user</center></b>";
		$_SESSION['access']=0;
	}
	?>
  <div class="upload">
 <div class="upload-files">
  <header>
   <p>
    <i class="fa fa-cloud-upload" aria-hidden="true"></i>
    <span class="up">up</span>
    <span class="load">load</span>
   </p>
  </header>
  <div class="body" id="drop">
   <i class="fa fa-file-text-o pointer-none" aria-hidden="true"></i>
   <p class="pointer-none"><b>Drag and drop</b> files here <br /> or <a href="" id="triggerFile">browse</a> to begin the upload</p>
			<input type="file" multiple="multiple" name="file1">
  </div>
  <footer>
   <div class="divider">
    <span><AR>FILES</AR></span>
   </div>
   <div class="list-files">
    <!--   template   -->
   </div>
			<button class="importar" type="sumbit">Sumbit</button>
  </footer>
 </div>
</div>
  
    <script src="js/index.js"></script>
</form>
</body>
</html>
