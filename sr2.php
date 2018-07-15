<?php
error_reporting(0);
$wchart="";
$a="[
  ['Task', 'Hours per Day']";

mysql_connect('localhost','root','');
mysql_select_db('kongu');
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
<a name="t">
        <form name="add_name" method="post">
            <div id="table" class="table-responsive">
                <table id="myTable" class="table table-bordered table-hover">
                   
<?php

if(isset($_POST['submit']))
{

	$cse1=0;
	$civil1=0;
	$aut1=0;
	$it1=0;
	$ece1=0;
	$eee1=0;
	$mech1=0;
	$be="";
	$w=" where 1";
	$mca="";
	$mca1=0;
	$mba="";
	$mba1=0;
	$msc="";
	$msc1="";
	$bsc="";
	$bsc1=0;
	$be1=0;
	$b1=0;
	$q="select * from login l,studentpersonal s";
	$dep=$_POST['dept1'];
	$count=0;
	foreach($dep as $s)
	{
		if($s=="computer application")
		{
				
		$q="select * from login l,studentpersonal s";						
			$q3=$q.",mca b3";
			$mca=" and b3.rollno=s.rollno and b3.rollno=l.id and b3.co='placement' ";
			$mcmid=" where 1 ";
			$q3=$q3.$mcmid;
			
			$q3=$q3.$mca;
			
			$mcend=" and s.rollno in (select id from login where department='computer application')";
			$mca1=1;
			
			if(isset($_POST['sslcper']))
	{
				$sslcper=$_POST['sslcper'];
		if($sslcper!='')
		{

		$q3=$q3." and sslcper>='$sslcper' ";
		}
	}
		if(isset($_POST['ha']))
	{
		$ha=$_POST['ha'];
		if($ha!='')
		{
		
		$q3=$q3." and ha<='$ha' ";
	}
	}
	if(isset($_POST['hscper']))
	{
				$hscper=$_POST['hscper'];
		if($hscper!='')
		{

			$q3=$q3." and hscper>='$hscper' ";
		}
	}
	if(isset($_POST['ugper']))
	{
			$ugper=$_POST['ugper'];
		if($ugper!='')
		{
	
		$q3=$q3." and ugper>='$ugper' ";
		}
	}
	if(isset($_POST['cper']))
	{
		$cper=$_POST['cper'];
		
		if($cper!='')
		{
		
			$q3=$q3." and cp>='$cper' ";
	}
	}
	if(isset($_POST['sa']))
	{
		$sa=$_POST['sa'];
		if($sa!='')
		{
		
		$q3=$q3." and sa<='$sa' ";
	}
	}
	
	if(isset($_POST['ha']))
	{
				$ha=$_POST['ha'];
		if($ha!='')
		{

			$q3=$q3." and ha<='$ha' ";
	}
	
	}
	
	
	if(isset($_POST['year']))
	{
				$year=$_POST['year'];
		if($year!='')
		{

			$q3=$q3." and ce='$year' ";
	}
	
	}
	
		if(isset($_POST['ugper']))
	{
				$ugper=$_POST['ugper'];
		if($ugper!='')
		{

			$q3=$q3." and ugper>='$ugper' ";
	}
	
	}
	
	
	$mcafinal=$q3.$mcend;
			
			
			
			
			
		}
		else if($s=="bsc")
		{
			$q=$q.",bsc b";
			$bsc=" and b.rollno=s.rollno and b.rollno=l.id and b.coption='placement' ";
			$bmid=" where 1 ";
			$q=$q.$bmid;
			$q=$q.$bsc;
			$bend=" and s.rollno in (select id from login where department='bsc')";
			$bsc1=1;
			
			if(isset($_POST['sslcper']))
	{
				$sslcper=$_POST['sslcper'];
		if($sslcper!='')
		{

		$q=$q." and sslcper>='$sslcper' ";
		}
	}
		if(isset($_POST['ha']))
	{
		$ha=$_POST['ha'];
		if($ha!='')
		{
		
		$q=$q." and ha<='$ha' ";
	}
	}
	if(isset($_POST['hscper']))
	{
				$hscper=$_POST['hscper'];
		if($hscper!='')
		{

			$q=$q." and hscper>='$hscper' ";
		}
	}
	
	if(isset($_POST['cper']))
	{
		$cper=$_POST['cper'];
		
		if($cper!='')
		{
		
			$q=$q." and cp>='$cper' ";
	}
	}
	if(isset($_POST['sa']))
	{
		$sa=$_POST['sa'];
		if($sa!='')
		{
		
		$q=$q." and sa<='$sa' ";
	}
	}
	
	if(isset($_POST['ha']))
	{
				$ha=$_POST['ha'];
		if($ha!='')
		{

			$q=$q." and ha<='$ha' ";
	}
	
	}
	
	
	if(isset($_POST['year']))
	{
				$year=$_POST['year'];
		if($year!='')
		{

			$q=$q." and ce='$year' ";
	}
	
	}
	$bscfinal=$q.$bend;
//echo "<br><br>".$bscfinal;
		}
		else if($s=="msc")
		{
					$q="select * from login l,studentpersonal s";	
			$q1=$q.",msc b1";
			
			$msc=" and b1.rollno=s.rollno and b1.rollno=l.id and b1.coption='placement' ";
			$mmid=" where 1 ";
			$q1=$q1.$mmid;
			$q1=$q1.$msc;
			$msend=" and s.rollno in (select id from login where department='msc')";
			$msc1=1;
			
			if(isset($_POST['sslcper']))
	{
				$sslcper=$_POST['sslcper'];
		if($sslcper!='')
		{

		$q1=$q1." and sslcper>='$sslcper' ";
		}
	}
		if(isset($_POST['ha']))
	{
		$ha=$_POST['ha'];
		if($ha!='')
		{
		
		$q1=$q1." and ha<='$ha' ";
	}
	}
	if(isset($_POST['hscper']))
	{
				$hscper=$_POST['hscper'];
		if($hscper!='')
		{

			$q1=$q1." and hscper>='$hscper' ";
		}
	}
	if(isset($_POST['ugper']))
	{
			$ugper=$_POST['ugper'];
		if($ugper!='')
		{
	
		$q1=$q1." and ugper>='$ugper' ";
		}
	}
	if(isset($_POST['cper']))
	{
		$cper=$_POST['cper'];
		
		if($cper!='')
		{
		
			$q1=$q1." and cp>='$cper' ";
	}
	}
	if(isset($_POST['sa']))
	{
		$sa=$_POST['sa'];
		if($sa!='')
		{
		
		$q1=$q1." and sa<='$sa' ";
	}
	}
	
	if(isset($_POST['ha']))
	{
				$ha=$_POST['ha'];
		if($ha!='')
		{

			$q1=$q1." and ha<='$ha' ";
	}
	
	}
	
	
	if(isset($_POST['year']))
	{
				$year=$_POST['year'];
		if($year!='')
		{

			$q1=$q1." and ce='$year' ";
	}
	
	}
	//echo "<br>q1".$q1;
	$mscfinal=$q1.$msend;
	
			
			
			
			//echo "<br><br>".$mscfinal;
			
			
			
			
			
		}
		else if($s=="mba")
		{
			
			
			
			
			
		$q="select * from login l,studentpersonal s";						
			$q2=$q.",mba b2";
			$mba=" and b2.rollno=s.rollno and b2.rollno=l.id and b2.co='placement' ";
			$mbmid=" where 1 ";
			$q2=$q2.$mbmid;
			
			$q2=$q2.$mba;
			
			$mbend=" and s.rollno in (select id from login where department='mba')";
			$mba1=1;
			
			if(isset($_POST['sslcper']))
	{
				$sslcper=$_POST['sslcper'];
		if($sslcper!='')
		{

		$q2=$q2." and sslcper>='$sslcper' ";
		}
	}
		if(isset($_POST['ha']))
	{
		$ha=$_POST['ha'];
		if($ha!='')
		{
		
		$q2=$q2." and ha<='$ha' ";
	}
	}
	if(isset($_POST['hscper']))
	{
				$hscper=$_POST['hscper'];
		if($hscper!='')
		{

			$q2=$q2." and hscper>='$hscper' ";
		}
	}
	if(isset($_POST['ugper']))
	{
			$ugper=$_POST['ugper'];
		if($ugper!='')
		{
	
		$q2=$q2." and ugper>='$ugper' ";
		}
	}
	if(isset($_POST['cper']))
	{
		$cper=$_POST['cper'];
		
		if($cper!='')
		{
		
			$q2=$q2." and cp>='$cper' ";
	}
	}
	if(isset($_POST['sa']))
	{
		$sa=$_POST['sa'];
		if($sa!='')
		{
		
		$q2=$q2." and sa<='$sa' ";
	}
	}
	
	if(isset($_POST['ha']))
	{
				$ha=$_POST['ha'];
		if($ha!='')
		{

			$q2=$q2." and ha<='$ha' ";
	}
	
	}
	
	
	if(isset($_POST['year']))
	{
				$year=$_POST['year'];
		if($year!='')
		{

			$q2=$q2." and ce='$year' ";
	}
	
	}
	
	
	if(isset($_POST['ugper']))
	{
				$ugper=$_POST['ugper'];
		if($ugper!='')
		{

			$q2=$q2." and ugper>='$ugper' ";
	}
	
	}
	
	
	$mbafinal=$q2.$mbend;
			
			
			//echo "<br><br>".$mbafinal;
			
			
			
			
			
			
			
			
			
			
			
		}
		else if($s=='cse')
		{
			$q="select * from login l,studentpersonal s";						
			$q4=$q.",be b4";
			$cse=" and b4.rollno=s.rollno and b4.rollno=l.id and b4.co='placement' ";
			$cseid=" where 1 ";
			$q4=$q4.$cseid;
			
			$q4=$q4.$cse;
			
			$cseend=" and s.rollno in (select id from login where department='cse')";
			$cse1=1;
			
			if(isset($_POST['sslcper']))
	{
				$sslcper=$_POST['sslcper'];
		if($sslcper!='')
		{

		$q4=$q4." and sslcper>='$sslcper' ";
		}
	}
		if(isset($_POST['ha']))
	{
		$ha=$_POST['ha'];
		if($ha!='')
		{
		
		$q4=$q4." and ha<='$ha' ";
	}
	}
	if(isset($_POST['hscper']))
	{
				$hscper=$_POST['hscper'];
		if($hscper!='')
		{

			$q4=$q4." and hscper>='$hscper' ";
		}
	}

	if(isset($_POST['cper']))
	{
		$cper=$_POST['cper'];
		
		if($cper!='')
		{
		
			$q4=$q4." and cp>='$cper' ";
	}
	}
	if(isset($_POST['sa']))
	{
		$sa=$_POST['sa'];
		if($sa!='')
		{
		
		$q4=$q4." and sa<='$sa' ";
	}
	}
	
	if(isset($_POST['ha']))
	{
				$ha=$_POST['ha'];
		if($ha!='')
		{

			$q4=$q4." and ha<='$ha' ";
	}
	
	}
	
	
	if(isset($_POST['year']))
	{
				$year=$_POST['year'];
		if($year!='')
		{

			$q4=$q4." and ce='$year' ";
	}
	
	}
	$csefinal=$q4.$cseend;
			//echo $csefinal;
			
		
			
			
			
			
		}
		else if($s=='civil')
		{
			
			$q="select * from login l,studentpersonal s";						
			$q5=$q.",be b5";
			$civil=" and b5.rollno=s.rollno and b5.rollno=l.id and b5.co='placement' ";
			$civilid=" where 1 ";
			$q5=$q5.$civilid;
			
			$q5=$q5.$civil;
			
			$civilend=" and s.rollno in (select id from login where department='civil')";
			$civil1=1;
			
			if(isset($_POST['sslcper']))
	{
				$sslcper=$_POST['sslcper'];
		if($sslcper!='')
		{

		$q5=$q5." and sslcper>='$sslcper' ";
		}
	}
		if(isset($_POST['ha']))
	{
		$ha=$_POST['ha'];
		if($ha!='')
		{
		
		$q5=$q5." and ha<='$ha' ";
	}
	}
	if(isset($_POST['hscper']))
	{
				$hscper=$_POST['hscper'];
		if($hscper!='')
		{

			$q5=$q5." and hscper>='$hscper' ";
		}
	}

	if(isset($_POST['cper']))
	{
		$cper=$_POST['cper'];
		
		if($cper!='')
		{
		
			$q5=$q5." and cp>='$cper' ";
	}
	}
	if(isset($_POST['sa']))
	{
		$sa=$_POST['sa'];
		if($sa!='')
		{
		
		$q5=$q5." and sa<='$sa' ";
	}
	}
	
	if(isset($_POST['ha']))
	{
				$ha=$_POST['ha'];
		if($ha!='')
		{

			$q5=$q5." and ha<='$ha' ";
	}
	
	}
	
	
	if(isset($_POST['year']))
	{
				$year=$_POST['year'];
		if($year!='')
		{

			$q5=$q5." and ce='$year' ";
	}
	
	}
	$civilfinal=$q5.$civilend;
			
			
			//echo "<br><br>".$civilfinal;
			
			
			
			
			
			
		}
		else if($s=='automobiles')
		{
			
			
			
			$q="select * from login l,studentpersonal s";						
			$q6=$q.",be b6";
			$aut=" and b6.rollno=s.rollno and b6.rollno=l.id and b6.co='placement' ";
			$autid=" where 1 ";
			$q6=$q6.$autid;
			
			$q6=$q6.$aut;
			
			$autend=" and s.rollno in (select id from login where department='automobiles')";
			$aut1=1;
			
			if(isset($_POST['sslcper']))
	{
				$sslcper=$_POST['sslcper'];
		if($sslcper!='')
		{

		$q6=$q6." and sslcper>='$sslcper' ";
		}
	}
		if(isset($_POST['ha']))
	{
		$ha=$_POST['ha'];
		if($ha!='')
		{
		
		$q6=$q6." and ha<='$ha' ";
	}
	}
	if(isset($_POST['hscper']))
	{
				$hscper=$_POST['hscper'];
		if($hscper!='')
		{

			$q6=$q6." and hscper>='$hscper' ";
		}
	}
	
	if(isset($_POST['cper']))
	{
		$cper=$_POST['cper'];
		
		if($cper!='')
		{
		
			$q6=$q6." and cp>='$cper' ";
	}
	}
	if(isset($_POST['sa']))
	{
		$sa=$_POST['sa'];
		if($sa!='')
		{
		
		$q6=$q6." and sa<='$sa' ";
	}
	}
	
	if(isset($_POST['ha']))
	{
				$ha=$_POST['ha'];
		if($ha!='')
		{

			$q6=$q6." and ha<='$ha' ";
	}
	
	}
	
	
	if(isset($_POST['year']))
	{
				$year=$_POST['year'];
		if($year!='')
		{

			$q6=$q6." and ce='$year' ";
	}
	
	}
	$autfinal=$q6.$autend;
			
			
			//echo "<br><br>".$autfinal;
			
			
			
			
			
			
			
			
			
			
			
			
		} 
		else if($s=='it')
		{
				
			
			$q="select * from login l,studentpersonal s";						
			$q7=$q.",be b7";
			$it=" and b7.rollno=s.rollno and b7.rollno=l.id and b7.co='placement'";
			$itid=" where 1 ";
			$q7=$q7.$itid;
			
			$q7=$q7.$it;
			
			$itend=" and s.rollno in (select id from login where department='it')";
			$it1=1;
			
			if(isset($_POST['sslcper']))
	{
				$sslcper=$_POST['sslcper'];
		if($sslcper!='')
		{

		$q7=$q7." and sslcper>='$sslcper' ";
		}
	}
		if(isset($_POST['ha']))
	{
		$ha=$_POST['ha'];
		if($ha!='')
		{
		
		$q7=$q7." and ha<='$ha' ";
	}
	}
	if(isset($_POST['hscper']))
	{
				$hscper=$_POST['hscper'];
		if($hscper!='')
		{

			$q7=$q7." and hscper>='$hscper' ";
		}
	}

	if(isset($_POST['cper']))
	{
		$cper=$_POST['cper'];
		
		if($cper!='')
		{
		
			$q7=$q7." and cp>='$cper' ";
	}
	}
	if(isset($_POST['sa']))
	{
		$sa=$_POST['sa'];
		if($sa!='')
		{
		
		$q7=$q7." and sa<='$sa' ";
	}
	}
	
	if(isset($_POST['ha']))
	{
				$ha=$_POST['ha'];
		if($ha!='')
		{

			$q7=$q7." and ha<='$ha' ";
	}
	
	}
	
	
	if(isset($_POST['year']))
	{
				$year=$_POST['year'];
		if($year!='')
		{

			$q7=$q7." and ce='$year' ";
	}
	
	}
	$itfinal=$q7.$itend;
			
			
			//echo "<br><br>".$itfinal;
			
			
			
			
			
			
			
			
			
			
			
		}
		else if($s=='eee')
		{
			
			
			$q="select * from login l,studentpersonal s";						
			$q8=$q.",be b8";
			$eee=" and b8.rollno=s.rollno and b8.rollno=l.id and b8.co='placement' ";
			$eeeid=" where 1 ";
			$q8=$q8.$eeeid;
			
			$q8=$q8.$eee;
			
			$eeeend=" and s.rollno in (select id from login where department='eee')";
			$eee1=1;
			
			if(isset($_POST['sslcper']))
	{
				$sslcper=$_POST['sslcper'];
		if($sslcper!='')
		{

		$q8=$q8." and sslcper>='$sslcper' ";
		}
	}
		if(isset($_POST['ha']))
	{
		$ha=$_POST['ha'];
		if($ha!='')
		{
		
		$q8=$q8." and ha<='$ha' ";
	}
	}
	if(isset($_POST['hscper']))
	{
				$hscper=$_POST['hscper'];
		if($hscper!='')
		{

			$q8=$q8." and hscper>='$hscper' ";
		}
	}

	if(isset($_POST['cper']))
	{
		$cper=$_POST['cper'];
		
		if($cper!='')
		{
		
			$q8=$q8." and cp>='$cper' ";
	}
	}
	if(isset($_POST['sa']))
	{
		$sa=$_POST['sa'];
		if($sa!='')
		{
		
		$q8=$q8." and sa<='$sa' ";
	}
	}
	
	if(isset($_POST['ha']))
	{
				$ha=$_POST['ha'];
		if($ha!='')
		{

			$q8=$q8." and ha<='$ha' ";
	}
	
	}
	
	
	if(isset($_POST['year']))
	{
				$year=$_POST['year'];
		if($year!='')
		{

			$q8=$q8." and ce='$year' ";
	}
	
	}
	$eeefinal=$q8.$eeeend;
			
			
			//echo "<br><br>".$eeefinal;
			
			
			
			
			
			
		}
		else if($s=='ece')
		{
			
			
			$q="select * from login l,studentpersonal s";						
			$q9=$q.",be b9";
			$ece=" and b9.rollno=s.rollno and b9.rollno=l.id and b9.co='placement'";
			$eceid=" where 1 ";
			$q9=$q9.$eceid;
			
			$q9=$q9.$ece;
			
			$eceend=" and s.rollno in (select id from login where department='ece')";
			$ece1=1;
			
			if(isset($_POST['sslcper']))
	{
				$sslcper=$_POST['sslcper'];
		if($sslcper!='')
		{

		$q9=$q9." and sslcper>='$sslcper' ";
		}
	}
		if(isset($_POST['ha']))
	{
		$ha=$_POST['ha'];
		if($ha!='')
		{
		
		$q9=$q9." and ha<='$ha' ";
	}
	}
	if(isset($_POST['hscper']))
	{
				$hscper=$_POST['hscper'];
		if($hscper!='')
		{

			$q9=$q9." and hscper>='$hscper' ";
		}
	}
	
	if(isset($_POST['cper']))
	{
		$cper=$_POST['cper'];
		
		if($cper!='')
		{
		
			$q9=$q9." and cp>='$cper' ";
	}
	}
	if(isset($_POST['sa']))
	{
		$sa=$_POST['sa'];
		if($sa!='')
		{
		
		$q9=$q9." and sa<='$sa' ";
	}
	}
	
	if(isset($_POST['ha']))
	{
				$ha=$_POST['ha'];
		if($ha!='')
		{

			$q9=$q9." and ha<='$ha' ";
	}
	
	}
	
	
	if(isset($_POST['year']))
	{
				$year=$_POST['year'];
		if($year!='')
		{

			$q9=$q9." and ce='$year' ";
	}
	
	}
	$ecefinal=$q9.$eceend;
			
			
			//echo "<br><br>".$ecefinal;
			
			
			
			
			
			
			
		}
		else if($s=='mech')
		{
			
			
			
			$q="select * from login l,studentpersonal s";						
			$q10=$q.",be b10";
			$mech=" and b10.rollno=s.rollno and b10.rollno=l.id and b10.co='placement'";
			$mechid=" where 1 ";
			$q10=$q10.$mechid;
			
			$q10=$q10.$mech;
			
			$mechend=" and s.rollno in (select id from login where department='mech')";
			$mech1=1;
			
			if(isset($_POST['sslcper']))
	{
				$sslcper=$_POST['sslcper'];
		if($sslcper!='')
		{

		$q10=$q10." and sslcper>='$sslcper' ";
		}
	}
		if(isset($_POST['ha']))
	{
		$ha=$_POST['ha'];
		if($ha!='')
		{
		
		$q10=$q10." and ha<='$ha' ";
	}
	}
	if(isset($_POST['hscper']))
	{
				$hscper=$_POST['hscper'];
		if($hscper!='')
		{

			$q10=$q10." and hscper>='$hscper' ";
		}
	}
	
	if(isset($_POST['cper']))
	{
		$cper=$_POST['cper'];
		
		if($cper!='')
		{
		
			$q10=$q10." and cp>='$cper' ";
	}
	}
	if(isset($_POST['sa']))
	{
		$sa=$_POST['sa'];
		if($sa!='')
		{
		
		$q10=$q10." and sa<='$sa' ";
	}
	}
	
	if(isset($_POST['ha']))
	{
				$ha=$_POST['ha'];
		if($ha!='')
		{

			$q10=$q10." and ha<='$ha' ";
	}
	
	}
	
	
	if(isset($_POST['year']))
	{
				$year=$_POST['year'];
		if($year!='')
		{

			$q10=$q10." and ce='$year' ";
	}
	
	}
	$mechfinal=$q10.$mechend;
			
			
		//	echo "<br><br>".$mechfinal;
			
			
			
			
			
			
			
		}
		
	}
	
}
echo "<hr><center><a href='#g'>View Graphical Report</a><hr>";

	echo " <thead>";
	
 


    echo "<tr><td>Student Rollno</td>";
	echo "<td>Name</td>";
					echo "<td>Hsc percentage</td>";
					echo "<td>Sslc percentage</td>";
		
		echo "<td>Current percentage</td>";
					  echo "<td>Department</td>";

			echo"</tr>";
  echo"</thead>";
  echo "<tbody>";
