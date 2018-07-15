<?php

//error_reporting(0);
if(isset($_GET['download']))
{
	if($_GET['download']==1)
	{
		 header('Content-Type: application/xls');
 header('Content-Disposition: attachment; filename=studentdetails.xls');
	}
}
session_start();
$dep=$_SESSION['dep'];
$con=mysql_connect('localhost','root','');
mysql_select_db('kongu');

if($dep!='Office')
{
	if($dep=='bsc')
	{
	$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";
		$q=mysql_query($query);
	}
	else if($dep=='computer application')
	{
	$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	
		$q=mysql_query($query);
	}
	else if($dep=='mba')
	{
$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	
		$q=mysql_query($query);
	}
	else if($dep=='msc')
	{
		$query="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";
		$q=mysql_query($query);
	}

	else
	{
		
		
		$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";
		$q=mysql_query($query);
		
	}
	$_SESSION['q']=$query;
if($dep!='office'){
					
					$count=mysql_num_rows($q);
						 if($count==0)
						 {
							 echo "<script>alert('No Record Found');</script>";
						 }
						 
						
}
else
{
	$query="select * from login l,studentpersonal s,";
						 $q=mysql_query($query);
}	
}
	echo "<left><a href='index.php'>Home</a></left>";	
echo "<left><a href='search.php'>Previous Menu</a></left>";	
?>
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
     <title>Kongu Engineering College</title>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
