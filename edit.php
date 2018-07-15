
<?php
session_start();
include 'db.php';
$query="SELECT DISTINCT(department) AS department FROM login where department!='office'";
						 $q=mysql_query($query);
						 $n=mysql_num_rows($q);
if(isset($_SESSION['edit']))
{
	if($_SESSION['edit']==1)
	{
		//echo "<script>alert('ok')</script>";
	
	

include 'db.php';
$target= "uploads/";

 
$query="SELECT DISTINCT(department) AS department FROM login where department!='office'";
						 $q=mysql_query($query);
						 $n=mysql_num_rows($q);
		if(isset($_POST['submit']))
		{
			if(isset($_POST['i']))
			{
				
			}
			else
			{
				echo "<script>alert('Please Select Department name')</script>";
				header('Refresh:0');
				exit();
				
			}
			
		$e=$_POST['eventtype'];
		$e11=$e;
$en=$_POST['eventname'];
$d=$_POST['eventdate'];
$c=$_POST['count'];
$des=$_POST['d'];
$des1=explode(".",$des);
$des11="";
foreach($des1 as $wo)
{
	$des11=$des11."<br>".$wo;
}
$des="Event Start At Date:<b>$d</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: $c.<br>".$des11;

$file = rand(1000,100000)."-".$_FILES['file']['name'];
    $file_loc = $_FILES['file']['tmp_name'];
 $file_size = $_FILES['file']['size'];
 $file_type = $_FILES['file']['type'];
 $folder="uploads/";
 $path=$folder.$file;
 move_uploaded_file($file_loc,$folder.$file);
 //$q="insert into event values('$en','$e','$d','$c','$des','','')";
 $ideq=$_SESSION['editid'];
 
 //mysql_query($q);
 if($e=="placement")
 {
	 $e="Changed Placement Event Information".$e;
 }
 else
 {
	  $e="Changed Placement Training Event".$e;
 }
 
 	$e2=$_POST['i'];
	$dept="";
	$count=0;
foreach($e2 as $wo)
{ if($count==0)
	{
		$dept=$wo;
	}
	else
	{
	$dept=$dept.",".$wo;
	}
	$ty="select mailid from login where department='$wo'";
	
	$z=mysql_query($ty);
	while($row2=mysql_fetch_array($z))
	{
		$time = date("h:i:sa");
	$mail=$row2[0];
	$ra=rand(11111,99999);
	$samy="insert into mail values('KEC Placement','$e','$mail','$des','$path','$time','$ra',0)";
		mysql_query($samy);

	}
	$count=$count+1;
}
$j="update event set eventname='$en',eventtype='$e11',date='$d',noofdays='$c',edesc='$des',departments='$dept' where id='$ideq'";
//echo $j;
mysql_query($j);
echo "<script>alert('Event updated Added')</script>";
$_SESSION['edit']=0;
	header('refresh:0;url=event.php');
		}	
	}
}
else
{
	echo "<center><b>Forbidden Access !!!!</b></center>";
}	
					
?>
<html>
<head>
	  <link href="css/mail.css" rel="stylesheet">
</head>
<body>



<center> <font color="white"><b>Add Event</b></font></center><br>


 <div class="form">

<center>
    <form class="login-form" method="post" action="" enctype="multipart/form-data">
	<b>Select The Event Type:<br><br>
	<div class="form-group">
	<select name="eventtype" class="form-control" required>
	<option></option>
	<option value="placement">Placement</option>
	<option value="placementtraining">Placement training</option>
	</select>
	</div>
	<br><br>
	  <div class="form-group">
	Enter the Company/Event Name:<br><br>
	<input type="text" class="form-control input-lg" name="eventname" placeholder="Name of the Event" required>
	</div>
	<br><br>
	Select Date:<br><br>
	<input type="date" class="form-control input-lg" name="eventdate" required>
	<br><br>
	How Many Days:<br><br>
	<input type="number" class="form-control input-lg" name="count" required>
	<br><br>
	Select Department:
	<br>
	<br>
	<hr>
	<?php
	while($row = mysql_fetch_row($q))
	{
	echo "<input type='checkbox' class='form-check-input' name='i[]' value='$row[0]'>$row[0]<hr>";
	}
	?>
	Descirbtion About Event :<br><br>
	<textarea name="d" class="form-control" rows="12" cols="50" placeholder="Example :Place,Time,Eligiblity,more 	"></textarea>

<br><br><br>
Any Attanchment include here:<br><br><Br>
	<input type="file" class="form-control input-lg" name="file" required><br><br><hr>
	<input type="submit" class="btn btn-info" name="submit" value="Update Event">

	</form>
		<center><a href="event.php">Home</a>
	</div>
	
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
	<script src="js/mail.js"></script>
	
</body>
</html>