if($mca1==1)
{

$mcafinal1=mysql_query($mcafinal);
$cpp=mysql_num_rows($mcafinal1);
$a=$a.",['Mca', $cpp]";

while($row=mysql_fetch_array($mcafinal1))
{
echo "<tr><td>$row[id]</td>";
	echo"<td>$row[name]</td>";
	   echo "<td>$row[hscper]</td>";
	     echo "<td>$row[sslcper]</td>";

		    echo  "<td>$row[cp]</td>";
			  	  echo "<td>Computer Applications</td>";
							 
	  echo "</tr>";	
}
}
if($mba1==1)
{

$mbafinal1=mysql_query($mbafinal);
$cpp=mysql_num_rows($mbafinal1);
$a=$a.",['Mba', $cpp]";
while($row=mysql_fetch_array($mbafinal1))
{
echo "<tr><td>$row[id]</td>";
	echo"<td>$row[name]</td>";
	   echo "<td>$row[hscper]</td>";
	     echo "<td>$row[sslcper]</td>";

		    echo  "<td>$row[cp]</td>";
			  	  echo "<td>MBA</td>";
							 
	  echo "</tr>";	
}
}

if($msc1==1)
{

$mscfinal1=mysql_query($mscfinal);
$cpp=mysql_num_rows($mscfinal1);
$a=$a.",['Msc', $cpp]";
while($row=mysql_fetch_array($mscfinal1))
{
echo "<tr><td>$row[id]</td>";
	echo"<td>$row[name]</td>";
	   echo "<td>$row[hscper]</td>";
	     echo "<td>$row[sslcper]</td>";

		    echo  "<td>$row[cp]</td>";
			  	  echo "<td>Msc</td>";
							 
	  echo "</tr>";	
}
}
if($bsc1==1)
{

$bscfinal1=mysql_query($bscfinal);
$cpp=mysql_num_rows($bscfinal1);
$a=$a.",['B.sc', $cpp]";
while($row=mysql_fetch_array($bscfinal1))
{
echo "<tr><td>$row[id]</td>";
	echo"<td>$row[name]</td>";
	   echo "<td>$row[hscper]</td>";
	     echo "<td>$row[sslcper]</td>";

		    echo  "<td>$row[cp]</td>";
			  echo "<td>BSc</td>";
							 
	  echo "</tr>";	
}
}

