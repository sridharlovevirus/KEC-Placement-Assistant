<?php
error_reporting(0);
session_start();
$count=0;

$dep=$_SESSION['dep'];



if(isset($_POST['submit']))
{
	
		
	
	if($dep=="computer application")
	{
	$q="select * from login l,studentpersonal s,mca m where 1 and s.rollno=m.rollno and l.id=m.rollno and m.co='placement' ";// and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";
	$qe="and s.rollno in (select id from login where department='$dep')";
	if(isset($_POST['sslcper']))
	{
				$sslcper=$_POST['sslcper'];
		if($sslcper!='')
		{

		$q=$q."and sslcper>='$sslcper' ";
		}
	}
	if(isset($_POST['hscper']))
	{
				$hscper=$_POST['hscper'];
		if($hscper!='')
		{

			$q=$q."and hscper>='$hscper' ";
		}
	}
	if(isset($_POST['ugper']))
	{
			$ugper=$_POST['ugper'];
		if($ugper!='')
		{
	
		$q=$q."and ugper>='$ugper' ";
		}
	}
	if(isset($_POST['cper']))
	{
		$cper=$_POST['cper'];
		if($cper!='')
		{
		
			$q=$q."and cp>='$cper' ";
	}
	}
	if(isset($_POST['sa']))
	{
		$sa=$_POST['sa'];
		if($sa!='')
		{
		
		$q=$q."and sa<='$sa' ";
	}
	}
	
	
		if(isset($_POST['ha']))
	{
		$ha=$_POST['ha'];
		if($ha!='')
		{
		
		$q=$q."and ha<='$ha' ";
	}
	}
	
	if(isset($_POST['year']))
	{
				$year=$_POST['year'];
		if($year!='')
		{

			$q=$q."and ce='$year' ";
	}
	
	}
	}
 if($dep=="mba")
	{
	$q="select * from login l,studentpersonal s,mba m where 1 and s.rollno=m.rollno and l.id=m.rollno and m.co='placement' ";// and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";
	$qe="and s.rollno in (select id from login where department='$dep')";
	if(isset($_POST['sslcper']))
	{
				$sslcper=$_POST['sslcper'];
		if($sslcper!='')
		{

		$q=$q."and sslcper>='$sslcper' ";
		}
	}
		if(isset($_POST['ha']))
	{
		$ha=$_POST['ha'];
		if($ha!='')
		{
		
		$q=$q."and ha<='$ha' ";
	}
	}
	if(isset($_POST['hscper']))
	{
				$hscper=$_POST['hscper'];
		if($hscper!='')
		{

			$q=$q."and hscper>='$hscper' ";
		}
	}
	if(isset($_POST['ugper']))
	{
			$ugper=$_POST['ugper'];
		if($ugper!='')
		{
	
		$q=$q."and ugper>='$ugper' ";
		}
	}
	if(isset($_POST['cper']))
	{
		$cper=$_POST['cper'];
		if($cper!='')
		{
		
			$q=$q."and cp>='$cper' ";
	}
	}
	if(isset($_POST['sa']))
	{
		$sa=$_POST['sa'];
		if($sa!='')
		{
		
		$q=$q."and sa<='$sa' ";
	}
	}
	if(isset($_POST['year']))
	{
				$year=$_POST['year'];
		if($year!='')
		{

			$q=$q."and ce='$year' ";
	}
	
	}
	}
	if($dep=="msc")
	{
	$q="select * from login l,studentpersonal s,msc m where 1 and s.rollno=m.rollno and l.id=m.rollno and m.coption='placement' ";// and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";
	$qe="and s.rollno in (select id from login where department='$dep')";
	if(isset($_POST['sslcper']))
	{
				$sslcper=$_POST['sslcper'];
		if($sslcper!='')
		{

		$q=$q."and sslcper>='$sslcper' ";
		}
	}
		if(isset($_POST['ha']))
	{
		$ha=$_POST['ha'];
		if($ha!='')
		{
		
		$q=$q."and ha<='$ha' ";
	}
	}
	if(isset($_POST['hscper']))
	{
				$hscper=$_POST['hscper'];
		if($hscper!='')
		{

			$q=$q."and hscper>='$hscper' ";
		}
	}
	if(isset($_POST['ugper']))
	{
			$ugper=$_POST['ugper'];
		if($ugper!='')
		{
	
		$q=$q."and ugper>='$ugper' ";
		}
	}
	if(isset($_POST['cper']))
	{
		$cper=$_POST['cper'];
		if($cper!='')
		{
		
			$q=$q."and cp>='$cper' ";
	}
	}
	if(isset($_POST['sa']))
	{
		$sa=$_POST['sa'];
		if($sa!='')
		{
		
		$q=$q."and sa<='$sa' ";
	}
	}
	if(isset($_POST['year']))
	{
				$year=$_POST['year'];
		if($year!='')
		{

			$q=$q."and ce='$year' ";
	}
	
	}
	}
	if(($dep!="computer application")&&($dep!="mba")&&($dep!="msc")&&($dep!="bsc")&&($dep!="office"))
	{
	$q="select * from login l,studentpersonal s,be m where 1 and s.rollno=m.rollno and l.id=m.rollno and m.co='placement' ";// and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";
	$qe="and s.rollno in (select id from login where department='$dep')";
	$dep='be';
	if(isset($_POST['sslcper']))
	{
				$sslcper=$_POST['sslcper'];
		if($sslcper!='')
		{

		$q=$q."and sslcper>='$sslcper' ";
		}
	}
		if(isset($_POST['ha']))
	{
		$ha=$_POST['ha'];
		if($ha!='')
		{
		
		$q=$q."and ha<='$ha' ";
	}
	}
	if(isset($_POST['hscper']))
	{
				$hscper=$_POST['hscper'];
		if($hscper!='')
		{

			$q=$q."and hscper>='$hscper' ";
		}
	}
	if(isset($_POST['ugper']))
	{
			$ugper=$_POST['ugper'];
		if($ugper!='')
		{
	
		$q=$q."and ugper>='$ugper' ";
		}
	}
	if(isset($_POST['cper']))
	{
		$cper=$_POST['cper'];
		if($cper!='')
		{
		
			$q=$q."and cp>='$cper' ";
	}
	}
	if(isset($_POST['sa']))
	{
		$sa=$_POST['sa'];
		if($sa!='')
		{
		
		$q=$q."and sa<='$sa' ";
	}
	}
	if(isset($_POST['year']))
	{
				$year=$_POST['year'];
		if($year!='')
		{

			$q=$q."and ce='$year' ";
	}
	
	}
	}
	if($dep=="bsc")
	{
	$q="select * from login l,studentpersonal s,bsc m where 1 and s.rollno=m.rollno and l.id=m.rollno and m.coption='placement' ";// and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";
	$qe="and s.rollno in (select id from login where department='$dep')";
	if(isset($_POST['sslcper']))
	{
				$sslcper=$_POST['sslcper'];
		if($sslcper!='')
		{

		$q=$q."and sslcper>='$sslcper' ";
		}
	}
		if(isset($_POST['ha']))
	{
		$ha=$_POST['ha'];
		if($ha!='')
		{
		
		$q=$q."and ha<='$ha' ";
	}
	}
	if(isset($_POST['hscper']))
	{
				$hscper=$_POST['hscper'];
		if($hscper!='')
		{

			$q=$q."and hscper>='$hscper' ";
		}
	}
	if(isset($_POST['ugper']))
	{
			$ugper=$_POST['ugper'];
		if($ugper!='')
		{
	
		$q=$q."and ugper>='$ugper' ";
		}
	}
	if(isset($_POST['cper']))
	{
		$cper=$_POST['cper'];
		
		if($cper!='')
		{
		
			$q=$q."and cp>='$cper' ";
	}
	}
	if(isset($_POST['sa']))
	{
		$sa=$_POST['sa'];
		if($sa!='')
		{
		
		$q=$q."and sa<='$sa' ";
	}
	}
	
	if(isset($_POST['ha']))
	{
				$ha=$_POST['ha'];
		if($ha!='')
		{

			$q=$q."and ha<='$ha' ";
	}
	
	}
	
	
	if(isset($_POST['year']))
	{
				$year=$_POST['year'];
		if($year!='')
		{

			$q=$q."and ce='$year' ";
	}
	
	}
	
	

}
}
$q=$q.$qe;
if($q!="")
{
$_SESSION['qu']=$q;
}
else if($q=="")
{
	$q=$_SESSION['qu'];
}
mysql_connect('localhost','root','');
mysql_select_db('kongu');
$q1=mysql_query($q);
$c=mysql_num_rows($q1);



	
	
	
	
	


	
	
	
	
	