</head>
<body>
<?php  echo "<b><br><a href='view.php?download=1'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Download Report As Excel Document&nbsp;&nbsp;&nbsp;</a></b><img src='excel.png' width='20pt' height='20pt'><br>"; ?>
<?php
if(($dep=="bsc"))
{
	echo "<center> <b>Student Details<b></center><br><br>";
echo "<table class='table'>";
  echo "<thead class='thead-inverse'>";
    echo "<tr><th>Student Rollno</th>";
	echo "<th>Name</th>";
					echo "<th>Department Name</th>";
					echo "<th>Additional Role</th>";
				echo "<th>DOB</th>";
				echo "<th>gender</th>";
				echo "<th>Mobile Number</th>";
					echo "<th>Email</th>";
					echo "<th>Alternate Email</th>";
	echo "<th>Father Name</th>";
		echo "<th>Occupation</th>";
		
		echo "<th>street name</th>";
				echo "<th>Village name</th>";
				echo "<th>Cityname</th>";
				echo "<th>state</th>";
				echo "<th>pincode</th>";
				echo "<th>language</th>";
				echo "<th>caste</th>";
	
				echo "<th>Hostel/dayscholer</th>";
				echo "<th>skills</th>";
				echo "<th>education gap</th>";
				echo "<th>education gap reason</th>";
				echo "<th>Physically challenged</th>";
				echo "<th>Detail about your illness</th>";
	
			
			
			
				
				
echo "<th>Sslc reg.no</th>";
echo "<th>sslc school name</th>";
echo "<th>sslc certificate no</th>";
echo "<th>sslc board</th>";
echo "<th>sslc mark</th>";
echo "<th>sslc percentage</th>";
echo "<th>sslc start</th>";
echo "<th>sslc end</th>";
echo "<th>hsc reg.no</th>";
echo "<th>hsc school name</th>";
echo "<th>hsc certificate no</th>";
echo "<th>hscboard</th>";
echo "<th>hscmark</th>";
echo "<th>hsc percentage</th>";
echo "<th>hsc specication</th>";
echo "<th>hsc start</th>";
echo "<th>hsc end</th>";
echo "<th>counselling rank</th>";
echo "<th>Cutoff mark</th>";
echo "<th>Diploma regno</th>";
echo "<th>Diploma College</th>";
echo "<th>Diploma percentage</th>";
echo "<th>Diploma specication</th>";
echo "<th>Diploma cutoff</th>";

echo "<th>career option</th>";

echo "<th>First generation</th>";

echo "<th>First semester</th>";		
echo "<th>Second semester</th>";	
echo "<th>Third semester</th>";
	echo "<th>Fourth semester</th>";
echo "<th>Fifth semester</th>";	
echo "<th>Sixth semester</th>";
echo "<th>Current percentage</th>";				
echo "<th>History of Arrear</th>";
echo "<th>Cleared Arrear</th>";
echo "<th>Standing Arrear</th>";
echo "<th>Course Start</th>";



			echo"</tr>";
  echo"</thead>";
  echo"<tbody>";
 while( $row = mysql_fetch_row($q))
 {
    echo "<tr><th scope='row'>$row[0]</th>";
	echo"<th scope='row'>$row[2]</th>";
	   echo "<th scope='row'>$row[3]</th>";
	     echo "<th scope='row'>$row[6]</th>";
		   echo "<th scope='row'>$row[14]</th>";
		     echo "<th scope='row'>$row[15]</th>";
			   echo "<th scope='row'>$row[16]</th>";  
			   echo "<th scope='row'>$row[17]</th>";
	     echo "<th scope='row'>$row[10]</th>";
		   echo "<th scope='row'>$row[12]</th>";  
		   echo "<th scope='row'>$row[13]</th>";
  echo "<th scope='row'>$row[18]</th>";
  echo "<th scope='row'>$row[19]</th>";
  echo "<th scope='row'>$row[20]</th>";
  echo "<th scope='row'>$row[21]</th>";
  echo "<th scope='row'>$row[24]</th>";
  echo "<th scope='row'>$row[25]</th>";
  echo "<th scope='row'>$row[22]</th>";
  echo "<th scope='row'>$row[23]</th>";
  echo "<th scope='row'>$row[26]</th>";
  echo "<th scope='row'>$row[29]</th>";
  echo "<th scope='row'>$row[30]</th>";
  echo "<th scope='row'>$row[27]</th>";
  echo "<th scope='row'>$row[28]</th>";
  echo "<th scope='row'>$row[31]</th>";
  echo "<th scope='row'>$row[32]</th>";
  echo "<th scope='row'>$row[33]</th>";
  echo "<th scope='row'>$row[34]</th>";
    echo "<th scope='row'>$row[57]</th>";
	  echo "<th scope='row'>$row[60]</th>";
  echo "<th scope='row'>$row[35]</th>";
  echo "<th scope='row'>$row[36]</th>";
  echo "<th scope='row'>$row[38]</th>";
  echo "<th scope='row'>$row[39]</th>";
  echo "<th scope='row'>$row[40]</th>";  
  echo "<th scope='row'>$row[41]</th>";
   echo "<th scope='row'>$row[58]</th>";
    echo "<th scope='row'>$row[59]</th>";
    echo "<th scope='row'>$row[44]</th>";
  echo "<th scope='row'>$row[42]</th>";
  
  echo "<th scope='row'>$row[43]</th>";
  echo "<th scope='row'>$row[46]</th>";
  echo "<th scope='row'>$row[45]</th>";
     echo "<th scope='row'>$row[49]</th>";
  echo "<th scope='row'>$row[48]</th>";
 
	  echo "<th scope='row'>$row[61]</th>";
	    echo "<th scope='row'>$row[53]</th>";
  echo "<th scope='row'>$row[54]</th>";
    echo "<th scope='row'>$row[64]</th>";

	    echo "<th scope='row'>$row[65]</th>";
		  echo "<th scope='row'>$row[66]</th>";
		    echo "<th scope='row'>$row[67]</th>";
			  echo "<th scope='row'>$row[68]</th>";
			    echo "<th scope='row'>$row[69]</th>";
				  echo "<th scope='row'>$row[70]</th>";
				    echo "<th scope='row'>$row[71]</th>";
						 echo "<th scope='row'>$row[72]</th>";
					  echo "<th scope='row'>$row[73]</th>";
					    echo "<th scope='row'>$row[74]</th>";
						  echo "<th scope='row'>$row[75]</th>";
						    echo "<th scope='row'>$row[76]</th>";
						
						
							 
	  echo "</tr>";
	
  }
 echo "</tbody>";
echo "</table>";
}
else if($dep=="mba")
{
	echo "<center> <b>Student Details<b></center><br><br>";
echo "<table class='table'>";
  echo "<thead class='thead-inverse'>";
    echo "<tr><th>Student Rollno</th>";
	echo "<th>Name</th>";
					echo "<th>Department Name</th>";
					echo "<th>Additional Role</th>";
				echo "<th>DOB</th>";
				echo "<th>gender</th>";
				echo "<th>Mobile Number</th>";
					echo "<th>Email</th>";
					echo "<th>Alternate Email</th>";
	echo "<th>Father Name</th>";
		echo "<th>Occupation</th>";
		
		echo "<th>street name</th>";
				echo "<th>Village name</th>";
				echo "<th>Cityname</th>";
				echo "<th>state</th>";
				echo "<th>pincode</th>";
				echo "<th>language</th>";
				echo "<th>caste</th>";
	
				echo "<th>Hostel/dayscholer</th>";
				echo "<th>skills</th>";
				echo "<th>education gap</th>";
				echo "<th>education gap reason</th>";
				echo "<th>Physically challenged</th>";
				echo "<th>Detail about your illness</th>";
	
			
			
			
				
				
echo "<th>Sslc reg.no</th>";
echo "<th>sslc school name</th>";
echo "<th>sslc certificate no</th>";
echo "<th>sslc board</th>";
echo "<th>sslc mark</th>";
echo "<th>sslc percentage</th>";
echo "<th>sslc start</th>";
echo "<th>sslc end</th>";
echo "<th>hsc reg.no</th>";
echo "<th>hsc school name</th>";
echo "<th>hsc certificate no</th>";
echo "<th>hscboard</th>";
echo "<th>hscmark</th>";
echo "<th>hsc percentage</th>";
echo "<th>hsc specication</th>";
echo "<th>hsc start</th>";
echo "<th>hsc end</th>";
echo "<th>counselling rank</th>";
echo "<th>Cutoff mark</th>";
echo "<th>Diploma regno</th>";
echo "<th>Diploma College</th>";
echo "<th>Diploma percentage</th>";
echo "<th>Diploma specication</th>";
echo "<th>Diploma cutoff</th>";
echo "<th>enterance exam</th>";
echo "<th>admission</th>";
echo "<th>career option</th>";

echo "<th>First generation</th>";

echo "<th>First semester</th>";		
echo "<th>Second semester</th>";	
echo "<th>Third semester</th>";
	echo "<th>Fourth semester</th>";

echo "<th>Current percentage</th>";				

echo "<th>Cleared Arrear</th>";
echo "<th>Standing Arrear</th>";
echo "<th>History of Arrear</th>";
echo "<th>Course Start</th>";

echo "<th>UG Percentage</th>";

echo "<th>UG Specilization</th>";

			echo"</tr>";
  echo"</thead>";
  echo"<tbody>";
 while( $row = mysql_fetch_row($q))
 {
    echo "<tr><th scope='row'>$row[0]</th>";
	echo"<th scope='row'>$row[2]</th>";
	   echo "<th scope='row'>$row[3]</th>";
	     echo "<th scope='row'>$row[6]</th>";
		   echo "<th scope='row'>$row[14]</th>";
		     echo "<th scope='row'>$row[15]</th>";
			   echo "<th scope='row'>$row[16]</th>";  
			   echo "<th scope='row'>$row[17]</th>";
	     echo "<th scope='row'>$row[10]</th>";
		   echo "<th scope='row'>$row[12]</th>";  
		   echo "<th scope='row'>$row[13]</th>";
  echo "<th scope='row'>$row[18]</th>";
  echo "<th scope='row'>$row[19]</th>";
  echo "<th scope='row'>$row[20]</th>";
  echo "<th scope='row'>$row[21]</th>";
  echo "<th scope='row'>$row[24]</th>";
  echo "<th scope='row'>$row[25]</th>";
  echo "<th scope='row'>$row[22]</th>";
  echo "<th scope='row'>$row[23]</th>";
  echo "<th scope='row'>$row[26]</th>";
  echo "<th scope='row'>$row[29]</th>";
  echo "<th scope='row'>$row[30]</th>";
  echo "<th scope='row'>$row[27]</th>";
  echo "<th scope='row'>$row[28]</th>";
  echo "<th scope='row'>$row[31]</th>";
  echo "<th scope='row'>$row[32]</th>";
  echo "<th scope='row'>$row[33]</th>";
  echo "<th scope='row'>$row[34]</th>";
    echo "<th scope='row'>$row[57]</th>";
	  echo "<th scope='row'>$row[60]</th>";
  echo "<th scope='row'>$row[35]</th>";
  echo "<th scope='row'>$row[36]</th>";
  echo "<th scope='row'>$row[38]</th>";
  echo "<th scope='row'>$row[39]</th>";
  echo "<th scope='row'>$row[40]</th>";  
  echo "<th scope='row'>$row[41]</th>";
   echo "<th scope='row'>$row[58]</th>";
    echo "<th scope='row'>$row[59]</th>";
    echo "<th scope='row'>$row[44]</th>";
  echo "<th scope='row'>$row[42]</th>";
  
  echo "<th scope='row'>$row[43]</th>";
  echo "<th scope='row'>$row[46]</th>";
  echo "<th scope='row'>$row[45]</th>";
     echo "<th scope='row'>$row[49]</th>";
  echo "<th scope='row'>$row[48]</th>";
 
	  echo "<th scope='row'>$row[61]</th>";
	    echo "<th scope='row'>$row[53]</th>";
  echo "<th scope='row'>$row[54]</th>";
    echo "<th scope='row'>$row[63]</th>";
	  echo "<th scope='row'>$row[64]</th>";
	    echo "<th scope='row'>$row[65]</th>";
		  echo "<th scope='row'>$row[66]</th>";
		    echo "<th scope='row'>$row[70]</th>";
			  echo "<th scope='row'>$row[71]</th>";
			    echo "<th scope='row'>$row[72]</th>";
				  echo "<th scope='row'>$row[73]</th>";
				    echo "<th scope='row'>$row[74]</th>";
					  echo "<th scope='row'>$row[75]</th>";
					    echo "<th scope='row'>$row[77]</th>";
							  echo "<th scope='row'>$row[76]</th>";
						  echo "<th scope='row'>$row[78]</th>";

							   echo "<th scope='row'>$row[68]</th>";
							   
						   echo "<th scope='row'>$row[69]</th>";
							 
	  echo "</tr>";
	
  }
 echo "</tbody>";
echo "</table>";
}
else if(($dep=="computer application"))
{
	echo "<center> <b>Student Details<b></center><br><br>";
echo "<table class='table'>";
  echo "<thead class='thead-inverse'>";
    echo "<tr><th>Student Rollno</th>";
	echo "<th>Name</th>";
					echo "<th>Department Name</th>";
					echo "<th>Additional Role</th>";
				echo "<th>DOB</th>";
				echo "<th>gender</th>";
				echo "<th>Mobile Number</th>";
					echo "<th>Email</th>";
					echo "<th>Alternate Email</th>";
	echo "<th>Father Name</th>";
		echo "<th>Occupation</th>";
		
		echo "<th>street name</th>";
				echo "<th>Village name</th>";
				echo "<th>Cityname</th>";
				echo "<th>state</th>";
				echo "<th>pincode</th>";
				echo "<th>language</th>";
				echo "<th>caste</th>";
	
				echo "<th>Hostel/dayscholer</th>";
				echo "<th>skills</th>";
				echo "<th>education gap</th>";
				echo "<th>education gap reason</th>";
				echo "<th>Physically challenged</th>";
				echo "<th>Detail about your illness</th>";
	
			
			
			
				
				
echo "<th>Sslc reg.no</th>";
echo "<th>sslc school name</th>";
echo "<th>sslc certificate no</th>";
echo "<th>sslc board</th>";
echo "<th>sslc mark</th>";
echo "<th>sslc percentage</th>";
echo "<th>sslc start</th>";
echo "<th>sslc end</th>";
echo "<th>hsc reg.no</th>";
echo "<th>hsc school name</th>";
echo "<th>hsc certificate no</th>";
echo "<th>hscboard</th>";
echo "<th>hscmark</th>";
echo "<th>hsc percentage</th>";
echo "<th>hsc specication</th>";
echo "<th>hsc start</th>";
echo "<th>hsc end</th>";
echo "<th>counselling rank</th>";
echo "<th>Cutoff mark</th>";
echo "<th>Diploma regno</th>";
echo "<th>Diploma College</th>";
echo "<th>Diploma percentage</th>";
echo "<th>Diploma specication</th>";
echo "<th>Diploma cutoff</th>";
echo "<th>enterance exam</th>";
echo "<th>admission</th>";
echo "<th>career option</th>";

echo "<th>First generation</th>";

echo "<th>First semester</th>";		
echo "<th>Second semester</th>";	
echo "<th>Third semester</th>";
	echo "<th>Fourth semester</th>";
echo "<th>Fifth semester</th>";	
echo "<th>Sixth semester</th>";
				
echo "<th>History of Arrear</th>";
echo "<th>Cleared Arrear</th>";
echo "<th>Standing Arrear</th>";
echo "<th>Course Start</th>";
echo "<th>Current percentage</th>";
echo "<th>UG Percentage</th>";

echo "<th>UG Specilization</th>";

			echo"</tr>";
  echo"</thead>";
  echo"<tbody>";
 while( $row = mysql_fetch_row($q))
 {
    echo "<tr><th scope='row'>$row[0]</th>";
	echo"<th scope='row'>$row[2]</th>";
	   echo "<th scope='row'>$row[3]</th>";
	     echo "<th scope='row'>$row[6]</th>";
		   echo "<th scope='row'>$row[14]</th>";
		     echo "<th scope='row'>$row[15]</th>";
			   echo "<th scope='row'>$row[16]</th>";  
			   echo "<th scope='row'>$row[17]</th>";
	     echo "<th scope='row'>$row[10]</th>";
		   echo "<th scope='row'>$row[12]</th>";  
		   echo "<th scope='row'>$row[13]</th>";
  echo "<th scope='row'>$row[18]</th>";
  echo "<th scope='row'>$row[19]</th>";
  echo "<th scope='row'>$row[20]</th>";
  echo "<th scope='row'>$row[21]</th>";
  echo "<th scope='row'>$row[24]</th>";
  echo "<th scope='row'>$row[25]</th>";
  echo "<th scope='row'>$row[22]</th>";
  echo "<th scope='row'>$row[23]</th>";
  echo "<th scope='row'>$row[26]</th>";
  echo "<th scope='row'>$row[29]</th>";
  echo "<th scope='row'>$row[30]</th>";
  echo "<th scope='row'>$row[27]</th>";
  echo "<th scope='row'>$row[28]</th>";
  echo "<th scope='row'>$row[31]</th>";
  echo "<th scope='row'>$row[32]</th>";
  echo "<th scope='row'>$row[33]</th>";
  echo "<th scope='row'>$row[34]</th>";
    echo "<th scope='row'>$row[57]</th>";
	  echo "<th scope='row'>$row[60]</th>";
  echo "<th scope='row'>$row[35]</th>";
  echo "<th scope='row'>$row[36]</th>";
  echo "<th scope='row'>$row[38]</th>";
  echo "<th scope='row'>$row[39]</th>";
  echo "<th scope='row'>$row[40]</th>";  
  echo "<th scope='row'>$row[41]</th>";
   echo "<th scope='row'>$row[58]</th>";
    echo "<th scope='row'>$row[59]</th>";
    echo "<th scope='row'>$row[44]</th>";
  echo "<th scope='row'>$row[42]</th>";
  
  echo "<th scope='row'>$row[43]</th>";
  echo "<th scope='row'>$row[46]</th>";
  echo "<th scope='row'>$row[45]</th>";
     echo "<th scope='row'>$row[49]</th>";
  echo "<th scope='row'>$row[48]</th>";
 
	  echo "<th scope='row'>$row[61]</th>";
	    echo "<th scope='row'>$row[53]</th>";
  echo "<th scope='row'>$row[54]</th>";
    echo "<th scope='row'>$row[63]</th>";
	  echo "<th scope='row'>$row[64]</th>";
	    echo "<th scope='row'>$row[65]</th>";
		  echo "<th scope='row'>$row[66]</th>";
		    echo "<th scope='row'>$row[70]</th>";
			  echo "<th scope='row'>$row[71]</th>";
			    echo "<th scope='row'>$row[72]</th>";
				  echo "<th scope='row'>$row[73]</th>";
				    echo "<th scope='row'>$row[74]</th>";
					  echo "<th scope='row'>$row[75]</th>";
					    echo "<th scope='row'>$row[77]</th>";
						  echo "<th scope='row'>$row[78]</th>";
						    echo "<th scope='row'>$row[79]</th>";
							 echo "<th scope='row'>$row[80]</th>";
							  echo "<th scope='row'>$row[76]</th>";
							   echo "<th scope='row'>$row[68]</th>";
							   
						   echo "<th scope='row'>$row[69]</th>";
							 
	  echo "</tr>";
	
  }
 echo "</tbody>";
echo "</table>";
}
else if($dep=='msc')
{
		echo "<center> <b>Student Details<b></center><br><br>";
echo "<table class='table'>";
  echo "<thead class='thead-inverse'>";
    echo "<tr><th>Student Rollno</th>";
	echo "<th>Name</th>";
					echo "<th>Department Name</th>";
					echo "<th>Additional Role</th>";
				echo "<th>DOB</th>";
				echo "<th>gender</th>";
				echo "<th>Mobile Number</th>";
					echo "<th>Email</th>";
					echo "<th>Alternate Email</th>";
	echo "<th>Father Name</th>";
		echo "<th>Occupation</th>";
		
		echo "<th>street name</th>";
				echo "<th>Village name</th>";
				echo "<th>Cityname</th>";
				echo "<th>state</th>";
				echo "<th>pincode</th>";
				echo "<th>language</th>";
				echo "<th>caste</th>";
	
				echo "<th>Hostel/dayscholer</th>";
				echo "<th>skills</th>";
				echo "<th>education gap</th>";
				echo "<th>education gap reason</th>";
				echo "<th>Physically challenged</th>";
				echo "<th>Detail about your illness</th>";
	
			
			
			
				
				
echo "<th>Sslc reg.no</th>";
echo "<th>sslc school name</th>";
echo "<th>sslc certificate no</th>";
echo "<th>sslc board</th>";
echo "<th>sslc mark</th>";
echo "<th>sslc percentage</th>";
echo "<th>sslc start</th>";
echo "<th>sslc end</th>";
echo "<th>hsc reg.no</th>";
echo "<th>hsc school name</th>";
echo "<th>hsc certificate no</th>";
echo "<th>hscboard</th>";
echo "<th>hscmark</th>";
echo "<th>hsc percentage</th>";
echo "<th>hsc specication</th>";
echo "<th>hsc start</th>";
echo "<th>hsc end</th>";
echo "<th>counselling rank</th>";
echo "<th>Cutoff mark</th>";
echo "<th>Diploma regno</th>";
echo "<th>Diploma College</th>";
echo "<th>Diploma percentage</th>";
echo "<th>Diploma specication</th>";
echo "<th>Diploma cutoff</th>";

echo "<th>career option</th>";

echo "<th>First generation</th>";

echo "<th>First semester</th>";		
echo "<th>Second semester</th>";	
echo "<th>Third semester</th>";
	echo "<th>Fourth semester</th>";
echo "<th>Fifth semester</th>";	
echo "<th>Sixth semester</th>";
echo "<th>Seventh semester</th>";
echo "<th>eight semester</th>";
echo "<th>ninth semester</th>";
echo "<th>tenth semester</th>";
echo "<th>Current percentage</th>";				
echo "<th>History of Arrear</th>";
echo "<th>Cleared Arrear</th>";
echo "<th>Standing Arrear</th>";
echo "<th>Course Start</th>";



			echo"</tr>";
  echo"</thead>";
  echo"<tbody>";
 while( $row = mysql_fetch_row($q))
 {
    echo "<tr><th scope='row'>$row[0]</th>";
	echo"<th scope='row'>$row[2]</th>";
	   echo "<th scope='row'>$row[3]</th>";
	     echo "<th scope='row'>$row[6]</th>";
		   echo "<th scope='row'>$row[14]</th>";
		     echo "<th scope='row'>$row[15]</th>";
			   echo "<th scope='row'>$row[16]</th>";  
			   echo "<th scope='row'>$row[17]</th>";
	     echo "<th scope='row'>$row[10]</th>";
		   echo "<th scope='row'>$row[12]</th>";  
		   echo "<th scope='row'>$row[13]</th>";
  echo "<th scope='row'>$row[18]</th>";
  echo "<th scope='row'>$row[19]</th>";
  echo "<th scope='row'>$row[20]</th>";
  echo "<th scope='row'>$row[21]</th>";
  echo "<th scope='row'>$row[24]</th>";
  echo "<th scope='row'>$row[25]</th>";
  echo "<th scope='row'>$row[22]</th>";
  echo "<th scope='row'>$row[23]</th>";
  echo "<th scope='row'>$row[26]</th>";
  echo "<th scope='row'>$row[29]</th>";
  echo "<th scope='row'>$row[30]</th>";
  echo "<th scope='row'>$row[27]</th>";
  echo "<th scope='row'>$row[28]</th>";
  echo "<th scope='row'>$row[31]</th>";
  echo "<th scope='row'>$row[32]</th>";
  echo "<th scope='row'>$row[33]</th>";
  echo "<th scope='row'>$row[34]</th>";
    echo "<th scope='row'>$row[57]</th>";
	  echo "<th scope='row'>$row[60]</th>";
  echo "<th scope='row'>$row[35]</th>";
  echo "<th scope='row'>$row[36]</th>";
  echo "<th scope='row'>$row[38]</th>";
  echo "<th scope='row'>$row[39]</th>";
  echo "<th scope='row'>$row[40]</th>";  
  echo "<th scope='row'>$row[41]</th>";
   echo "<th scope='row'>$row[58]</th>";
    echo "<th scope='row'>$row[59]</th>";
    echo "<th scope='row'>$row[44]</th>";
  echo "<th scope='row'>$row[42]</th>";
  
  echo "<th scope='row'>$row[43]</th>";
  echo "<th scope='row'>$row[46]</th>";
  echo "<th scope='row'>$row[45]</th>";
     echo "<th scope='row'>$row[49]</th>";
  echo "<th scope='row'>$row[48]</th>";
 
	  echo "<th scope='row'>$row[61]</th>";
	    echo "<th scope='row'>$row[53]</th>";
  echo "<th scope='row'>$row[54]</th>";
    echo "<th scope='row'>$row[63]</th>";
    echo "<th scope='row'>$row[64]</th>";
	    echo "<th scope='row'>$row[65]</th>";
		  echo "<th scope='row'>$row[66]</th>";
		    echo "<th scope='row'>$row[67]</th>";
			  echo "<th scope='row'>$row[68]</th>";
			    echo "<th scope='row'>$row[69]</th>";
				  echo "<th scope='row'>$row[70]</th>";
				    echo "<th scope='row'>$row[71]</th>";
						 echo "<th scope='row'>$row[72]</th>";
					  echo "<th scope='row'>$row[73]</th>";
					    echo "<th scope='row'>$row[74]</th>";
						  echo "<th scope='row'>$row[75]</th>";
						    echo "<th scope='row'>$row[76]</th>";
						    echo "<th scope='row'>$row[77]</th>";
							    echo "<th scope='row'>$row[78]</th>";
								    echo "<th scope='row'>$row[79]</th>";
						
							 
	  echo "</tr>";
	
  }
 echo "</tbody>";
echo "</table>";
}
else
{
	if($dep!='office')
	{
	echo "<center> <b>Student Details<b></center><br><br>";
echo "<table class='table'>";
  echo "<thead class='thead-inverse'>";
    echo "<tr><th>Student Rollno</th>";
	echo "<th>Name</th>";
					echo "<th>Department Name</th>";
					echo "<th>Additional Role</th>";
				echo "<th>DOB</th>";
				echo "<th>gender</th>";
				echo "<th>Mobile Number</th>";
					echo "<th>Email</th>";
					echo "<th>Alternate Email</th>";
	echo "<th>Father Name</th>";
		echo "<th>Occupation</th>";
		
		echo "<th>street name</th>";
				echo "<th>Village name</th>";
				echo "<th>Cityname</th>";
				echo "<th>state</th>";
				echo "<th>pincode</th>";
				echo "<th>language</th>";
				echo "<th>caste</th>";
	
				echo "<th>Hostel/dayscholer</th>";
				echo "<th>skills</th>";
				echo "<th>education gap</th>";
				echo "<th>education gap reason</th>";
				echo "<th>Physically challenged</th>";
				echo "<th>Detail about your illness</th>";
	
			
			
			
				
				
echo "<th>Sslc reg.no</th>";
echo "<th>sslc school name</th>";
echo "<th>sslc certificate no</th>";
echo "<th>sslc board</th>";
echo "<th>sslc mark</th>";
echo "<th>sslc percentage</th>";
echo "<th>sslc start</th>";
echo "<th>sslc end</th>";
echo "<th>hsc reg.no</th>";
echo "<th>hsc school name</th>";
echo "<th>hsc certificate no</th>";
echo "<th>hscboard</th>";
echo "<th>hscmark</th>";
echo "<th>hsc percentage</th>";
echo "<th>hsc specication</th>";
echo "<th>hsc start</th>";
echo "<th>hsc end</th>";
echo "<th>counselling rank</th>";
echo "<th>Cutoff mark</th>";
echo "<th>Diploma regno</th>";
echo "<th>Diploma College</th>";
echo "<th>Diploma percentage</th>";
echo "<th>Diploma specication</th>";
echo "<th>Diploma cutoff</th>";

echo "<th>career option</th>";

echo "<th>First generation</th>";

echo "<th>First semester</th>";		
echo "<th>Second semester</th>";	
echo "<th>Third semester</th>";
	echo "<th>Fourth semester</th>";
echo "<th>Fifth semester</th>";	
echo "<th>Sixth semester</th>";
echo "<th>seventh semester</th>";
echo "<th>eigth semester</th>";
echo "<th>Current percentage</th>";				
echo "<th>History of Arrear</th>";
echo "<th>Cleared Arrear</th>";
echo "<th>Standing Arrear</th>";
echo "<th>Course Start</th>";



			echo"</tr>";
  echo"</thead>";
  echo"<tbody>";
 while( $row = mysql_fetch_row($q))
 {
    echo "<tr><th scope='row'>$row[0]</th>";
	echo"<th scope='row'>$row[2]</th>";
	   echo "<th scope='row'>$row[3]</th>";
	     echo "<th scope='row'>$row[6]</th>";
		   echo "<th scope='row'>$row[14]</th>";
		     echo "<th scope='row'>$row[15]</th>";
			   echo "<th scope='row'>$row[16]</th>";  
			   echo "<th scope='row'>$row[17]</th>";
	     echo "<th scope='row'>$row[10]</th>";
		   echo "<th scope='row'>$row[12]</th>";  
		   echo "<th scope='row'>$row[13]</th>";
  echo "<th scope='row'>$row[18]</th>";
  echo "<th scope='row'>$row[19]</th>";
  echo "<th scope='row'>$row[20]</th>";
  echo "<th scope='row'>$row[21]</th>";
  echo "<th scope='row'>$row[24]</th>";
  echo "<th scope='row'>$row[25]</th>";
  echo "<th scope='row'>$row[22]</th>";
  echo "<th scope='row'>$row[23]</th>";
  echo "<th scope='row'>$row[26]</th>";
  echo "<th scope='row'>$row[29]</th>";
  echo "<th scope='row'>$row[30]</th>";
  echo "<th scope='row'>$row[27]</th>";
  echo "<th scope='row'>$row[28]</th>";
  echo "<th scope='row'>$row[31]</th>";
  echo "<th scope='row'>$row[32]</th>";
  echo "<th scope='row'>$row[33]</th>";
  echo "<th scope='row'>$row[34]</th>";
    echo "<th scope='row'>$row[57]</th>";
	  echo "<th scope='row'>$row[60]</th>";
  echo "<th scope='row'>$row[35]</th>";
  echo "<th scope='row'>$row[36]</th>";
  echo "<th scope='row'>$row[38]</th>";
  echo "<th scope='row'>$row[39]</th>";
  echo "<th scope='row'>$row[40]</th>";  
  echo "<th scope='row'>$row[41]</th>";
   echo "<th scope='row'>$row[58]</th>";
    echo "<th scope='row'>$row[59]</th>";
    echo "<th scope='row'>$row[44]</th>";
  echo "<th scope='row'>$row[42]</th>";
  
  echo "<th scope='row'>$row[43]</th>";
  echo "<th scope='row'>$row[46]</th>";
  echo "<th scope='row'>$row[45]</th>";
     echo "<th scope='row'>$row[49]</th>";
  echo "<th scope='row'>$row[48]</th>";
 
	  echo "<th scope='row'>$row[61]</th>";
	    echo "<th scope='row'>$row[53]</th>";
  echo "<th scope='row'>$row[54]</th>";
    echo "<th scope='row'>$row[64]</th>";

	    echo "<th scope='row'>$row[65]</th>";
		  echo "<th scope='row'>$row[66]</th>";
		    echo "<th scope='row'>$row[67]</th>";
			  echo "<th scope='row'>$row[68]</th>";
			    echo "<th scope='row'>$row[69]</th>";
				  echo "<th scope='row'>$row[70]</th>";
				    echo "<th scope='row'>$row[71]</th>";
						 echo "<th scope='row'>$row[72]</th>";
					  echo "<th scope='row'>$row[73]</th>";
					    echo "<th scope='row'>$row[74]</th>";
						  echo "<th scope='row'>$row[75]</th>";
						    echo "<th scope='row'>$row[76]</th>";
						  echo "<th scope='row'>$row[77]</th>";
						    echo "<th scope='row'>$row[78]</th>";
						
							 
	  echo "</tr>";
	
  }
 echo "</tbody>";
echo "</table>";
}

}


