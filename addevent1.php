<?php
include 'db.php';
$target= "uploads/";

 
$query="SELECT DISTINCT(department) AS department FROM login where department!='office'";
						 $q=mysql_query($query);
						 $n=mysql_num_rows($q);
		if(isset($_POST['submit']))
		{
		$e=$_POST['eventtype'];
$en=$_POST['eventname'];
$d=$_POST['eventdate'];
$c=$_POST['count'];
$des=$_POST['d'];
$sslcper=$_POST['sslcper'];
$hscper=$_POST['hscper'];
$ugper=$_POST['ugper'];
$cp=$_POST['cp'];
$dper=$_POST['dper'];
$des="Event Start At Date:<b>$d</b>. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Total Days: $c.<br>".$des11;

$file = rand(1000,100000)."-".$_FILES['file']['name'];
    $file_loc = $_FILES['file']['tmp_name'];
 $file_size = $_FILES['file']['size'];
 $file_type = $_FILES['file']['type'];
 $folder="uploads/";
 $path=$folder.$file;
 move_uploaded_file($file_loc,$folder.$file);
 
 //mysql_query($q);
 if($e=="placement")
 {
	 $e="Placement Regards".$e;
 }
 else
 {
	  $e="Placement Training Regards".$e;
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
//$j="update event set departments='$dept' where id='$id'";
$j="insert into event values('$en','$e','$d','$c','$des','','$dept','$sslcper','$hscper','$ugper','$cp')";
mysql_query($j);
echo "<script>alert('Event Added')</script>";
	header('refresh:1;url=event.php');
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
	<select name="i[]" multiple id="d">
	<?php
	while($row = mysql_fetch_row($q))
	{
	echo "<option value='$row[0]'>$row[0]</option>";
	}
	?>
	</select>
	<br>
	<hr>
	<center>Eligibility</center>
	Sslc percentage:<br><br>
	<input type="number" name="sslcper" required><br>
	 Hsc percentage:<br><br>
	 <input type="number" name="hscper"><br>
	 	 Diploma percentage:<br><br>
	 <input type="number" name="dper"><br>
	 Ug percentage:<br><br>
	 <input type="number" name="ugper"><br>
	 Current percentage:<br><br>
	 <input type="number" name="cp"><br>
	Describtion About Event :<br><br>
	<textarea name="d" class="form-control" rows="12" cols="50" placeholder="More Skills"></textarea>

<br><br><br>
Any Attanchment include here:<br><br><Br>
	<input type="file" class="form-control input-lg" name="file"><br><br><hr>
	<input type="submit" class="btn btn-info" name="submit" value="Add Event">

	</form>
		<center><a href="event.php">Home</a>
	</div>

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
	<script src="js/mail.js"></script>
	
	
</body>
</html>