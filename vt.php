<?php
$q1="";
if(isset($_GET['download']))
{
	if($_GET['download']==1)
	{
		 header('Content-Type: application/xls');
 header('Content-Disposition: attachment; filename=student.xls');
	}
}
mysql_connect('localhost','root','');
mysql_select_db('kongu');
session_start();
$dep1="";
$mba="";
$msc="";
$bsc="";
$be="";
$mca="";
$dep=$_SESSION['dep'];

if($dep=='office')
{
	$dep1="office";
}
else if($dep=='computer application')
{
	$dep1="mca";
} else if($dep=="bsc")
{
	$dep1="bsc";
}
else if($dep=="msc")
{
	$dep1="msc";
}
else if($dep=="mba")
{
	$dep1="mba";
}
else
{
	$dep1="be";
}
if(isset($_POST['s']))
{

	$ce=$_POST['c'];
	$_SESSION['ce']=$ce;// new change for excel and also make change on line 785
	if($dep!='office')
	{
	$q="select * from login l,studentpersonal s,$dep1 m where s.rollno=m.rollno and l.id=m.rollno and m.ce='$ce' and s.rollno in (select id from login where department='$dep')";

	$q1=mysql_query($q);
	$_SESSION['res']=$q1;
	}
	
	

	


}

?>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
	     <link href="css/tableexport.min.css" rel="stylesheet">
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
<script>
function load1()
{
$('table').tableExport();
alert('Please Select Type for  Export data');

}
</script>

<button onclick="load1()">Download Report</button>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="search.php"><b>Home</b></a>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
// Load google charts
function load(a)
{
	
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

// Draw the chart and set the chart values
function drawChart() {
  var data = google.visualization.arrayToDataTable(a);

  // Optional; add a title and set the width and height of the chart
  var options = {'title':'Student Report', 'width':800, 'height':800};

  // Display the chart inside the <div> element with id="piechart"
  var chart = new google.visualization.PieChart(document.getElementById('piechart'));
  chart.draw(data, options);
}
}
</script>

<b><center><h2>Student Details
</h2></center></b><br><br>

    </form>
	 <div class="row">
<div class="col-md-12" >

        <form name="add_name" method="post">
            <div id="table" class="table-responsive">
                <table id="myTable" class="table table-bordered table-hover">
                   
                    
                    <?php
        
				$ce=$_SESSION['ce'];
				
				
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
		$q1=$_SESSION['res'];
		$q="select  from login l,studentpersonal s,$dep1 m where s.rollno=m.rollno and l.id=m.rollno and m.ce='$ce' and s.rollno in (select id from login where department='$dep')";

	$q1=mysql_query($q);
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
		$q1=$_SESSION['res'];
		$q="select * from login l,studentpersonal s,$dep1 m where s.rollno=m.rollno and l.id=m.rollno and m.ce='$ce' and s.rollno in (select id from login where department='$dep')";

	$q1=mysql_query($q);
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
		$q1=$_SESSION['res'];
		$q="select * from login l,studentpersonal s,$dep1 m where s.rollno=m.rollno and l.id=m.rollno and m.ce='$ce' and s.rollno in (select id from login where department='$dep')";

	$q1=mysql_query($q);
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
		$q1=$_SESSION['res'];
		$q="select * from login l,studentpersonal s,$dep1 m where s.rollno=m.rollno and l.id=m.rollno and m.ce='$ce' and s.rollno in (select id from login where department='$dep')";

	$q1=mysql_query($q);
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
		$q1=$_SESSION['res'];
		$q="select * from login l,studentpersonal s,$dep1 m where s.rollno=m.rollno and l.id=m.rollno and m.ce='$ce' and s.rollno in (select id from login where department='$dep')";
