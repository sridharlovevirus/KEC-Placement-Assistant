<?php
session_start();
$dep=$_SESSION['dep'];
$dep1=$dep;
$rollno=$_SESSION['user'];
include 'db.php';
if(($dep!='computer application')&&($dep!='bsc')&&($dep!='mba')&&($dep!='msc'))
{
	$dep1='be';
}
if($dep=='computer application')
{
	$dep1='mca';
}

$q="select * from login l,$dep1 m,studentpersonal s where l.id='$rollno' and s.rollno='$rollno' and m.rollno='$rollno'"; 
$q1=mysql_query($q);
//echo $q;
//select * from login l,mca m,studentpersonal s where l.id='15mcl090' and s.rollno='15mcl090' and m.rollno='15mcl090'
?>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
    <script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css" />
<script>
        $(document).ready(function() {
            $('#myTable').DataTable();
        } );
    </script>
     <title>Kongu Engineering College</title>
    
</head>
<body>
<b><center><h2>Student Details
</h2></center></b><br><br>

    </form>
	 <div class="row">
<div class="col-md-12" >

        <form name="add_name" method="post">
            <div id="table" class="table-responsive">
                <table id="myTable" class="table table-bordered table-hover">
                   
                    
                    <?php
                
				if(($dep=='mba'))
{
echo " <thead>";

    echo "<tr><td>Student Rollno</td>";
	echo "<td>Name</td>";
	echo "<td>Date of birth</td>";
	echo "<td>Gender</td>";
	echo "<td>Mail id</td>";
	echo "<td>Streetname</td>";
	echo "<td>Villagename</td>";
	echo "<td>statename</td>";
	echo "<td>Pincode</td>";
	echo "<td>Language know</td>";
	echo "<td>Physically Able</td>";
	echo "<td>Detailed about illness</td>";
	echo "<td>Education gap</td>";
	echo "<td>Reason for Education gap</td>";
	echo "<td>Caste</td>";
	echo "<td>Dayschooler / Hostel</td>";
echo "<td>Sslc schoolname</td>";
echo "<td>Sslc board</td>";
	echo "<td>Sslc regno</td>";
					echo "<td>Sslcmark</td>";				
					echo "<td>Sslc percentage</td>";
					echo "<td>Sslc certificate no</td>";
					echo "<td>Hsc schoolname</td>";
					echo "<td>Hsc board</td>";
					echo "<td>Hsc regno</td>";
						echo "<td>Hsc mark</td>";
						echo "<td>Hsc percentage</td>";
						echo "<td>Hsc certificate no</td>";
						echo "<td>HSc Specification</td>";
						echo "<td>Cutoff</td>";
						echo "<td>Dipolma regno</td>";
						echo "<td>Dipolma College</td>";
						echo "<td>Dipolma board</td>";
echo "<td>Dipolma percentage</td>";
echo "<td>Dipolma certificate no</td>";
	echo "<td>Dipolma Specification</td>";
echo "<td>Cutoff</td>";
			echo "<td>semester 1</td>";
			echo "<td>semester 2</td>";
			echo "<td>semester 3</td>";
			echo "<td>semester 4</td>";
	
		echo "<td>Current percentage</td>";
				echo "<td>Standing Arrear</td>";
				echo "<td>History of Arrear</td>";
				echo "<td>Cleared Arrear</td>";

			echo"</tr>";
  echo"</thead>";
echo "<tbody>";
while($row=mysql_fetch_array($q1))
{
echo "<tr><td>$row[id]</td>";
	echo"<td>$row[name]</td>";
	echo"<td>$row[dob]</td>";
	echo"<td>$row[gender]</td>";
	echo"<td>$row[mailid]</td>";
	echo"<td>$row[streetname]</td>";
	echo"<td>$row[villagename]</td>";
	echo"<td>$row[statename]</td>";
	echo"<td>$row[pincode]</td>";
	echo"<td>$row[language]</td>";
	echo"<td>$row[pys]</td>";
	echo"<td>$row[pysreason]</td>";
	echo"<td>$row[edugap]</td>";
	echo"<td>$row[edureason]</td>";
	echo"<td>$row[caste]</td>";
	echo"<td>$row[comefrom]</td>";
	echo"<td>$row[sslcschool]</td>";
	echo"<td>$row[sslcboard]</td>";
	echo"<td>$row[sslcregno]</td>";
	echo"<td>$row[sslcmark]</td>";
	echo"<td>$row[sslcper]</td>";
	echo"<td>$row[sslccertificate]</td>";
	
	echo"<td>$row[hscschool]</td>";
	echo"<td>$row[hscboard]</td>";
	echo"<td>$row[hscregno]</td>";
	echo"<td>$row[hscmark]</td>";
	echo"<td>$row[hscper]</td>";
	echo"<td>$row[hsccertificate]</td>";
		echo"<td>$row[hscspec]</td>";
	echo"<td>$row[hsccutoff]</td>";
	   
	    
	echo"<td>$row[dregno]</td>";

echo"<td>$row[dcollege]</td>";
	echo"<td>$row[dboard]</td>";

	
	echo"<td>$row[dper]</td>";
	echo"<td>$row[dcertificate]</td>";
		echo"<td>$row[dspec]</td>";
	echo"<td>$row[dcutoff]</td>";
	   	
		echo"<td>$row[sem1]</td>";
		echo"<td>$row[sem2]</td>";
		echo"<td>$row[sem3]</td>";
		echo"<td>$row[sem4]</td>";

		    echo  "<td>$row[cp]</td>";
			  echo "<td>$row[sa]</td>";
			  echo "<td>$row[ha]</td>";
			  echo "<td>$row[ca]</td>";
							 
	  echo "</tr>";	
}
 echo "</tbody>";

}
				
				
		if(($dep!='computer application')&&($dep!='bsc')&&($dep!='mba')&&($dep!='msc')&&($dep!='office'))
{
echo " <thead>";

    echo "<tr><td>Student Rollno</td>";
	echo "<td>Name</td>";
	echo "<td>Date of birth</td>";
	echo "<td>Gender</td>";
	echo "<td>Mail id</td>";
	echo "<td>Streetname</td>";
	echo "<td>Villagename</td>";
	echo "<td>statename</td>";
	echo "<td>Pincode</td>";
	echo "<td>Language know</td>";
	echo "<td>Physically Able</td>";
	echo "<td>Detailed about illness</td>";
	echo "<td>Education gap</td>";
	echo "<td>Reason for Education gap</td>";
	echo "<td>Caste</td>";
	echo "<td>Dayschooler / Hostel</td>";
echo "<td>Sslc schoolname</td>";
echo "<td>Sslc board</td>";
	echo "<td>Sslc regno</td>";
					echo "<td>Sslcmark</td>";				
					echo "<td>Sslc percentage</td>";
					echo "<td>Sslc certificate no</td>";
					echo "<td>Hsc schoolname</td>";
					echo "<td>Hsc board</td>";
					echo "<td>Hsc regno</td>";
						echo "<td>Hsc mark</td>";
						echo "<td>Hsc percentage</td>";
						echo "<td>Hsc certificate no</td>";
						echo "<td>HSc Specification</td>";
						echo "<td>Cutoff</td>";
						echo "<td>Dipolma regno</td>";
						echo "<td>Dipolma College</td>";
						echo "<td>Dipolma board</td>";
echo "<td>Dipolma percentage</td>";
echo "<td>Dipolma certificate no</td>";
	echo "<td>Dipolma Specification</td>";
echo "<td>Cutoff</td>";
			echo "<td>semester 1</td>";
			echo "<td>semester 2</td>";
			echo "<td>semester 3</td>";
			echo "<td>semester 4</td>";
			echo "<td>semester 5</td>";
			echo "<td>semester 6</td>";
				echo "<td>semester 7</td>";
			echo "<td>semester 8</td>";
	
		echo "<td>Current percentage</td>";
				echo "<td>Standing Arrear</td>";
				echo "<td>History of Arrear</td>";
				echo "<td>Cleared Arrear</td>";

			echo"</tr>";
  echo"</thead>";
echo "<tbody>";
while($row=mysql_fetch_array($q1))
{
echo "<tr><td>$row[id]</td>";
	echo"<td>$row[name]</td>";
	echo"<td>$row[dob]</td>";
	echo"<td>$row[gender]</td>";
	echo"<td>$row[mailid]</td>";
	echo"<td>$row[streetname]</td>";
	echo"<td>$row[villagename]</td>";
	echo"<td>$row[statename]</td>";
	echo"<td>$row[pincode]</td>";
	echo"<td>$row[language]</td>";
	echo"<td>$row[pys]</td>";
	echo"<td>$row[pysreason]</td>";
	echo"<td>$row[edugap]</td>";
	echo"<td>$row[edureason]</td>";
	echo"<td>$row[caste]</td>";
	echo"<td>$row[comefrom]</td>";
	echo"<td>$row[sslcschool]</td>";
	echo"<td>$row[sslcboard]</td>";
	echo"<td>$row[sslcregno]</td>";
	echo"<td>$row[sslcmark]</td>";
	echo"<td>$row[sslcper]</td>";
	echo"<td>$row[sslccertificate]</td>";
	
	echo"<td>$row[hscschool]</td>";
	echo"<td>$row[hscboard]</td>";
	echo"<td>$row[hscregno]</td>";
	echo"<td>$row[hscmark]</td>";
	echo"<td>$row[hscper]</td>";
	echo"<td>$row[hsccertificate]</td>";
		echo"<td>$row[hscspec]</td>";
	echo"<td>$row[hsccutoff]</td>";
	   
	    
	echo"<td>$row[dregno]</td>";

echo"<td>$row[dcollege]</td>";
	echo"<td>$row[dboard]</td>";

	
	echo"<td>$row[dper]</td>";
	echo"<td>$row[dcertificate]</td>";
		echo"<td>$row[dspec]</td>";
	echo"<td>$row[dcutoff]</td>";
	   	
		echo"<td>$row[sem1]</td>";
		echo"<td>$row[sem2]</td>";
		echo"<td>$row[sem3]</td>";
		echo"<td>$row[sem4]</td>";
		echo"<td>$row[sem5]</td>";
		echo"<td>$row[sem6]</td>";
			echo"<td>$row[sem7]</td>";
		echo"<td>$row[sem8]</td>";

		    echo  "<td>$row[cp]</td>";
			  echo "<td>$row[sa]</td>";
			  echo "<td>$row[ha]</td>";
			  echo "<td>$row[ca]</td>";
							 
	  echo "</tr>";	
}
 echo "</tbody>";

}		
				
				
				
				
				
				
				
				

                
if(($dep=='msc'))
{
echo " <thead>";

    echo "<tr><td>Student Rollno</td>";
	echo "<td>Name</td>";
	echo "<td>Date of birth</td>";
	echo "<td>Gender</td>";
	echo "<td>Mail id</td>";
	echo "<td>Streetname</td>";
	echo "<td>Villagename</td>";
	echo "<td>statename</td>";
	echo "<td>Pincode</td>";
	echo "<td>Language know</td>";
	echo "<td>Physically Able</td>";
	echo "<td>Detailed about illness</td>";
	echo "<td>Education gap</td>";
	echo "<td>Reason for Education gap</td>";
	echo "<td>Caste</td>";
	echo "<td>Dayschooler / Hostel</td>";
echo "<td>Sslc schoolname</td>";
echo "<td>Sslc board</td>";
	echo "<td>Sslc regno</td>";
					echo "<td>Sslcmark</td>";				
					echo "<td>Sslc percentage</td>";
					echo "<td>Sslc certificate no</td>";
					echo "<td>Hsc schoolname</td>";
					echo "<td>Hsc board</td>";
					echo "<td>Hsc regno</td>";
						echo "<td>Hsc mark</td>";
						echo "<td>Hsc percentage</td>";
						echo "<td>Hsc certificate no</td>";
						echo "<td>HSc Specification</td>";
						echo "<td>Cutoff</td>";
						echo "<td>Dipolma regno</td>";
						echo "<td>Dipolma College</td>";
						echo "<td>Dipolma board</td>";
echo "<td>Dipolma percentage</td>";
echo "<td>Dipolma certificate no</td>";
	echo "<td>Dipolma Specification</td>";
echo "<td>Cutoff</td>";
			echo "<td>semester 1</td>";
			echo "<td>semester 2</td>";
			echo "<td>semester 3</td>";
			echo "<td>semester 4</td>";
			echo "<td>semester 5</td>";
			echo "<td>semester 6</td>";
				echo "<td>semester 7</td>";
			echo "<td>semester 8</td>";
			echo "<td>semester 9</td>";
			echo "<td>semester 10</td>";
		echo "<td>Current percentage</td>";
				echo "<td>Standing Arrear</td>";
				echo "<td>History of Arrear</td>";
				echo "<td>Cleared Arrear</td>";

			echo"</tr>";
  echo"</thead>";
echo "<tbody>";
while($row=mysql_fetch_array($q1))
{
echo "<tr><td>$row[id]</td>";
	echo"<td>$row[name]</td>";
	echo"<td>$row[dob]</td>";
	echo"<td>$row[gender]</td>";
	echo"<td>$row[mailid]</td>";
	echo"<td>$row[streetname]</td>";
	echo"<td>$row[villagename]</td>";
	echo"<td>$row[statename]</td>";
	echo"<td>$row[pincode]</td>";
	echo"<td>$row[language]</td>";
	echo"<td>$row[pys]</td>";
	echo"<td>$row[pysreason]</td>";
	echo"<td>$row[edugap]</td>";
	echo"<td>$row[edureason]</td>";
	echo"<td>$row[caste]</td>";
	echo"<td>$row[comefrom]</td>";
	echo"<td>$row[sslcschool]</td>";
	echo"<td>$row[sslcboard]</td>";
	echo"<td>$row[sslcregno]</td>";
	echo"<td>$row[sslcmark]</td>";
	echo"<td>$row[sslcper]</td>";
	echo"<td>$row[sslccertificate]</td>";
	
	echo"<td>$row[hscschool]</td>";
	echo"<td>$row[hscboard]</td>";
	echo"<td>$row[hscregno]</td>";
	echo"<td>$row[hscmark]</td>";
	echo"<td>$row[hscper]</td>";
	echo"<td>$row[hsccertificate]</td>";
		echo"<td>$row[hscspec]</td>";
	echo"<td>$row[hsccutoff]</td>";
	   
	    
	echo"<td>$row[dregno]</td>";

echo"<td>$row[dcollege]</td>";
	echo"<td>$row[dboard]</td>";

	
	echo"<td>$row[dper]</td>";
	echo"<td>$row[dcertificate]</td>";
		echo"<td>$row[dspec]</td>";
	echo"<td>$row[dcutoff]</td>";
	   	
		echo"<td>$row[sem1]</td>";
		echo"<td>$row[sem2]</td>";
		echo"<td>$row[sem3]</td>";
		echo"<td>$row[sem4]</td>";
		echo"<td>$row[sem5]</td>";
		echo"<td>$row[sem6]</td>";
			echo"<td>$row[sem7]</td>";
		echo"<td>$row[sem8]</td>";
		echo"<td>$row[sem9]</td>";
		echo"<td>$row[sem10]</td>";
		    echo  "<td>$row[cp]</td>";
			  echo "<td>$row[sa]</td>";
			  echo "<td>$row[ha]</td>";
			  echo "<td>$row[ca]</td>";
							 
	  echo "</tr>";	
}
 echo "</tbody>";

}






















