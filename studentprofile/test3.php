<?php
session_start();

$con=mysql_connect('localhost','root','');
mysql_select_db('kongu');
if(isset($_POST['save']))
{
	$p=$_POST['p'];
$rollno=$_SESSION['user'];
$diplomaregno=$_POST['diplomaregno'];
$diplomacollege=$_POST['diplomacollege'];
$diplomacerificate=$_POST['diplomacerificate'];
$diplomaboard=$_POST['diplomaboard'];
$diplmostart=$_POST['diplmostart'];
$diplmoend=$_POST['diplmoend'];
$diplmospec=$_POST['diplmospec'];
$diplmocutoff=$_POST['diplmocutoff'];
$counsellingrank=$_POST['counsellingrank'];

$s="update studentpersonal set dregno='$diplomaregno',dcollege='$diplomacollege',dcertificate='$diplomacerificate',dboard='$diplomaboard',dstart='$diplmostart',dend='$diplmoend',dspec='$diplmospec',dcutoff='$diplmocutoff',dcrank='$counsellingrank',dper='$p' where rollno='$rollno'";
mysql_query($s,$con);
echo mysql_error($con);
	 echo "<script>alert('Data saved!!')</script>";
	 		header('Location: niv1.php');
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
            <h2 class="text-primary">Diploma Details</h2>
          </center>
          <hr>
          <br>
          <br>
          <form role="form" data-toggle="validator" name="myForm" class="text-warning"  method="post">
            <div class="form-group">
			<div class="form-group has-feedback"> <label for="diplomaregno" class="control-label"><b>Diploma Register no:</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
	  
      <input type="text" pattern="[0-9]{6}" class="form-control" name="diplomaregno" id="diplomaregno" placeholder="Diploma REGISTER NO" required="">
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div>
  
  
  
  
  <div class="form-group has-feedback"> <label for="diplomacollege" class="control-label"><b>Diploma College Name:</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
	  
      <input type="text" pattern="[a-zA-Z]+"  class="form-control" name="diplomacollege" id="diplomacollege" placeholder="Diploma College NAME" required="">
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div>
  
  
  <div class="form-group has-feedback"> <label for="diplomacerificate" class="control-label"><b>diploma Certificate No:</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
	  
      <input type="text" pattern="[0-9]{8}"  class="form-control" name="diplomacerificate" id="diplomacerificate" placeholder="Diploma CERIFICATE NUMBER" required="">
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div>
  
  <div class="form-group has-feedback">
   
    <label for="diplomaboard" class="control-label"><b>Select Diploma board?</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
	  
      <select class="form-control" name="diplomaboard" id="diplomaboard" required="">
	  <option></option>
	  <option value="Stateboard">Stateboard</option>
	  <option value="Matriculation">Matriculation</option>
	 
		
										
	  </select>
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div>
  <div class="form-group has-feedback"> <label for="sslcstart" class="control-label"><b>Diplmo percentage:</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
	  
      <input type="number" min="50" max="100"  class="form-control" name="p" id="p" placeholder="EX:80%" required="">
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div>

   <div class="form-group has-feedback"> <label for="hscstart" class="control-label"><b>Diploma Start Date:</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
	  
      <input type="text" pattern="((0[0-9]|1[0-2])-(2[0]{1}[0-9]{2}))"  class="form-control" name="diplmostart" id="diplmostart" placeholder="EX:(MM-YYYY) 06-2012" required="">
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div>
  
  <div class="form-group has-feedback"> <label for="diplmoend" class="control-label"><b>Diplmo End Date:</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
	  
      <input type="text" pattern="((0[0-9]|1[0-2])-(2[0]{1}[0-9]{2}))"  class="form-control" name="diplmoend" id="diplmoend" placeholder="EX:(MM-YYYY) 05-2013" required="">
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div>

  
  <div class="form-group has-feedback"> <label for="diplmospec" class="control-label"><b>Diplmo Specilaization:</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-list-alt"></i></span>
	  
      <input type="text" pattern="[A-z]+"  class="form-control" name="diplmospec" id="diplmospec" placeholder="diplmo Specilaization" required="">
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div>

  
  
    <div class="form-group has-feedback"> <label for="diplmocutoff" class="control-label"><b>Diplmo Cutoff:</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-list-alt"></i></span>
	  
      <input type="text" pattern="[0-9]+"  class="form-control" name="diplmocutoff" id="diplomocutoff" placeholder="diplmo Cutoff" required="">
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div>
    <div class="form-group has-feedback"> <label for="counsellingrank" class="control-label"><b>Counselling Rank:</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-list-alt"></i></span>
	  
      <input type="text" pattern="[0-9]+"  class="form-control" name="counsellingrank" id="counsellingrank" placeholder="Counselling Rank" required="">
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b>  <center><h5>Note:</h5><h6>Must save values and move to next page if you not press save button means no value is saved!!</h6></center>
  <center><a href="niv.php" class="btn btn-success">Previous</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button type="submit" class="btn btn-info" name="save">Save</button>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="niv1.php" class="btn btn-danger">Next</a></center>
			</div>
			</form>
			</div>
			</div>
			</div>
			</div>
			</body>
			</html>