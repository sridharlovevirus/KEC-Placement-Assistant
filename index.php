<!DOCTYPE html>
<?php
$t=date('Y-m-d');
   include 'db.php';
$tu="delete from sem where e='$t'";
mysql_query($tu);
?>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
     <title>Kongu Engineering College</title>
     <link href="css/bootstrap.min.css" rel="stylesheet">
	 <link href="css/mainpage.css" rel="stylesheet">
	 <link href="css/video.css" rel="stylesheet">
	  <link href="css/main.css" rel="stylesheet">
	  <link href="css/sample.css" rel="stylesheet">
  </head>
  <body>
   
 <script>
$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip();   
});
</script>
<div id="load">
<div class="loading">
  <div class="loading-bar"></div>
  <div class="loading-bar"></div>
  <div class="loading-bar"></div>
  <div class="loading-bar"></div>
</div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<center><h5><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Loading...</b></h5></center>
</div>
<div id="contents">
	 <div   class= "background-wrap" >
 <video id="video-bg-elem"  preload = "auto"   autoplay="true"   loop = "loop"   muted = "muted">
 <source src="video.mp4" type= "video/mp4">
 video not supported	 </video> </div>
 	 <div class = "content">

<div id="content-wrapper">
<!-- PAGE CONTENT -->

          
    <br><br><div class="container">
        <div class="well">   <h3 style="color:black"><center>KONGU ENGINEERING COLLEGE</center><br><h6><center><b>(Autonomous)</b></center></h6><center><b>Perundurai,Erode.</center></h3></div>
        <div class="container">
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <h1 class="text-center login-title">Sign in to continue</h1>
            <div class="well">
               
					   <form class="form-signin" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="post">     

					   <?php
					   
					   session_start();
					  if(isset($_SESSION['user']) && isset($_SESSION['pass']))
					  {
						  
						  
							  echo "<h5 style='color:red'><center>Already Login..</center></h5>";
							  if($_SESSION['role']=='admin')
							  {
						   header('Refresh: 0;url=main.php');
							  }
							  else if($_SESSION['role']=='staff')
							  {
						   header('Refresh: 0;url=staffmain.php');
							  }
							  else if($_SESSION['role']=='student')
							  {
						   header('Refresh: 0;url=studentmain.php');
							  }
							  else if($_SESSION['role']=='hod')
							  {
						   header('Refresh: 0;url=hod.php');
							  }
					  }
					  else{
					
					   
					   $v=1;
					   $user='';
					 if ($_SERVER["REQUEST_METHOD"] == "POST")
					 {
				
					
						 if(isset($_POST["user"]))
						 {
						 
						  $user=$_POST["user"];
						 $query="select * from login where id='$user'";
						 $q=mysql_query($query);
						 $n=mysql_num_rows($q);
						 $row = mysql_fetch_array($q);
						 
						 $db=$row[8];
						$_SESSION['dep']=$row[3];
						 
						 if($n==1)
						 {
							 $_SESSION['user']=$row[0];
							 $v=0;
													 }
						 else
						 {
							   echo "<p class='profile-email' style='color:red'>Error Username</p>";
							   
							  
							   
							   
						 }
						 }
					 
						 if(isset($_POST["pass"]))
						 {
							  $pass=$_POST["pass"];
							$q1="select * from login where id='$user' and pa='$pass'";
							 $t=mysql_query($q1,$con);
							  $n1=mysql_num_rows($t);
							  if($n1==1)
							  {
								  $v=2;
							  }
							  else
							  {
								   echo "<p class='profile-email' style='color:red'>Error Password</p>";
							  }
							 
							
						 }
					 }
					   if($v==1)
					   {
						   
					   echo"<img class='profile-img' src='user.jpg'alt=''>";               
			   echo "<input type='text' name='user' class='form-control' placeholder='Username' required autofocus><br>";
                echo "<button class='btn btn-lg btn-primary btn-block' type='submit'>
                    Next </button><br>";
					// echo "<a href='#' class='need-help' data-toggle='tooltip' title='Username is ur REG-ID Default Password is your date of birth'>Need Help?</a>
 echo "<a href='forget.php' class='need-help' data-toggle='tooltip' title='Forget Password?'>Forget Password?</a>            
			<span class='clearfix'></span>";
					   }
					   if($v==2)
					   {
						   $_SESSION['user']=$row[0];
						   $_SESSION['role']=$row[5];
						   $_SESSION['pass']=$row[1];
						   
						   echo "<center><img src='image\load.gif' alt='Loading...' height='100px' width='100px'></center>";
						   $qw="update staff set status=1";
						   mysql_query($qw,$con);
						 
						  // header('Refresh: 0;url=main.php');
						  if($_SESSION['role']=='admin')
							  {
						   header('Refresh: 0;url=main.php');
							  }
							  else if($_SESSION['role']=='staff')
							  {
						   header('Refresh: 0;url=staffmain.php');
							  }
							  else if($_SESSION['role']=='student')
							  {
						   header('Refresh: 0;url=studentmain.php');
							  }
							  else if($_SESSION['role']=='hod')
							  {
						   header('Refresh: 0;url=hod.php');
							  }
					   }
					   										
					   if($v==0)
					   {
						   $dp=$row[8];
						   echo "<input type='hidden' name='user' value='$row[0]'>";
						
						  echo"<img class='profile-img' src='$dp' alt=''>";  
						     echo "<p class='profile-email'>$row[4]</p>";
						  echo "<input type='password' name='pass' class='form-control' placeholder='Password' required autofocus><br>";
                echo "<button class='btn btn-lg btn-primary btn-block' type='submit'>
                    Login</button><br>";
					 echo "<a href='forget.php' class='need-help' data-toggle='tooltip' title='Forget Password?'>Forget Password?</a>
                <span class='clearfix'></span>
                </form>";
					   }
					  }
				?>
            </div>
            <a href="<?php $v=1; ?>" class="text-center new-account">Sign in with a different account</a>
        </div>
    </div>
</div>
     </div><!-- End Container -->
<!-- PAGE CONTENT -->
</div>
</div>
</div>   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
	<script src="js/slide.js"></script>
	<script src="js/imageload.js"></script>
  </body>
</html>	