if($cse1==1)
{

$csefinal1=mysql_query($csefinal);
$cpp=mysql_num_rows($csefinal1);
$a=$a.",['Cse', $cpp]";
while($row=mysql_fetch_array($csefinal1))
{
echo "<tr><td>$row[id]</td>";
	echo"<td>$row[name]</td>";
	   echo "<td>$row[hscper]</td>";
	     echo "<td>$row[sslcper]</td>";

		    echo  "<td>$row[cp]</td>";
			  echo "<td>CSE</td>";
							 
	  echo "</tr>";	
}
}

if($it1==1)
{

$itfinal1=mysql_query($itfinal);
$cpp=mysql_num_rows($itfinal1);
$a=$a.",['IT', $cpp]";
while($row=mysql_fetch_array($itfinal1))
{
echo "<tr><td>$row[id]</td>";
	echo"<td>$row[name]</td>";
	   echo "<td>$row[hscper]</td>";
	     echo "<td>$row[sslcper]</td>";

		    echo  "<td>$row[cp]</td>";
			  	  echo "<td>IT</td>";
							 
	  echo "</tr>";	
}
}

if($civil1==1)
{

$civilfinal1=mysql_query($civilfinal);
$cpp=mysql_num_rows($civilfinal1);
$a=$a.",['Civil', $cpp]";
while($row=mysql_fetch_array($civilfinal1))
{
echo "<tr><td>$row[id]</td>";
	echo"<td>$row[name]</td>";
	   echo "<td>$row[hscper]</td>";
	     echo "<td>$row[sslcper]</td>";

		    echo  "<td>$row[cp]</td>";
			  
							 	  echo "<td>Civil</td>";
	  echo "</tr>";	
}
}


