<?php
include 'db.php';
session_start();
$dep=$_SESSION['dep'];
$dep1=$dep;
if(($dep!='computer application')&&($dep!='bsc')&&($dep!='msc')&&($dep!='mba'))
{
	$dep1='be';
}

$t="select * from placedstudent where department='$dep1'";
$q1=mysql_query($t);
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
 <div class="row">
<div class="col-md-12" >
<a name="t">
        <form name="add_name" method="post">
            <div id="table" class="table-responsive">
                <table id="myTable" class="table table-bordered table-hover">
<?php
echo "<center>Placed Student Details</center>";
echo " <thead>";
	
 


    echo "<tr><td>Student Rollno</td>";
	echo "<td>Name</td>";
					echo "<td>Company Name</td>";
					echo "<td>Department</td>";
		
		echo "<td>Date</td>";
					  //echo "<td>Department</td>";

			echo"</tr>";
  echo"</thead>";
  echo "<tbody>";
  while($row=mysql_fetch_array($q1))
{
echo "<tr><td>$row[rollno]</td>";
	echo"<td>$row[name]</td>";
	   echo "<td>$row[company]</td>";
	     echo "<td>$row[department]</td>";

		    echo  "<td>$row[date]</td>";
			  	  
							 
	  echo "</tr>";	
}
echo "</tbody></table>";

  
  
?>
</div></div>
</body>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="//code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.13/js/dataTables.bootstrap.min.js"></script>
</html>