?>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	     <link href="css/tableexport.min.css" rel="stylesheet">
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
	<script>
function load1()
{
$('table').tableExport();
alert('Please Select Type for  Export data');

}
</script>

<button onclick="load1()">Download Report</button>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="search.php"><b>Home</b></a>

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
                   

                
if(($dep=='bsc')||($dep=='be')||($dep=='msc'))
{
echo " <thead>";

    echo "<tr><td>Student Rollno</td>";
	echo "<td>Name</td>";
					echo "<td>Hsc percentage</td>";
					echo "<td>Sslc percentage</td>";
			
		echo "<td>Current percentage</td>";
				

			echo"</tr>";
  echo"</thead>";
echo "<tbody>";
while($row=mysql_fetch_array($q1))
{
echo "<tr><td>$row[id]</td>";
	echo"<td>$row[name]</td>";
	   echo "<td>$row[hscper]</td>";
	     echo "<td>$row[sslcper]</td>";
	
		    echo  "<td>$row[cp]</td>";
			  
							 
	  echo "</tr>";	
}
 echo "</tbody>";

}
else if(($dep=='mba')||($dep=='computer application'))
{
	echo " <thead>";
	
 


    echo "<tr><td>Student Rollno</td>";
	echo "<td>Name</td>";
					echo "<td>Hsc percentage</td>";
					echo "<td>Sslc percentage</td>";
			echo "<td>Ug percentage</td>";
		echo "<td>Current percentage</td>";
				

			echo"</tr>";
  echo"</thead>";
echo "<tbody>";
while($row=mysql_fetch_array($q1))
{
echo "<tr><td>$row[id]</td>";
	echo"<td>$row[name]</td>";
	   echo "<td>$row[hscper]</td>";
	     echo "<td>$row[sslcper]</td>";
	  echo "<td>$row[ugper]</td>";
		    echo  "<td>$row[cp]</td>";
			  
							 
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
	<script src="js/FileSaver.min.js"></script>
		<script src="js/tableexport.min.js"></script>
</html>