


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
            <h2 class="text-primary">   <center><b>Enable Semester Mark Entry</b></center></h2>
          </center>
          <hr>
          <br>
          <br>
          <form role="form" action="enable.php" data-toggle="validator" name="myForm" class="text-warning" action="#over" method="post">
            <div class="form-group">
			  	<div class="form-group has-feedback">
   
    <label for="careeroption" class="control-label"><b>Select the Semester?</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
	  
      <select class="form-control" name="c" id="c" required="">
	  <option></option>
	  <option value="1">I</option>
	  <option value="2">II</option>	
	
<option value="3">III</option>
	  <option value="4">IV</option>
<option value="5">V</option>
	  <option value="6">VI</option>	
<option value="7">VII</option>
<option value="8">VIII</option>	
<option value="9">IX</option>
<option value="10">X</option>  
	  </select>
    </div>
	
	<br>  <label for="careeroption" class="control-label"><b>Starting Date?</b></label><b>
	  <div class="input-group">
	<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
	
	   <input type="date"  class="form-control" name="sd" required="">
	   </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div>
	<br>  <label for="careeroption" class="control-label"><b>Ending date?</b></label><b>
	  <div class="input-group">
	<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
	
	   <input type="date"  class="form-control" name="ed" required="">
	   </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div>
  

  <br>
  <button type="submit" class="btn btn-info" name="s">Enable</button>
			</div>
			</form>
			</div>
			</div></div>
			</div>
			</body>
			</html>