if(($dep=='bsc'))
{
echo " <thead>";

    echo "<tr><td>Student Rollno</td>";
	echo "<td>Name</td>";
	echo "<td>Date of birth</td>";
	echo "<td>Gender</td>";
	echo "<td>Mail id</td>";
	echo "<td>Streetname</td>";
	echo "<td>Villagename</td>";
	echo "<td>statename</td>";
	echo "<td>Pincode</td>";
	echo "<td>Language know</td>";
	echo "<td>Physically Able</td>";
	echo "<td>Detailed about illness</td>";
	echo "<td>Education gap</td>";
	echo "<td>Reason for Education gap</td>";
	echo "<td>Caste</td>";
	echo "<td>Dayschooler / Hostel</td>";
echo "<td>Sslc schoolname</td>";
echo "<td>Sslc board</td>";
	echo "<td>Sslc regno</td>";
					echo "<td>Sslcmark</td>";				
					echo "<td>Sslc percentage</td>";
					echo "<td>Sslc certificate no</td>";
					echo "<td>Hsc schoolname</td>";
					echo "<td>Hsc board</td>";
					echo "<td>Hsc regno</td>";
						echo "<td>Hsc mark</td>";
						echo "<td>Hsc percentage</td>";
						echo "<td>Hsc certificate no</td>";
						echo "<td>HSc Specification</td>";
						echo "<td>Cutoff</td>";
						echo "<td>Dipolma regno</td>";
						echo "<td>Dipolma College</td>";
						echo "<td>Dipolma board</td>";
echo "<td>Dipolma percentage</td>";
echo "<td>Dipolma certificate no</td>";
	echo "<td>Dipolma Specification</td>";
echo "<td>Cutoff</td>";
			echo "<td>semester 1</td>";
			echo "<td>semester 2</td>";
			echo "<td>semester 3</td>";
			echo "<td>semester 4</td>";
			echo "<td>semester 5</td>";
			echo "<td>semester 6</td>";
		echo "<td>Current percentage</td>";
				echo "<td>Standing Arrear</td>";
				echo "<td>History of Arrear</td>";
				echo "<td>Cleared Arrear</td>";

			echo"</tr>";
  echo"</thead>";
echo "<tbody>";
while($row=mysql_fetch_array($q1))
{
echo "<tr><td>$row[id]</td>";
	echo"<td>$row[name]</td>";
	echo"<td>$row[dob]</td>";
	echo"<td>$row[gender]</td>";
	echo"<td>$row[mailid]</td>";
	echo"<td>$row[streetname]</td>";
	echo"<td>$row[villagename]</td>";
	echo"<td>$row[statename]</td>";
	echo"<td>$row[pincode]</td>";
	echo"<td>$row[language]</td>";
	echo"<td>$row[pys]</td>";
	echo"<td>$row[pysreason]</td>";
	echo"<td>$row[edugap]</td>";
	echo"<td>$row[edureason]</td>";
	echo"<td>$row[caste]</td>";
	echo"<td>$row[comefrom]</td>";
	echo"<td>$row[sslcschool]</td>";
	echo"<td>$row[sslcboard]</td>";
	echo"<td>$row[sslcregno]</td>";
	echo"<td>$row[sslcmark]</td>";
	echo"<td>$row[sslcper]</td>";
	echo"<td>$row[sslccertificate]</td>";
	
	echo"<td>$row[hscschool]</td>";
	echo"<td>$row[hscboard]</td>";
	echo"<td>$row[hscregno]</td>";
	echo"<td>$row[hscmark]</td>";
	echo"<td>$row[hscper]</td>";
	echo"<td>$row[hsccertificate]</td>";
		echo"<td>$row[hscspec]</td>";
	echo"<td>$row[hsccutoff]</td>";
	  
	    
	echo"<td>$row[dregno]</td>";

echo"<td>$row[dcollege]</td>";
	echo"<td>$row[dboard]</td>";

	
	echo"<td>$row[dper]</td>";
	echo"<td>$row[dcertificate]</td>";
		echo"<td>$row[dspec]</td>";
	echo"<td>$row[dcutoff]</td>";
	   	
		echo"<td>$row[sem1]</td>";
		echo"<td>$row[sem2]</td>";
		echo"<td>$row[sem3]</td>";
		echo"<td>$row[sem4]</td>";
		echo"<td>$row[sem5]</td>";
		echo"<td>$row[sem6]</td>";
		    echo  "<td>$row[cp]</td>";
			  echo "<td>$row[sa]</td>";
			  echo "<td>$row[ha]</td>";
			  echo "<td>$row[ca]</td>";
							 
	  echo "</tr>";	
}
 echo "</tbody>";

}






















