<?php
session_start();
$dep=$_SESSION['dep'];
$rollno=$_SESSION['user'];
$dept=$dep;
?>


<html>
 <!-- bsc -->
<head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  <!-- Optional theme -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <!-- Latest compiled and minified JavaScript -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  <script src="boot/js/validator.js"></script>
<script src="date/js/date.js"></script>

</head>
<body class="bg-primary w-100 h-100 border border-dark text-danger">
  <br>
  <br>
  <div class="container">
    <div class="row clearfix" id="content-row">
      <div class="col-xs-16 column">
        <div class="well well-lg">
          <center>
            <h2 class="text-primary">Update your Semester mark</h2>
          </center>
          <hr>
          <br>
          <br>
          <form role="form" action="" data-toggle="validator" name="myForm" class="text-warning" action="#over" method="post">
            <div class="form-group">
			  	<div class="form-group has-feedback">
   
    <label for="careeroption" class="control-label"><b>Enter your mark percentage:</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
	  
     <input type="number" name="m" required>
    </div>
	<br>
	    <label for="careeroption" class="control-label"><b>Enter your current percentage after the update:</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
	  
     <input type="number" name="c" required>
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div>
  <button type="submit" class="btn btn-info" name="s">Save</button>
			</div>
			</form>
			</div>
			</div></div>
			</div>
			</body>
			</html>
			<?php
			if(isset($_POST['s']))
			{
				include 'db.php';
				$m=$_POST['m'];
				$c=$_POST['c'];
				$q="select * from sem where dept='$dep'";
				
				$q1=mysql_query($q);
				$row=mysql_fetch_array($q1);
				$semd=$row['sem'];
				$val="";
				if($semd==1)
				{
					$val="sem1";
				}
					if($semd==2)
				{
					$val="sem2";
				}
				
					if($semd==3)
				{
					$val="sem3";
				}
					if($semd==4)
				{
					$val="sem4";
				}
					if($semd==5)
				{
					$val="sem5";
				}
					if($semd==6)
				{
					$val="sem6";
				}
					if($semd==7)
				{
					$val="sem7";
				}
					if($semd==8)
				{
					$val="sem8";
				}
					if($semd==9)
				{
					$val="sem9";
				}
					if($semd==10)
				{
					$val="sem10";
				}
				if(($dept!='computer application')&&($dept!='msc')&&($dept!='mba')&&($dept!='bsc'))
					{
						$dept='be';
					}
				
				else if($dept=='computer application')
				{
					$dept='mca';
				}
					$t="insert into markupdate values('$rollno','$dep','$m','$c')";
					mysql_query($t);
					$d="update ".$dept." set ".$val."=".$m.",cp='$c' where rollno='".$rollno."'";
					mysql_query($d);
					echo "<script>alert('thanks for updating')</script>";
					header('Refresh:1; url=index.php');
			}
			?>