if($mech1==1)
{

$mechfinal1=mysql_query($mechfinal);
$cpp=mysql_num_rows($mechfinal1);
$a=$a.",['Mech', $cpp]";
while($row=mysql_fetch_array($mechfinal1))
{
echo "<tr><td>$row[id]</td>";
	echo"<td>$row[name]</td>";
	   echo "<td>$row[hscper]</td>";
	     echo "<td>$row[sslcper]</td>";

		    echo  "<td>$row[cp]</td>";
			  	  echo "<td>Mech</td>";
							 
	  echo "</tr>";	
}
}


if($eee1==1)
{

$eeefinal1=mysql_query($eeefinal);
$cpp=mysql_num_rows($eeefinal1);
$a=$a.",['EEE', $cpp]";
while($row=mysql_fetch_array($eeefinal1))
{
echo "<tr><td>$row[id]</td>";
	echo"<td>$row[name]</td>";
	   echo "<td>$row[hscper]</td>";
	     echo "<td>$row[sslcper]</td>";

		    echo  "<td>$row[cp]</td>";
			  	  echo "<td>EEE</td>";
							 
	  echo "</tr>";	
}
}


if($ece1==1)
{
$ecefinal1=mysql_query($ecefinal);
$cpp=mysql_num_rows($ecefinal1);
$a=$a.",['ECE', $cpp]";
while($row=mysql_fetch_array($ecefinal1))
{
echo "<tr><td>$row[id]</td>";
	echo"<td>$row[name]</td>";
	   echo "<td>$row[hscper]</td>";
	     echo "<td>$row[sslcper]</td>";

		    echo  "<td>$row[cp]</td>";
			  
			  echo "<td>ECE</td>";					 
	  echo "</tr>";	
}
}


if($aut1==1)
{
$autfinal1=mysql_query($autfinal);
$cpp=mysql_num_rows($autfinal1);
$a=$a.",['Automobiles', $cpp]";
while($row=mysql_fetch_array($autfinal1))
{
echo "<tr><td>$row[id]</td>";
	echo"<td>$row[name]</td>";
	   echo "<td>$row[hscper]</td>";
	     echo "<td>$row[sslcper]</td>";

		    echo  "<td>$row[cp]</td>";
			  echo "<td>Automobiles</td>";
							 
	  echo "</tr>";	
}
}

echo "</tbody>";
echo "</table>";
$a=$a."]";
echo "<script>load($a);</script>";
	
//$bsc="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and l.id=m.rollno and m.ce='$ce' and s.rollno in (select id from login where department='bsc')";
?>
<a name="g">
<br><br><br><br><br><Br><br>
<a href="#t">^^View Table report^^</a>  
<center>
<div id="piechart"></div></center>
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