if(($dep=='computer application'))
{
echo " <thead>";

    echo "<tr><td>Student Rollno</td>";
	echo "<td>Name</td>";
	echo "<td>Date of birth</td>";
	echo "<td>Gender</td>";
	echo "<td>Mail id</td>";
	echo "<td>Streetname</td>";
	echo "<td>Villagename</td>";
	echo "<td>statename</td>";
	echo "<td>Pincode</td>";
	echo "<td>Language know</td>";
	echo "<td>Physically Able</td>";
	echo "<td>Detailed about illness</td>";
	echo "<td>Education gap</td>";
	echo "<td>Reason for Education gap</td>";
	echo "<td>Caste</td>";
	echo "<td>Dayschooler / Hostel</td>";
echo "<td>Sslc schoolname</td>";
echo "<td>Sslc board</td>";
	echo "<td>Sslc regno</td>";
					echo "<td>Sslcmark</td>";				
					echo "<td>Sslc percentage</td>";
					echo "<td>Sslc certificate no</td>";
					echo "<td>Hsc schoolname</td>";
					echo "<td>Hsc board</td>";
					echo "<td>Hsc regno</td>";
						echo "<td>Hsc mark</td>";
						echo "<td>Hsc percentage</td>";
						echo "<td>Hsc certificate no</td>";
						echo "<td>HSc Specification</td>";
						echo "<td>Cutoff</td>";
						echo "<td>Dipolma regno</td>";
						echo "<td>Dipolma College</td>";
						echo "<td>Dipolma board</td>";
echo "<td>Dipolma percentage</td>";
echo "<td>Dipolma certificate no</td>";
	echo "<td>Dipolma Specification</td>";
echo "<td>Cutoff</td>";
			echo "<td>semester 1</td>";
			echo "<td>semester 2</td>";
			echo "<td>semester 3</td>";
			echo "<td>semester 4</td>";
			echo "<td>semester 5</td>";
			echo "<td>semester 6</td>";
		echo "<td>Current percentage</td>";
				echo "<td>Standing Arrear</td>";
				echo "<td>History of Arrear</td>";
				echo "<td>Cleared Arrear</td>";

			echo"</tr>";
  echo"</thead>";
echo "<tbody>";
while($row=mysql_fetch_array($q1))
{
echo "<tr><td>$row[id]</td>";
	echo"<td>$row[name]</td>";
	echo"<td>$row[dob]</td>";
	echo"<td>$row[gender]</td>";
	echo"<td>$row[mailid]</td>";
	echo"<td>$row[streetname]</td>";
	echo"<td>$row[villagename]</td>";
	echo"<td>$row[statename]</td>";
	echo"<td>$row[pincode]</td>";
	echo"<td>$row[language]</td>";
	echo"<td>$row[pys]</td>";
	echo"<td>$row[pysreason]</td>";
	echo"<td>$row[edugap]</td>";
	echo"<td>$row[edureason]</td>";
	echo"<td>$row[caste]</td>";
	echo"<td>$row[comefrom]</td>";
	echo"<td>$row[sslcschool]</td>";
	echo"<td>$row[sslcboard]</td>";
	echo"<td>$row[sslcregno]</td>";
	echo"<td>$row[sslcmark]</td>";
	echo"<td>$row[sslcper]</td>";
	echo"<td>$row[sslccertificate]</td>";
	
	echo"<td>$row[hscschool]</td>";
	echo"<td>$row[hscboard]</td>";
	echo"<td>$row[hscregno]</td>";
	echo"<td>$row[hscmark]</td>";
	echo"<td>$row[hscper]</td>";
	echo"<td>$row[hsccertificate]</td>";
		echo"<td>$row[hscspec]</td>";
	echo"<td>$row[hsccutoff]</td>";
	  
	    
	echo"<td>$row[dregno]</td>";

echo"<td>$row[dcollege]</td>";
	echo"<td>$row[dboard]</td>";

	
	echo"<td>$row[dper]</td>";
	echo"<td>$row[dcertificate]</td>";
		echo"<td>$row[dspec]</td>";
	echo"<td>$row[dcutoff]</td>";
	   	
		echo"<td>$row[sem1]</td>";
		echo"<td>$row[sem2]</td>";
		echo"<td>$row[sem3]</td>";
		echo"<td>$row[sem4]</td>";
		echo"<td>$row[sem5]</td>";
		echo"<td>$row[sem6]</td>";
		    echo  "<td>$row[cp]</td>";
			  echo "<td>$row[sa]</td>";
			  echo "<td>$row[ha]</td>";
			  echo "<td>$row[ca]</td>";
							 
	  echo "</tr>";	
}
 echo "</tbody>";

}



                    ?>
                </table>
            </div>
			</div>
</body>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="//code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.13/js/dataTables.bootstrap.min.js"></script>
</html>