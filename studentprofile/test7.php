

<?php
session_start();
$con=mysql_connect('localhost','root','');
mysql_select_db('kongu');
if(isset($_POST['save']))
{
$rollno=$_SESSION['user'];
$s1="delete from mca where rollno='$rollno'";
$s2="delete from be where rollno='$rollno'";
$s3="delete from mba where rollno='$rollno'";
$s4="delete from bsc where rollno='$rollno'";
mysql_query($s1,$con);
mysql_query($s2,$con);
mysql_query($s3,$con);
mysql_query($s4,$con);
$ce=$_POST['ce'];
$co=$_POST['careeroption'];
$fgen=$_POST['firstgen'];
$sem1=$_POST['sem1'];
$sem2=$_POST['sem2'];
$sem3=$_POST['sem3'];
$sem4=$_POST['sem4'];
$sem5=$_POST['sem5'];
$sem6=$_POST['sem6'];
$sem7=$_POST['sem7'];
$sem8=$_POST['sem8'];
$sem9=$_POST['sem9'];
$sem10=$_POST['sem10'];
$currentpercentage=$_POST['currentpercentage'];
$historyarrear=$_POST['historyarrear'];
$standingarrear=$_POST['standingarrear'];
$clearedarrear=$_POST['clearedarrear'];
$coursestart=$_POST['coursestart'];
	$my="select rollno from msc where rollno='$rollno'";
$r1=mysql_query($my,$con);
  $rowcount=mysql_num_rows($r1);
  if($rowcount==0)
  {
	  $sql="insert into msc values('$rollno','$co','$fgen','$sem1','$sem2','$sem3','$sem4','$sem5','$sem6','$sem7','$sem8','$sem9','$sem10','$currentpercentage','$historyarrear','$standingarrear','$clearedarrear','$coursestart','$ce')";
	  mysql_query($sql,$con);
	echo mysql_error($con);
	 echo "<script>alert('Data saved!!')</script>";
	 header('Location: end.php');
  }
  else
  {
	  $sql="update msc set rollno='$rollno',coption='$co',fgen='$fgen',sem1='$sem1',sem2='$sem2',sem3='$sem3',sem4='$sem4',sem5='$sem5',sem6='$sem6',sem7='$sem7',sem8='sem8',sem9='$sem9',sem10='$sem10',cp='$currentpercentage',ha='$historyarrear',sa='$standingarrear',ca='$clearedarrear',cs='$coursestart',ce='$ce' where rollno='$rollno'";
	    mysql_query($sql,$con);
	echo mysql_error($con);
	 echo "<script>alert('Data updated!!')</script>";
	 header('Location: end.php');
  }
}
?>
<html>
 <!-- msc -->
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
            <h2 class="text-primary">College Details</h2>
          </center>
          <hr>
          <br>
          <br>
          <form role="form" data-toggle="validator" name="myForm" class="text-warning" action="#over" method="post">
            <div class="form-group">
			
			

  
  
  
  	<div class="form-group has-feedback">
   
    <label for="careeroption" class="control-label"><b>Select The Career Option?</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
	  
      <select class="form-control" name="careeroption" id="careeroption" required="">
	  <option></option>
	  <option value="Placement">PLACEMENT </option>
	  <option value="higher education">HIGHER EDUCATION</option>	
	   <option value="entrepreneur">ENTREPRENEUR</option>
	  </select>
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div>
  
  
  
			<div class="form-group has-feedback">
   
    <label for="firstgen" class="control-label"><b>First Generation Employee ?</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
	  
      <select class="form-control" name="firstgen" id="firstgen" required="">
	  <option></option>
	  <option value="yes">YES</option>
	  <option value="no">NO</option>							
	  </select>
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div>
  <hr><hr><center><b>Mark Details</b></center>
  
  
    <div class="form-group has-feedback"> <label for="sem1" class="control-label"><b>Semester 1 Percentage:</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-list-alt"></i></span>
	  
      <input type="number" pattern="[0-9]{3}" min="1" max="100" class="form-control" name="sem1" id="sem1" placeholder="Semester 1" required="">
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div>
  
		<div class="form-group has-feedback"> <label for="sem2" class="control-label"><b>Semester 2 Percentage:</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-list-alt"></i></span>
	  
      <input type="number" pattern="[0-9]{3}" min="1" max="100" class="form-control" name="sem2" id="sem2" placeholder="Semester 2" required="">
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div>



	<div class="form-group has-feedback"> <label for="sem3" class="control-label"><b>Semester 3 Percentage:</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-list-alt"></i></span>
	  
      <input type="number" pattern="[0-9]{3}" min="1" max="100" class="form-control" name="sem3" id="sem3" placeholder="Semester 3" required="">
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div>	



	<div class="form-group has-feedback"> <label for="sem4" class="control-label"><b>Semester 4 Percentage:</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-list-alt"></i></span>
	  
      <input type="number" pattern="[0-9]{3}" min="1" max="100" class="form-control" name="sem4" id="sem4" placeholder="Semester 4" required="">
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div>	



	<div class="form-group has-feedback"> <label for="sem5" class="control-label"><b>Semester 5 Percentage:</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-list-alt"></i></span>
	  
      <input type="number" pattern="[0-9]{3}" min="1" max="100" class="form-control" name="sem5" id="sem5" placeholder="Semester 5" required="">
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div>	


	<div class="form-group has-feedback"> <label for="sem6" class="control-label"><b>Semester 6 Percentage:</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-list-alt"></i></span>
	  
      <input type="number" pattern="[0-9]{3}" min="1" max="100" class="form-control" name="sem6" id="sem6" placeholder="Semester 6" required="">
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div>	


	<div class="form-group has-feedback"> <label for="sem7" class="control-label"><b>Semester 7 Percentage:</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-list-alt"></i></span>
	  
      <input type="number" pattern="[0-9]{3}" min="1" max="100" class="form-control" name="sem7" id="sem7" placeholder="Semester 7" required="">
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div>	


	<div class="form-group has-feedback"> <label for="sem8" class="control-label"><b>Semester 8 Percentage:</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-list-alt"></i></span>
	  
      <input type="number" pattern="[0-9]{3}" min="1" max="100" class="form-control" name="sem8" id="sem8" placeholder="Semester 8" required="">
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div>	
  
  
  <div class="form-group has-feedback"> <label for="sem9" class="control-label"><b>Semester 9 Percentage:</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-list-alt"></i></span>
	  
      <input type="number" pattern="[0-9]{3}" min="1" max="100" class="form-control" name="sem9" id="sem9" placeholder="Semester 9" required="">
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div>	
  
  
  <div class="form-group has-feedback"> <label for="sem10" class="control-label"><b>Semester 10 Percentage:</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-list-alt"></i></span>
	  
      <input type="number" pattern="[0-9]{3}" min="1" max="100" class="form-control" name="sem10" id="sem10" placeholder="Semester 10" required="">
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div>	
  

