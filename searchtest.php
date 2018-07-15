
<html>
<head>
	  <link href="css/mail.css" rel="stylesheet">
</head>
<body>

<div class="login-page">

<center> <font color="white"><b>Search Students</b></font></center><br>
<?php
	 $time = date("Y");


  echo "<div class='form'>";

    echo "<form class='login-form' method='post' action='sr.php'>";
      echo "<input type='number' placeholder='10th Percentage' name='sslcper'>";
	 
    echo "  <input type='number' placeholder='12th Percentage' name='hscper'>";
	 
	 echo "    <input type='number' placeholder='Ug Percentage' name='ugper'>";
	 
	  echo "    <input type='number' placeholder='CurrentPercentage' name='cper'>";
	
	
	 echo " <input type='number' placeholder='Standing Arrear' name='sa'><br>";
	  $time=date('Y');
	 echo "Select year:<br>";
  echo " <select name='year'>";
  while($count!=6)
  {
	//echo " <option></option>";
	 echo " <option value='$time'>".$time."</option>";
	
	 $count++;
	 $time--;
  }
	 echo " </select><br><br>";
     echo " <button name='submit'>Search Details</button>";

    
   echo " </form>";
 echo " </div>";



  ?>

</div>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
	<script src="js/mail.js"></script>
	
</body>
</html>
