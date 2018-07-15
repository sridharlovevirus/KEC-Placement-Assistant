<?php
session_start();
$con=mysql_connect('localhost','root','');
mysql_select_db('kongu');
if(isset($_POST['save']))
{
	$mark=$_POST['sslcmark'];
	$per=$_POST['sslcper'];
	$rollno=$_SESSION['user'];
	$sslcregno=$_POST['sslcregno'];
	$sslcschool=$_POST['sslcschool'];
	$sslccerificate=$_POST['sslccerificate'];
	$sslcboard=$_POST['sslcboard'];
	$sslcstart=$_POST['sslcstart'];
	$sslcend=$_POST['sslcend'];
	$my="update studentpersonal set sslcregno='$sslcregno',sslcschool='$sslcschool',sslccertificate='$sslccerificate',sslcboard='$sslcboard',sslcstart='$sslcstart',sslcend='$sslcend',sslcmark='$mark',sslcper='$per' where rollno='$rollno'";
	mysql_query($my,$con);
		echo mysql_error($con);
		 echo "<script>alert('Data saved!!')</script>";
		 	header('Location: niv.php');
}
?>


<html>

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
            <h2 class="text-primary">SSLC  Details</h2>
          </center>
          <hr>
          <br>
          <br>
          <form role="form" data-toggle="validator" name="myForm" class="text-warning" action="#over" method="post">
            <div class="form-group">
			
			 <div class="form-group has-feedback"> <label for="sslcregno" class="control-label"><b>Sslc Register no:</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
	  
      <input type="text" pattern="[0-9]{6}" class="form-control" name="sslcregno" id="sslcregno" placeholder="SSLC REGISTER NO" required="">
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div>
  
  
  
  
  <div class="form-group has-feedback"> <label for="sslcschool" class="control-label"><b>Sslc School Name:</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
	  
      <input type="text" pattern="[a-zA-Z]+"  class="form-control" name="sslcschool" id="sslcschool" placeholder="SSLC SCHOOL NAME" required="">
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div>
  
  
  <div class="form-group has-feedback"> <label for="sslccerificate" class="control-label"><b>Sslc certificate No:</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
	  
      <input type="text" pattern="[0-9]{8}"  class="form-control" name="sslccerificate" id="sslccerificate" placeholder="SSLC CERTIFICATE NUMBER" required="">
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div>
  
  <div class="form-group has-feedback">
   
    <label for="sslcboard" class="control-label"><b>Select Sslc board?</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
	  
      <select class="form-control" name="sslcboard" id="sslcboard" required="">
	  <option></option>
	  <option value="Stateboard">Stateboard</option>
	  <option value="Matriculation">Matriculation</option>
	 
		
										
	  </select>
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div>
  
  <div class="form-group has-feedback"> <label for="sslcstart" class="control-label"><b>Sslc mark:</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
	  
      <input type="number" min="150" max="500"  class="form-control" name="sslcmark" id="sslcmark" placeholder="EX:450" required="">
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div>
  
  
  <div class="form-group has-feedback"> <label for="sslcstart" class="control-label"><b>Sslc percentage:</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
	  
      <input type="number" min="50" max="100"  class="form-control" name="sslcper" id="sslcper" placeholder="EX:80%" required="">
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div>

   <div class="form-group has-feedback"> <label for="sslcstart" class="control-label"><b>Sslc Start Date:</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
	  
      <input type="text" pattern="((0[0-9]|1[0-2])-(2[0]{1}[0-9]{2}))"  class="form-control" name="sslcstart" id="sslcstart" placeholder="EX:(MM-YYYY) 06-2010" required="">
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div>
  
  <div class="form-group has-feedback"> <label for="sslcend" class="control-label"><b>Sslc End Date:</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
	  
      <input type="text" pattern="((0[0-9]|1[0-2])-(2[0]{1}[0-9]{2}))"  class="form-control" name="sslcend" id="sslcend" placeholder="EX:(MM-YYYY) 05-2011" required="">
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div>


  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  </div>
  
  
  
  
  
  
  
  
  
  <br><Br>
  
    <center><h5>Note:</h5><h6>Must save values and move to next page if you not press save button means no value is saved!!</h6></center>
  
  <center><a href="new.php" class="btn btn-success">Previous</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button type="submit" class="btn btn-info" name="save">Save</button>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="niv.php" class="btn btn-danger">Next</a></center>
  
  
			</div>
			</form>
			</div>
			</div>
			</div>
			</div>
			</body>
			</html>
			
		