<div class="form-group has-feedback"> <label for="currentpercentage" class="control-label"><b>Current Percentage:</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-list-alt"></i></span>
	  
      <input type="number" pattern="[0-9]{3}" min="1" max="100" class="form-control" name="currentpercentage" id="currentpercentage" placeholder="current percentage" required="">
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div>	
  
  
  
  
  
<div class="form-group has-feedback"> <label for="historyarrear" class="control-label"><b>History of Arrear:</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-list-alt"></i></span>
	  
      <input type="number" pattern="[0-9]{2}" min="0" max="33" class="form-control" name="historyarrear" id="historyarrear" placeholder="History Arrear" required="">
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div>	
  
  
  <div class="form-group has-feedback"> <label for="standingarrear" class="control-label"><b>Standing Arrear:</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-list-alt"></i></span>
	  
      <input type="number" pattern="[0-9]{2}" min="0" max="33" class="form-control" name="standingarrear" id="standingarrear" placeholder="Standing Arrear" required="">
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div>	
  <div class="form-group has-feedback"> <label for="clearedarrear" class="control-label"><b>Cleared Arrear:</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-list-alt"></i></span>
	  
      <input type="number" pattern="[0-9]{2}" min="0" max="33" class="form-control" name="clearedarrear" id="clearedarrear" placeholder="Cleared Arrear" required="">
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div>	
  
	  
			 		 <div class="form-group has-feedback"> <label for="coursestart" class="control-label"><b>Course Start:</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-list-alt"></i></span>
	  
      <input type="text" pattern="((2[0]{1}[0-9]{2}))" min="0" max="33" class="form-control" name="coursestart" id="coursestart" placeholder="2015" required="">
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div>
  
   <div class="form-group has-feedback"> <label for="coursestart" class="control-label"><b>Course end:</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-list-alt"></i></span>
	  
      <input type="text" pattern="((2[0]{1}[0-9]{2}))" min="0" max="33" class="form-control" name="ce" id="coursestart" placeholder="2016" required="">
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div>  <center><h5>Note:</h5><h6>Must save values and move to next page if you not press save button means no value is saved!!</h6></center>
			<center><a href="niv1.php" class="btn btn-success">Previous</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button type="submit" class="btn btn-info" name="save">Save</button>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="end.php" class="btn btn-danger">Next</a></center>
			
			</div>
			</form>
			</div>
			</div>
			</div>
			</div>
			</body>
			</html>