if($dep=='office')
{
	$bsc="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and l.id=m.rollno and s.rollno in (select id from login where department='bsc')";

$mca="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and l.id=m.rollno and s.rollno in (select id from login where department='computer application')";


$mba="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and l.id=m.rollno and s.rollno in (select id from login where department='mba')";	

$msc="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and l.id=m.rollno and s.rollno in (select id from login where department='msc')";

$be="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and l.id=m.rollno and s.rollno in (select id from login where department='cse' or department='it' or department='ece' or department='eee' or department='mech' or department='automobiles' or department='civil')";


$_SESSION['bsc']=$bsc;
$_SESSION['msc']=$msc;
$_SESSION['mba']=$mba;
$_SESSION['mca']=$mca;
$_SESSION['be']=$be;
$q1=mysql_query($bsc);
$q2=mysql_query($mca);
$q3=mysql_query($mba);
$q4=mysql_query($msc);
$q5=mysql_query($be);
	
if(($dep=="office"))
{

	
	echo "<center> <b>Bsc Student Details<b></center><br><br>";
echo "<table class='table'>";
  echo "<thead class='thead-inverse'>";
    echo "<tr><th>Student Rollno</th>";
	echo "<th>Name</th>";
					echo "<th>Department Name</th>";
					echo "<th>Additional Role</th>";
				echo "<th>DOB</th>";
				echo "<th>gender</th>";
				echo "<th>Mobile Number</th>";
					echo "<th>Email</th>";
					echo "<th>Alternate Email</th>";
	echo "<th>Father Name</th>";
		echo "<th>Occupation</th>";
		
		echo "<th>street name</th>";
				echo "<th>Village name</th>";
				echo "<th>Cityname</th>";
				echo "<th>state</th>";
				echo "<th>pincode</th>";
				echo "<th>language</th>";
				echo "<th>caste</th>";
	
				echo "<th>Hostel/dayscholer</th>";
				echo "<th>skills</th>";
				echo "<th>education gap</th>";
				echo "<th>education gap reason</th>";
				echo "<th>Physically challenged</th>";
				echo "<th>Detail about your illness</th>";
	
			
			
			
				
				
echo "<th>Sslc reg.no</th>";
echo "<th>sslc school name</th>";
echo "<th>sslc certificate no</th>";
echo "<th>sslc board</th>";
echo "<th>sslc mark</th>";
echo "<th>sslc percentage</th>";
echo "<th>sslc start</th>";
echo "<th>sslc end</th>";
echo "<th>hsc reg.no</th>";
echo "<th>hsc school name</th>";
echo "<th>hsc certificate no</th>";
echo "<th>hscboard</th>";
echo "<th>hscmark</th>";
echo "<th>hsc percentage</th>";
echo "<th>hsc specication</th>";
echo "<th>hsc start</th>";
echo "<th>hsc end</th>";
echo "<th>counselling rank</th>";
echo "<th>Cutoff mark</th>";
echo "<th>Diploma regno</th>";
echo "<th>Diploma College</th>";
echo "<th>Diploma percentage</th>";
echo "<th>Diploma specication</th>";
echo "<th>Diploma cutoff</th>";

echo "<th>career option</th>";

echo "<th>First generation</th>";

echo "<th>First semester</th>";		
echo "<th>Second semester</th>";	
echo "<th>Third semester</th>";
	echo "<th>Fourth semester</th>";
echo "<th>Fifth semester</th>";	
echo "<th>Sixth semester</th>";
echo "<th>Current percentage</th>";				
echo "<th>History of Arrear</th>";
echo "<th>Cleared Arrear</th>";
echo "<th>Standing Arrear</th>";
echo "<th>Course Start</th>";



			echo"</tr>";
  echo"</thead>";
  echo"<tbody>";
 while( $row = mysql_fetch_row($q1))
 {
    echo "<tr><th scope='row'>$row[0]</th>";
	echo"<th scope='row'>$row[2]</th>";
	   echo "<th scope='row'>$row[3]</th>";
	     echo "<th scope='row'>$row[6]</th>";
		   echo "<th scope='row'>$row[14]</th>";
		     echo "<th scope='row'>$row[15]</th>";
			   echo "<th scope='row'>$row[16]</th>";  
			   echo "<th scope='row'>$row[17]</th>";
	     echo "<th scope='row'>$row[10]</th>";
		   echo "<th scope='row'>$row[12]</th>";  
		   echo "<th scope='row'>$row[13]</th>";
  echo "<th scope='row'>$row[18]</th>";
  echo "<th scope='row'>$row[19]</th>";
  echo "<th scope='row'>$row[20]</th>";
  echo "<th scope='row'>$row[21]</th>";
  echo "<th scope='row'>$row[24]</th>";
  echo "<th scope='row'>$row[25]</th>";
  echo "<th scope='row'>$row[22]</th>";
  echo "<th scope='row'>$row[23]</th>";
  echo "<th scope='row'>$row[26]</th>";
  echo "<th scope='row'>$row[29]</th>";
  echo "<th scope='row'>$row[30]</th>";
  echo "<th scope='row'>$row[27]</th>";
  echo "<th scope='row'>$row[28]</th>";
  echo "<th scope='row'>$row[31]</th>";
  echo "<th scope='row'>$row[32]</th>";
  echo "<th scope='row'>$row[33]</th>";
  echo "<th scope='row'>$row[34]</th>";
    echo "<th scope='row'>$row[57]</th>";
	  echo "<th scope='row'>$row[60]</th>";
  echo "<th scope='row'>$row[35]</th>";
  echo "<th scope='row'>$row[36]</th>";
  echo "<th scope='row'>$row[38]</th>";
  echo "<th scope='row'>$row[39]</th>";
  echo "<th scope='row'>$row[40]</th>";  
  echo "<th scope='row'>$row[41]</th>";
   echo "<th scope='row'>$row[58]</th>";
    echo "<th scope='row'>$row[59]</th>";
    echo "<th scope='row'>$row[44]</th>";
  echo "<th scope='row'>$row[42]</th>";
  
  echo "<th scope='row'>$row[43]</th>";
  echo "<th scope='row'>$row[46]</th>";
  echo "<th scope='row'>$row[45]</th>";
     echo "<th scope='row'>$row[49]</th>";
  echo "<th scope='row'>$row[48]</th>";
 
	  echo "<th scope='row'>$row[61]</th>";
	    echo "<th scope='row'>$row[53]</th>";
  echo "<th scope='row'>$row[54]</th>";
    echo "<th scope='row'>$row[64]</th>";

	    echo "<th scope='row'>$row[65]</th>";
		  echo "<th scope='row'>$row[66]</th>";
		    echo "<th scope='row'>$row[67]</th>";
			  echo "<th scope='row'>$row[68]</th>";
			    echo "<th scope='row'>$row[69]</th>";
				  echo "<th scope='row'>$row[70]</th>";
				    echo "<th scope='row'>$row[71]</th>";
						 echo "<th scope='row'>$row[72]</th>";
					  echo "<th scope='row'>$row[73]</th>";
					    echo "<th scope='row'>$row[74]</th>";
						  echo "<th scope='row'>$row[75]</th>";
						    echo "<th scope='row'>$row[76]</th>";
						
						
							 
	  echo "</tr>";
	
  }
 echo "</tbody>";
echo "</table>";
}
 if($dep=="office")
{
	echo "<center> <b>MBA Student Details<b></center><br><br>";
echo "<table class='table'>";
  echo "<thead class='thead-inverse'>";
    echo "<tr><th>Student Rollno</th>";
	echo "<th>Name</th>";
					echo "<th>Department Name</th>";
					echo "<th>Additional Role</th>";
				echo "<th>DOB</th>";
				echo "<th>gender</th>";
				echo "<th>Mobile Number</th>";
					echo "<th>Email</th>";
					echo "<th>Alternate Email</th>";
	echo "<th>Father Name</th>";
		echo "<th>Occupation</th>";
		
		echo "<th>street name</th>";
				echo "<th>Village name</th>";
				echo "<th>Cityname</th>";
				echo "<th>state</th>";
				echo "<th>pincode</th>";
				echo "<th>language</th>";
				echo "<th>caste</th>";
	
				echo "<th>Hostel/dayscholer</th>";
				echo "<th>skills</th>";
				echo "<th>education gap</th>";
				echo "<th>education gap reason</th>";
				echo "<th>Physically challenged</th>";
				echo "<th>Detail about your illness</th>";
	
			
			
			
				
				
echo "<th>Sslc reg.no</th>";
echo "<th>sslc school name</th>";
echo "<th>sslc certificate no</th>";
echo "<th>sslc board</th>";
echo "<th>sslc mark</th>";
echo "<th>sslc percentage</th>";
echo "<th>sslc start</th>";
echo "<th>sslc end</th>";
echo "<th>hsc reg.no</th>";
echo "<th>hsc school name</th>";
echo "<th>hsc certificate no</th>";
echo "<th>hscboard</th>";
echo "<th>hscmark</th>";
echo "<th>hsc percentage</th>";
echo "<th>hsc specication</th>";
echo "<th>hsc start</th>";
echo "<th>hsc end</th>";
echo "<th>counselling rank</th>";
echo "<th>Cutoff mark</th>";
echo "<th>Diploma regno</th>";
echo "<th>Diploma College</th>";
echo "<th>Diploma percentage</th>";
echo "<th>Diploma specication</th>";
echo "<th>Diploma cutoff</th>";
echo "<th>enterance exam</th>";
echo "<th>admission</th>";
echo "<th>career option</th>";

echo "<th>First generation</th>";

echo "<th>First semester</th>";		
echo "<th>Second semester</th>";	
echo "<th>Third semester</th>";
	echo "<th>Fourth semester</th>";

echo "<th>Current percentage</th>";				

echo "<th>Cleared Arrear</th>";
echo "<th>Standing Arrear</th>";
echo "<th>History of Arrear</th>";
echo "<th>Course Start</th>";

echo "<th>UG Percentage</th>";

echo "<th>UG Specilization</th>";

			echo"</tr>";
  echo"</thead>";
  echo"<tbody>";
 while( $row = mysql_fetch_row($q3))
 {
    echo "<tr><th scope='row'>$row[0]</th>";
	echo"<th scope='row'>$row[2]</th>";
	   echo "<th scope='row'>$row[3]</th>";
	     echo "<th scope='row'>$row[6]</th>";
		   echo "<th scope='row'>$row[14]</th>";
		     echo "<th scope='row'>$row[15]</th>";
			   echo "<th scope='row'>$row[16]</th>";  
			   echo "<th scope='row'>$row[17]</th>";
	     echo "<th scope='row'>$row[10]</th>";
		   echo "<th scope='row'>$row[12]</th>";  
		   echo "<th scope='row'>$row[13]</th>";
  echo "<th scope='row'>$row[18]</th>";
  echo "<th scope='row'>$row[19]</th>";
  echo "<th scope='row'>$row[20]</th>";
  echo "<th scope='row'>$row[21]</th>";
  echo "<th scope='row'>$row[24]</th>";
  echo "<th scope='row'>$row[25]</th>";
  echo "<th scope='row'>$row[22]</th>";
  echo "<th scope='row'>$row[23]</th>";
  echo "<th scope='row'>$row[26]</th>";
  echo "<th scope='row'>$row[29]</th>";
  echo "<th scope='row'>$row[30]</th>";
  echo "<th scope='row'>$row[27]</th>";
  echo "<th scope='row'>$row[28]</th>";
  echo "<th scope='row'>$row[31]</th>";
  echo "<th scope='row'>$row[32]</th>";
  echo "<th scope='row'>$row[33]</th>";
  echo "<th scope='row'>$row[34]</th>";
    echo "<th scope='row'>$row[57]</th>";
	  echo "<th scope='row'>$row[60]</th>";
  echo "<th scope='row'>$row[35]</th>";
  echo "<th scope='row'>$row[36]</th>";
  echo "<th scope='row'>$row[38]</th>";
  echo "<th scope='row'>$row[39]</th>";
  echo "<th scope='row'>$row[40]</th>";  
  echo "<th scope='row'>$row[41]</th>";
   echo "<th scope='row'>$row[58]</th>";
    echo "<th scope='row'>$row[59]</th>";
    echo "<th scope='row'>$row[44]</th>";
  echo "<th scope='row'>$row[42]</th>";
  
  echo "<th scope='row'>$row[43]</th>";
  echo "<th scope='row'>$row[46]</th>";
  echo "<th scope='row'>$row[45]</th>";
     echo "<th scope='row'>$row[49]</th>";
  echo "<th scope='row'>$row[48]</th>";
 
	  echo "<th scope='row'>$row[61]</th>";
	    echo "<th scope='row'>$row[53]</th>";
  echo "<th scope='row'>$row[54]</th>";
    echo "<th scope='row'>$row[63]</th>";
	  echo "<th scope='row'>$row[64]</th>";
	    echo "<th scope='row'>$row[65]</th>";
		  echo "<th scope='row'>$row[66]</th>";
		    echo "<th scope='row'>$row[70]</th>";
			  echo "<th scope='row'>$row[71]</th>";
			    echo "<th scope='row'>$row[72]</th>";
				  echo "<th scope='row'>$row[73]</th>";
				    echo "<th scope='row'>$row[74]</th>";
					  echo "<th scope='row'>$row[75]</th>";
					    echo "<th scope='row'>$row[77]</th>";
							  echo "<th scope='row'>$row[76]</th>";
						  echo "<th scope='row'>$row[78]</th>";

							   echo "<th scope='row'>$row[68]</th>";
							   
						   echo "<th scope='row'>$row[69]</th>";
							 
	  echo "</tr>";
	
  }
 echo "</tbody>";
echo "</table>";
}

 if(($dep=="office"))
{
	echo "<center> <b>MCA Student Details<b></center><br><br>";
echo "<table class='table'>";
  echo "<thead class='thead-inverse'>";
    echo "<tr><th>Student Rollno</th>";
	echo "<th>Name</th>";
					echo "<th>Department Name</th>";
					echo "<th>Additional Role</th>";
				echo "<th>DOB</th>";
				echo "<th>gender</th>";
				echo "<th>Mobile Number</th>";
					echo "<th>Email</th>";
					echo "<th>Alternate Email</th>";
	echo "<th>Father Name</th>";
		echo "<th>Occupation</th>";
		
		echo "<th>street name</th>";
				echo "<th>Village name</th>";
				echo "<th>Cityname</th>";
				echo "<th>state</th>";
				echo "<th>pincode</th>";
				echo "<th>language</th>";
				echo "<th>caste</th>";
	
				echo "<th>Hostel/dayscholer</th>";
				echo "<th>skills</th>";
				echo "<th>education gap</th>";
				echo "<th>education gap reason</th>";
				echo "<th>Physically challenged</th>";
				echo "<th>Detail about your illness</th>";
	
			
			
			
				
				
echo "<th>Sslc reg.no</th>";
echo "<th>sslc school name</th>";
echo "<th>sslc certificate no</th>";
echo "<th>sslc board</th>";
echo "<th>sslc mark</th>";
echo "<th>sslc percentage</th>";
echo "<th>sslc start</th>";
echo "<th>sslc end</th>";
echo "<th>hsc reg.no</th>";
echo "<th>hsc school name</th>";
echo "<th>hsc certificate no</th>";
echo "<th>hscboard</th>";
echo "<th>hscmark</th>";
echo "<th>hsc percentage</th>";
echo "<th>hsc specication</th>";
echo "<th>hsc start</th>";
echo "<th>hsc end</th>";
echo "<th>counselling rank</th>";
echo "<th>Cutoff mark</th>";
echo "<th>Diploma regno</th>";
echo "<th>Diploma College</th>";
echo "<th>Diploma percentage</th>";
echo "<th>Diploma specication</th>";
echo "<th>Diploma cutoff</th>";
echo "<th>enterance exam</th>";
echo "<th>admission</th>";
echo "<th>career option</th>";

echo "<th>First generation</th>";

echo "<th>First semester</th>";		
echo "<th>Second semester</th>";	
echo "<th>Third semester</th>";
	echo "<th>Fourth semester</th>";
echo "<th>Fifth semester</th>";	
echo "<th>Sixth semester</th>";
				
echo "<th>History of Arrear</th>";
echo "<th>Cleared Arrear</th>";
echo "<th>Standing Arrear</th>";
echo "<th>Course Start</th>";
echo "<th>Current percentage</th>";
echo "<th>UG Percentage</th>";

echo "<th>UG Specilization</th>";

			echo"</tr>";
  echo"</thead>";
  echo"<tbody>";
 while( $row = mysql_fetch_row($q2))
 {
    echo "<tr><th scope='row'>$row[0]</th>";
	echo"<th scope='row'>$row[2]</th>";
	   echo "<th scope='row'>$row[3]</th>";
	     echo "<th scope='row'>$row[6]</th>";
		   echo "<th scope='row'>$row[14]</th>";
		     echo "<th scope='row'>$row[15]</th>";
			   echo "<th scope='row'>$row[16]</th>";  
			   echo "<th scope='row'>$row[17]</th>";
	     echo "<th scope='row'>$row[10]</th>";
		   echo "<th scope='row'>$row[12]</th>";  
		   echo "<th scope='row'>$row[13]</th>";
  echo "<th scope='row'>$row[18]</th>";
  echo "<th scope='row'>$row[19]</th>";
  echo "<th scope='row'>$row[20]</th>";
  echo "<th scope='row'>$row[21]</th>";
  echo "<th scope='row'>$row[24]</th>";
  echo "<th scope='row'>$row[25]</th>";
  echo "<th scope='row'>$row[22]</th>";
  echo "<th scope='row'>$row[23]</th>";
  echo "<th scope='row'>$row[26]</th>";
  echo "<th scope='row'>$row[29]</th>";
  echo "<th scope='row'>$row[30]</th>";
  echo "<th scope='row'>$row[27]</th>";
  echo "<th scope='row'>$row[28]</th>";
  echo "<th scope='row'>$row[31]</th>";
  echo "<th scope='row'>$row[32]</th>";
  echo "<th scope='row'>$row[33]</th>";
  echo "<th scope='row'>$row[34]</th>";
    echo "<th scope='row'>$row[57]</th>";
	  echo "<th scope='row'>$row[60]</th>";
  echo "<th scope='row'>$row[35]</th>";
  echo "<th scope='row'>$row[36]</th>";
  echo "<th scope='row'>$row[38]</th>";
  echo "<th scope='row'>$row[39]</th>";
  echo "<th scope='row'>$row[40]</th>";  
  echo "<th scope='row'>$row[41]</th>";
   echo "<th scope='row'>$row[58]</th>";
    echo "<th scope='row'>$row[59]</th>";
    echo "<th scope='row'>$row[44]</th>";
  echo "<th scope='row'>$row[42]</th>";
  
  echo "<th scope='row'>$row[43]</th>";
  echo "<th scope='row'>$row[46]</th>";
  echo "<th scope='row'>$row[45]</th>";
     echo "<th scope='row'>$row[49]</th>";
  echo "<th scope='row'>$row[48]</th>";
 
	  echo "<th scope='row'>$row[61]</th>";
	    echo "<th scope='row'>$row[53]</th>";
  echo "<th scope='row'>$row[54]</th>";
    echo "<th scope='row'>$row[63]</th>";
	  echo "<th scope='row'>$row[64]</th>";
	    echo "<th scope='row'>$row[65]</th>";
		  echo "<th scope='row'>$row[66]</th>";
		    echo "<th scope='row'>$row[70]</th>";
			  echo "<th scope='row'>$row[71]</th>";
			    echo "<th scope='row'>$row[72]</th>";
				  echo "<th scope='row'>$row[73]</th>";
				    echo "<th scope='row'>$row[74]</th>";
					  echo "<th scope='row'>$row[75]</th>";
					    echo "<th scope='row'>$row[77]</th>";
						  echo "<th scope='row'>$row[78]</th>";
						    echo "<th scope='row'>$row[79]</th>";
							 echo "<th scope='row'>$row[80]</th>";
							  echo "<th scope='row'>$row[76]</th>";
							   echo "<th scope='row'>$row[68]</th>";
							   
						   echo "<th scope='row'>$row[69]</th>";
							 
	  echo "</tr>";
	
  }
 echo "</tbody>";
echo "</table>";
}
 if($dep=='office')
{
		echo "<center> <b>MSC Student Details<b></center><br><br>";
echo "<table class='table'>";
  echo "<thead class='thead-inverse'>";
    echo "<tr><th>Student Rollno</th>";
	echo "<th>Name</th>";
					echo "<th>Department Name</th>";
					echo "<th>Additional Role</th>";
				echo "<th>DOB</th>";
				echo "<th>gender</th>";
				echo "<th>Mobile Number</th>";
					echo "<th>Email</th>";
					echo "<th>Alternate Email</th>";
	echo "<th>Father Name</th>";
		echo "<th>Occupation</th>";
		
		echo "<th>street name</th>";
				echo "<th>Village name</th>";
				echo "<th>Cityname</th>";
				echo "<th>state</th>";
				echo "<th>pincode</th>";
				echo "<th>language</th>";
				echo "<th>caste</th>";
	
				echo "<th>Hostel/dayscholer</th>";
				echo "<th>skills</th>";
				echo "<th>education gap</th>";
				echo "<th>education gap reason</th>";
				echo "<th>Physically challenged</th>";
				echo "<th>Detail about your illness</th>";
	
			
			
			
				
				
echo "<th>Sslc reg.no</th>";
echo "<th>sslc school name</th>";
echo "<th>sslc certificate no</th>";
echo "<th>sslc board</th>";
echo "<th>sslc mark</th>";
echo "<th>sslc percentage</th>";
echo "<th>sslc start</th>";
echo "<th>sslc end</th>";
echo "<th>hsc reg.no</th>";
echo "<th>hsc school name</th>";
echo "<th>hsc certificate no</th>";
echo "<th>hscboard</th>";
echo "<th>hscmark</th>";
echo "<th>hsc percentage</th>";
echo "<th>hsc specication</th>";
echo "<th>hsc start</th>";
echo "<th>hsc end</th>";
echo "<th>counselling rank</th>";
echo "<th>Cutoff mark</th>";
echo "<th>Diploma regno</th>";
echo "<th>Diploma College</th>";
echo "<th>Diploma percentage</th>";
echo "<th>Diploma specication</th>";
echo "<th>Diploma cutoff</th>";

echo "<th>career option</th>";

echo "<th>First generation</th>";

echo "<th>First semester</th>";		
echo "<th>Second semester</th>";	
echo "<th>Third semester</th>";
	echo "<th>Fourth semester</th>";
echo "<th>Fifth semester</th>";	
echo "<th>Sixth semester</th>";
echo "<th>Seventh semester</th>";
echo "<th>eight semester</th>";
echo "<th>ninth semester</th>";
echo "<th>tenth semester</th>";
echo "<th>Current percentage</th>";				
echo "<th>History of Arrear</th>";
echo "<th>Cleared Arrear</th>";
echo "<th>Standing Arrear</th>";
echo "<th>Course Start</th>";



			echo"</tr>";
  echo"</thead>";
  echo"<tbody>";
 while( $row = mysql_fetch_row($q4))
 {
    echo "<tr><th scope='row'>$row[0]</th>";
	echo"<th scope='row'>$row[2]</th>";
	   echo "<th scope='row'>$row[3]</th>";
	     echo "<th scope='row'>$row[6]</th>";
		   echo "<th scope='row'>$row[14]</th>";
		     echo "<th scope='row'>$row[15]</th>";
			   echo "<th scope='row'>$row[16]</th>";  
			   echo "<th scope='row'>$row[17]</th>";
	     echo "<th scope='row'>$row[10]</th>";
		   echo "<th scope='row'>$row[12]</th>";  
		   echo "<th scope='row'>$row[13]</th>";
  echo "<th scope='row'>$row[18]</th>";
  echo "<th scope='row'>$row[19]</th>";
  echo "<th scope='row'>$row[20]</th>";
  echo "<th scope='row'>$row[21]</th>";
  echo "<th scope='row'>$row[24]</th>";
  echo "<th scope='row'>$row[25]</th>";
  echo "<th scope='row'>$row[22]</th>";
  echo "<th scope='row'>$row[23]</th>";
  echo "<th scope='row'>$row[26]</th>";
  echo "<th scope='row'>$row[29]</th>";
  echo "<th scope='row'>$row[30]</th>";
  echo "<th scope='row'>$row[27]</th>";
  echo "<th scope='row'>$row[28]</th>";
  echo "<th scope='row'>$row[31]</th>";
  echo "<th scope='row'>$row[32]</th>";
  echo "<th scope='row'>$row[33]</th>";
  echo "<th scope='row'>$row[34]</th>";
    echo "<th scope='row'>$row[57]</th>";
	  echo "<th scope='row'>$row[60]</th>";
  echo "<th scope='row'>$row[35]</th>";
  echo "<th scope='row'>$row[36]</th>";
  echo "<th scope='row'>$row[38]</th>";
  echo "<th scope='row'>$row[39]</th>";
  echo "<th scope='row'>$row[40]</th>";  
  echo "<th scope='row'>$row[41]</th>";
   echo "<th scope='row'>$row[58]</th>";
    echo "<th scope='row'>$row[59]</th>";
    echo "<th scope='row'>$row[44]</th>";
  echo "<th scope='row'>$row[42]</th>";
  
  echo "<th scope='row'>$row[43]</th>";
  echo "<th scope='row'>$row[46]</th>";
  echo "<th scope='row'>$row[45]</th>";
     echo "<th scope='row'>$row[49]</th>";
  echo "<th scope='row'>$row[48]</th>";
 
	  echo "<th scope='row'>$row[61]</th>";
	    echo "<th scope='row'>$row[53]</th>";
  echo "<th scope='row'>$row[54]</th>";
    echo "<th scope='row'>$row[63]</th>";
    echo "<th scope='row'>$row[64]</th>";
	    echo "<th scope='row'>$row[65]</th>";
		  echo "<th scope='row'>$row[66]</th>";
		    echo "<th scope='row'>$row[67]</th>";
			  echo "<th scope='row'>$row[68]</th>";
			    echo "<th scope='row'>$row[69]</th>";
				  echo "<th scope='row'>$row[70]</th>";
				    echo "<th scope='row'>$row[71]</th>";
						 echo "<th scope='row'>$row[72]</th>";
					  echo "<th scope='row'>$row[73]</th>";
					    echo "<th scope='row'>$row[74]</th>";
						  echo "<th scope='row'>$row[75]</th>";
						    echo "<th scope='row'>$row[76]</th>";
						    echo "<th scope='row'>$row[77]</th>";
							    echo "<th scope='row'>$row[78]</th>";
								    echo "<th scope='row'>$row[79]</th>";
						
							 
	  echo "</tr>";
	
  }
 echo "</tbody>";
echo "</table>";
}
else
{
	
	
	
	
	
	
	
	
	
	
	
	
	
}

if($dep=="office")
{
	
	echo "<center> <b>BE Student Details<b></center><br><br>";
echo "<table class='table'>";
  echo "<thead class='thead-inverse'>";
    echo "<tr><th>Student Rollno</th>";
	echo "<th>Name</th>";
					echo "<th>Department Name</th>";
					echo "<th>Additional Role</th>";
				echo "<th>DOB</th>";
				echo "<th>gender</th>";
				echo "<th>Mobile Number</th>";
					echo "<th>Email</th>";
					echo "<th>Alternate Email</th>";
	echo "<th>Father Name</th>";
		echo "<th>Occupation</th>";
		
		echo "<th>street name</th>";
				echo "<th>Village name</th>";
				echo "<th>Cityname</th>";
				echo "<th>state</th>";
				echo "<th>pincode</th>";
				echo "<th>language</th>";
				echo "<th>caste</th>";
	
				echo "<th>Hostel/dayscholer</th>";
				echo "<th>skills</th>";
				echo "<th>education gap</th>";
				echo "<th>education gap reason</th>";
				echo "<th>Physically challenged</th>";
				echo "<th>Detail about your illness</th>";
	
			
			
			
				
				
echo "<th>Sslc reg.no</th>";
echo "<th>sslc school name</th>";
echo "<th>sslc certificate no</th>";
echo "<th>sslc board</th>";
echo "<th>sslc mark</th>";
echo "<th>sslc percentage</th>";
echo "<th>sslc start</th>";
echo "<th>sslc end</th>";
echo "<th>hsc reg.no</th>";
echo "<th>hsc school name</th>";
echo "<th>hsc certificate no</th>";
echo "<th>hscboard</th>";
echo "<th>hscmark</th>";
echo "<th>hsc percentage</th>";
echo "<th>hsc specication</th>";
echo "<th>hsc start</th>";
echo "<th>hsc end</th>";
echo "<th>counselling rank</th>";
echo "<th>Cutoff mark</th>";
echo "<th>Diploma regno</th>";
echo "<th>Diploma College</th>";
echo "<th>Diploma percentage</th>";
echo "<th>Diploma specication</th>";
echo "<th>Diploma cutoff</th>";

echo "<th>career option</th>";

echo "<th>First generation</th>";

echo "<th>First semester</th>";		
echo "<th>Second semester</th>";	
echo "<th>Third semester</th>";
	echo "<th>Fourth semester</th>";
echo "<th>Fifth semester</th>";	
echo "<th>Sixth semester</th>";
echo "<th>seventh semester</th>";
echo "<th>eigth semester</th>";
echo "<th>Current percentage</th>";				
echo "<th>History of Arrear</th>";
echo "<th>Cleared Arrear</th>";
echo "<th>Standing Arrear</th>";
echo "<th>Course Start</th>";



			echo"</tr>";
  echo"</thead>";
  echo"<tbody>";
 while( $row = mysql_fetch_row($q5))
 {
    echo "<tr><th scope='row'>$row[0]</th>";
	echo"<th scope='row'>$row[2]</th>";
	   echo "<th scope='row'>$row[3]</th>";
	     echo "<th scope='row'>$row[6]</th>";
		   echo "<th scope='row'>$row[14]</th>";
		     echo "<th scope='row'>$row[15]</th>";
			   echo "<th scope='row'>$row[16]</th>";  
			   echo "<th scope='row'>$row[17]</th>";
	     echo "<th scope='row'>$row[10]</th>";
		   echo "<th scope='row'>$row[12]</th>";  
		   echo "<th scope='row'>$row[13]</th>";
  echo "<th scope='row'>$row[18]</th>";
  echo "<th scope='row'>$row[19]</th>";
  echo "<th scope='row'>$row[20]</th>";
  echo "<th scope='row'>$row[21]</th>";
  echo "<th scope='row'>$row[24]</th>";
  echo "<th scope='row'>$row[25]</th>";
  echo "<th scope='row'>$row[22]</th>";
  echo "<th scope='row'>$row[23]</th>";
  echo "<th scope='row'>$row[26]</th>";
  echo "<th scope='row'>$row[29]</th>";
  echo "<th scope='row'>$row[30]</th>";
  echo "<th scope='row'>$row[27]</th>";
  echo "<th scope='row'>$row[28]</th>";
  echo "<th scope='row'>$row[31]</th>";
  echo "<th scope='row'>$row[32]</th>";
  echo "<th scope='row'>$row[33]</th>";
  echo "<th scope='row'>$row[34]</th>";
    echo "<th scope='row'>$row[57]</th>";
	  echo "<th scope='row'>$row[60]</th>";
  echo "<th scope='row'>$row[35]</th>";
  echo "<th scope='row'>$row[36]</th>";
  echo "<th scope='row'>$row[38]</th>";
  echo "<th scope='row'>$row[39]</th>";
  echo "<th scope='row'>$row[40]</th>";  
  echo "<th scope='row'>$row[41]</th>";
   echo "<th scope='row'>$row[58]</th>";
    echo "<th scope='row'>$row[59]</th>";
    echo "<th scope='row'>$row[44]</th>";
  echo "<th scope='row'>$row[42]</th>";
  
  echo "<th scope='row'>$row[43]</th>";
  echo "<th scope='row'>$row[46]</th>";
  echo "<th scope='row'>$row[45]</th>";
     echo "<th scope='row'>$row[49]</th>";
  echo "<th scope='row'>$row[48]</th>";
 
	  echo "<th scope='row'>$row[61]</th>";
	    echo "<th scope='row'>$row[53]</th>";
  echo "<th scope='row'>$row[54]</th>";
    echo "<th scope='row'>$row[64]</th>";

	    echo "<th scope='row'>$row[65]</th>";
		  echo "<th scope='row'>$row[66]</th>";
		    echo "<th scope='row'>$row[67]</th>";
			  echo "<th scope='row'>$row[68]</th>";
			    echo "<th scope='row'>$row[69]</th>";
				  echo "<th scope='row'>$row[70]</th>";
				    echo "<th scope='row'>$row[71]</th>";
						 echo "<th scope='row'>$row[72]</th>";
					  echo "<th scope='row'>$row[73]</th>";
					    echo "<th scope='row'>$row[74]</th>";
						  echo "<th scope='row'>$row[75]</th>";
						    echo "<th scope='row'>$row[76]</th>";
						  echo "<th scope='row'>$row[77]</th>";
						    echo "<th scope='row'>$row[78]</th>";
						
							 
	  echo "</tr>";
	
  }
 echo "</tbody>";
echo "</table>";
}



	
	
}

?>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
</body>
</html>