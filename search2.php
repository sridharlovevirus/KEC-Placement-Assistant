<html>
<head>
	  <link href="css/mail.css" rel="stylesheet">
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	  <style>
	  div {
    background-color: white;
}
	  </style>
	  
</head>
<body>
<center> <font color="white"><b><h3>Search Students</h3></b></font></center><br>
<div class="login-page">


<?php
	 $time = date("Y");


    echo "<div class=''><form  method='post' action='sr2.php'>";
      echo "<div class='form-group'><input type='number' class='form-control' placeholder='10th Percentage' name='sslcper'></div>";
	
    echo "  <div class='form-group'><input type='number' class='form-control' placeholder='12th Percentage' name='hscper'></div>";
	

	  echo "  <div class='form-group'>  <input type='number' class='form-control' placeholder='CurrentPercentage' name='cper'></div>";
	
	echo "    <div class='form-group'><input type='number' class='form-control' placeholder='UgPercentage' name='ugper'></div>";
	 echo " <div class='form-group'><input type='number' class='form-control' placeholder='Standing Arrear' name='sa'></div><br>";
	  
	 
	 echo "<b>Select department:</b><br><br>";
	  
	  echo " <div class='form-group'><select name='dept1[]'  class='form-control' multiple='multiple' required>";
	echo " <option></option>";

	echo " <option value='computer application'>MCA</option>";
	echo "  <option value='bsc'>Bsc</option>";
		echo "<option value='mba'>MBA</option>";
	echo "<option value='msc'>Msc</option>";
	echo "<option value='civil'>Civil</option>";
	echo "<option value='cse'>CSE</option>";
	echo "<option value='it'>IT</option>";
	echo "<option value='mech'>Mech</option>";
	echo "<option value='ece'>ECE</option>";
	echo "<option value='eee'>EEE</option>";
echo "<option value='automobiles'>Auto Mobiles</option>";	

	
	
	 echo " </select></div><br><br>";
	 
	 
	 echo " <div class='form-group'><input type='number' class='form-control' placeholder='History of Arrear' name='ha'><br>";
	  $time=date('Y');
	 echo "<b>Select year:</b><br>";
  echo " <select name='year' class='form-control'>";
  while($count!=6)
  {
	//echo " <option></option>";
	 echo " <option value='$time'>".$time."</option>";
	
	 $count++;
	 $time--;
  }
	 echo " </select></div><br><br>";
     echo " <center><button name='submit' class='btn btn-primary'>Search Details</button></center></div><br><br>";

    
   echo " </form>";



 ?>
 <center><a href="search.php">Home</a></center>
</div>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	<script src="js/mail.js"></script>
	
</body>
</html>