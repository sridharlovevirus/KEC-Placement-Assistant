<?php
error_reporting(0);
include 'db.php';
$target= "uploads/";

 
$query="SELECT DISTINCT(department) AS department FROM login where department!='office'";
						 $q=mysql_query($query);
						 $n=mysql_num_rows($q);
		if(isset($_POST['submit']))
		{
		$e=$_POST['eventtype'];
$en=$_POST['eventname'];
$ce=$_POST['year'];
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
	if(($wo!='computer application')&&($wo!='bsc')&&($wo!='msc')&&($wo!='mba'))
{
	$wo1='be';
}
if($wo=='computer application')
{
	$wo1='mca';
}
	$ty="select mailid from login where department='$wo' and id in (select rollno from $wo1 where ce='$ce')";
	echo $ty;
		$z=mysql_query($ty);
	$count=mysql_num_rows($z);
	if($count==0)
	{
		echo "<center><script>alert('Not found Batch')</script></center>";
		header('Refresh:2;');
	}
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
$j="insert into event values('$en','$e','$d','$c','$des','','$dept')";
mysql_query($j);
echo "<script>alert('Event Added')</script>";
	header('refresh:1;url=event.php');
		}			
					
?>
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



<center> <font color="white"><b>Add Event</b></font></center><br>



<center>
<div class="login-page">
    <form method="post" action="" enctype="multipart/form-data">
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
	<?php
	$sql="select cname from company";
	$r=mysql_query($sql);
	echo "<select name='eventname' class='form-control'>";
	while($row=mysql_fetch_row($r))
	{
		
	echo "<option class='form-control'  value='$row[0]' required>$row[0]</option>";
	}
	echo "<option class='form-control'>Others</option>";
	echo "</select>";
	?>
	</div>
	<br><br>
	Select Date:<br><br>
	<div class="form-group">	<input type="date" class="form-control" name="eventdate" required></div>
	<br><br>
	How Many Days:<br><br>
		<div class="form-group"><input type="number" class="form-control" name="count" required></div>
	<br><br>
	Select Department:
	<br>
	<br>
	<hr>
		<div class="form-group">
	<?php
	echo "<select name='i[]'  multiple='multiple' class='form-control'>";
	while($row = mysql_fetch_row($q))
	{
	echo "<option class='form-check-input'  value='$row[0]'>$row[0]<hr>";
	}
	echo "</select>";
	?></div><hr>
	<br>	<br><br>
	Descirbtion About Event :<br><br>
	<div class="form-group">
	<textarea name="d" class="form-control" rows="12" class="form-control" cols="50" placeholder="Example :Place,Time,Eligiblity,more"></textarea>
</div>
<br><br><br>
Select Batch:
<?php
 $time=date('Y');
	 
  echo " <div class='form-group'><select name='year' class='form-control'>";
  while($count!=6)
  {
	//echo " <option></option>";
	 echo " <option value='$time'>".$time."</option>";
	
	 $count++;
	 $time--;
  }
	 echo " </select></div><br><br>";
	 ?>
Any Attanchment include here:<br><br><Br>
	<input type="file" class="form-control input-lg" name="file" required><br><br><hr>
	<input type="submit" class="btn btn-info" name="submit" value="Add Event">

	</form>
	</div>
		<center><a href="event.php">Home</a>
	
	
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
	<script src="js/mail.js"></script>
	
</body>
</html>