
<?php
session_start();
$con=mysql_connect('localhost','root','');
mysql_select_db('kongu');

if(isset($_POST['s']))
{
	$rollno=$_SESSION['user'];
	$c=$_POST['c'];
	$_SESSION['h']=$c;
	if($c=='HSC')
	{
		$s1="update studentpersonal set dregno='',dcollege='',dcertificate='',dboard='',dstart='',dend='',dspec='',dcutoff='',dcrank='' where rollno='$rollno'";
		mysql_query($s1,$con);
		mysql_error($con);
		$s="update studentpersonal set highedu='$c' where rollno='$rollno'";
		mysql_query($s,$con);
		header('Location: test2.php');
	}
	else if($c=='Diploma')
		
	{	
	$s1="update studentpersonal set hscregno='',hscschool='',hsccertificate='',hscboard='',hscstart='',hscend='',hscspec='',hsccutoff='',crank='' where rollno='$rollno'";
		mysql_query($s1,$con);
	$s="update studentpersonal set highedu='$c' where rollno='$rollno'";
		mysql_query($s,$con);
			header('Location: test3.php');
	}
}
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
            <h2 class="text-primary"></h2>
          </center>
          <hr>
          <br>
          <br>
          <form role="form" data-toggle="validator" name="myForm" class="text-warning" action="#over" method="post">
            <div class="form-group">
			  	<div class="form-group has-feedback">
   
    <label for="careeroption" class="control-label"><b>Select Your Higher studies?</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
	  
      <select class="form-control" name="c" id="c" required="">
	  <option></option>
	  <option value="HSC">HSC </option>
	  <option value="Diploma">Diploma</option>	
	
	  </select>
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div>
  <center><a href="test1.php" class="btn btn-success">Previous</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button type="submit" class="btn btn-info" name="s">Go</button>
			</div>
			</form>
			</div>
			</div></div>
			</div>
			</body>
			</html>