
<html>
<head>
<head>
 
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="css/pr.css">
  <link rel="stylesheet" href="css/wave.css">
    <link rel="stylesheet" href="css/button.css">
  <script src="plugins/jQuery/jquery-2.2.3.min.js"></script>
  <script src="js/pr.js"></script>

</head>
<body>
<a href="#"><button  class="btn btn-primary"> <br><br><span class="glyphicon glyphicon-home"></span>Home</button></a>
<a href="profile.php"><button  class="btn btn-success"> <br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;KONGU ENGINERRING COLLEGE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</button>
<div class="waveWrapper waveAnimation">
<br><br><br><br>
  <div class="waveWrapperInner bgTop">
    <div class="wave waveTop" style="background-image: url('image/top.png')"></div>
	<br><br><br><br><Br><br><br><br>
<div class="container">
<div class="container">
    <div class="picture-container">
        <div class="picture">
		<form action="fileok.php" method="post"  enctype="multipart/form-data">
            <img src="user.jpg" class="picture-src" id="wizardPicturePreview" title="" required>
            <input type="file" id="wizard-picture" class="" name="file1" required>
        </div>
         <b><h2><font color="black">Choose Picture</font></h2></b>
		  <button class="kaydet"><span> Update</span></button>
		  </form>
</div></div></div>
	</div>
  <div class="waveWrapperInner bgMiddle">
  
    <div class="wave waveMiddle" style="background-image: url('image/mid.png')"></div>
	
  </div>
  <div class="waveWrapperInner bgBottom">
    <div class="wave waveBottom" style="background-image: url('image/bot.png')"></div>

  </div>
</div>

</body>
</html>
<?php
session_start();
 echo "<div class='waveWrapperInner bgMiddle'>";
 
if(isset($_SESSION['format']))
{
	$p=$_SESSION['format'];
if($p)
{
	
	echo "<div class='container'>";
	echo "<div class='alert alert-danger alert-dismissable'>";
    echo "<a href='#' class='close' data-dismiss='alert' aria-label='close'>×</a>";
    echo "<strong>File Format Error!</strong></div>";
	echo "</div>";
	$_SESSION['format']=0;
}
}
echo "</div>";
?>