//echo $q;
	$q1=mysql_query($q);
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
else if($dep=='office')
{
if($dep=='office')
	{
	$ce=$_SESSION['ce'];
		
	$bsc="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and l.id=m.rollno and m.ce='$ce' and s.rollno in (select id from login where department='bsc')";
		
	$bq=mysql_query($bsc);
	
	$mca="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and l.id=m.rollno and m.ce='$ce' and s.rollno in (select id from login where department='computer application')";	
		
	$mq=mysql_query($mca);
$mba="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and l.id=m.rollno and m.ce='$ce' and s.rollno in (select id from login where department='mba')";	
		
	$mbq=mysql_query($mba);
		$msc="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and l.id=m.rollno and m.ce='$ce' and s.rollno in (select id from login where department='msc')";
		$msq=mysql_query($msc);
	
		//echo $mca;
		
		$be="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and l.id=m.rollno and m.ce='$ce' and s.rollno in (select id from login where department='civil' or department='cse' or department='eee' or department='ece' or department='automobiles' or department='foodtech' or department='chemistry')";
		$beq=mysql_query($be);
	
$bc=mysql_num_rows($bq);
$mc=mysql_num_rows($mq);
$mbc=mysql_num_rows($mbq);
$msco=mysql_num_rows($msq);
$bcc=mysql_num_rows($beq);
echo "<center>";
echo "<hr><h4><b>Student Report</b></h4> <a href='#g'>View Graphical Report</a><hr>";
	
	//echo "<b><br><hr>1. BSc Students Count:".$bc." <br>  2. Mca Students Count:".$mc."  <br> 3. Mba Students Count:".$mbc."   <br> 4. Msc Students Count:".$msco." <br> 5.    BE Students Count:   ".$bcc."<hr><br></ol>";
		$a="[
  ['Task', 'Hours per Day'],
  ['B.sc', $bc],
  ['MCA', $mc],
  ['MBA', $mbc],
  ['M.sc', $msco],
  ['BE', $bcc]
]";

		echo "<script>load($a);</script>";
		echo "<hr></center>";
		
		echo "<br><br> <thead>";
	
 


    echo "<tr><td>Student Rollno</td>";
	echo "<td>Name</td>";
					echo "<td>Hsc percentage</td>";
					echo "<td>Sslc percentage</td>";
			
		echo "<td>Current percentage</td>";
				echo "<td>Department</td>";

			echo"</tr>";
  echo"</thead>";
echo "<tbody>";
while($row=mysql_fetch_array($bq))
{
echo "<tr><td>$row[id]</td>";
	echo"<td>$row[name]</td>";
	   echo "<td>$row[hscper]</td>";
	     echo "<td>$row[sslcper]</td>";
	 
		    echo  "<td>$row[cp]</td>";
				 echo "<td>$row[department]</td>"; 
							 
	  echo "</tr>";	
}

	

	
	
	
			

while($row=mysql_fetch_array($mq))
{
echo "<tr><td>$row[id]</td>";
	echo"<td>$row[name]</td>";
	   echo "<td>$row[hscper]</td>";
	     echo "<td>$row[sslcper]</td>";
	
		    echo  "<td>$row[cp]</td>";
			  
				 echo "<td>$row[department]</td>"; 			 
	  echo "</tr>";	
}

	
	
	
	
	

while($row=mysql_fetch_array($mbq))
{
echo "<tr><td>$row[id]</td>";
	echo"<td>$row[name]</td>";
	   echo "<td>$row[hscper]</td>";
	     echo "<td>$row[sslcper]</td>";
	
		    echo  "<td>$row[cp]</td>";
				 echo "<td>$row[department]</td>"; 
							 
	  echo "</tr>";	
}
//echo $be;
	
	
	
	
	

while($row=mysql_fetch_array($msq))
{
echo "<tr><td>$row[id]</td>";
	echo"<td>$row[name]</td>";
	   echo "<td>$row[hscper]</td>";
	     echo "<td>$row[sslcper]</td>";
	 
		    echo  "<td>$row[cp]</td>";
			  	 echo "<td>$row[department]</td>"; 
							 
	  echo "</tr>";	
}

	
	
	
	
	


while($row=mysql_fetch_array($beq))
{
echo "<tr><td>$row[id]</td>";
	echo"<td>$row[name]</td>";
	   echo "<td>$row[hscper]</td>";
	     echo "<td>$row[sslcper]</td>";

		    echo  "<td>$row[cp]</td>";
			  
							 echo "<td>$row[department]</td>"; 
	  echo "</tr>";	
}
 echo "</tbody>";
	
	
	
	
	
	
	
	}
	
	}


                    ?>
                </table>
				<center><br><Br>
				<a name="g">
				<div id="piechart"></div>
            </div>
			</div>
			<center><b><a href="search.php">Go Back to menu</a></b></center>
</body>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="//code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.13/js/dataTables.bootstrap.min.js"></script>
	<script src="js/FileSaver.min.js"></script>
		<script src="js/tableexport.min.js"></script>
		
</html>