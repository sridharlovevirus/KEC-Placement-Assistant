
<?php 
include 'db.php';

session_start(); ?>

<html>
<?php


$topicerr=$general=$generalerr=$company=$companyerr=$details=$detailserr="";
$topic1=$topic1err=$fileerr="";
if(isset($_POST['Submit']))
{
if(empty($_POST['topic']))
{
$topicerr="please select the topic";
}
if(empty($_POST["General"]))
	{
	if(empty($_POST["Company"]))
	{
		$companyerr="please enter the details";
	}
	else{
		$company=validate($_POST["Company"]);
	}
	}
	elseif(!preg_match("/^[a-zA-Z\s]*$/",$_POST["General"]))
	{
	$generalerr="General idea should comprises of alphabets only";
	}
	else{
		$general=validate($_POST["General"]);
	}
		
	if(empty($_POST["detail"]))
	{
	$detailserr="Details required"	;
	}
		elseif(!preg_match("/^[a-zA-Z\s]*$/",$_POST["detail"]))
	{
		$detailserr="Details should comprises of alphabets only";
	}
	else
	{
		$details=validate($_POST["detail"]);
	}
}
if(isset($_POST['submit1']))
{
	if(empty($_POST['Topic']))
{
$topic1err="Choose topic";
}
if($_FILES['file']['size'] == 0) {
// No file was selected for upload, your (re)action goes here
$fileerr="Choose file";
}
}
function validate($data)
{
	$data=trim($data);
return $data;
}

?>





<head>
<link href="css/bootstrap1.min.css" rel="stylesheet" type="text/css" media="all" />

<script src="js/bootstrap1.min.js"></script>
<style>

.error{
	color:red;
}

.test:after {
  content: '\2807';
  font-size: 1.5em;
  color: #2e2e2e
}

.demo select {
		border: 0 !important;  /*Removes border*/
		-webkit-appearance: none;  /*Removes default chrome and safari style*/
		-moz-appearance: none; /* Removes Default Firefox style*/
        appearance:none;
		background: #0088cc url(img/select-arrow.png) no-repeat 90% center;
		width: 100px; /*Width of select dropdown to give space for arrow image*/
		text-indent: 0.01px; /* Removes default arrow from firefox*/
		text-overflow: "";  /*Removes default arrow from firefox*/ /*My custom style for fonts*/
		color: #FFF;
		border-radius: 15px;
		padding: 5px;
		box-shadow: inset 0 0 5px rgba(000,000,000, 0.5);
	}
	.demo select.balck {
		background-color: #000;
	}
	.demo select.option3 {
		border-radius: 10px 0;
	}
	a:link, a:visited {
    background-color: white;
    color: black;
    border: 2px solid green;
    padding: 5px 5px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
}
.right {
    text-align: right;
    float: right;
}
hr { 
    display: block;
    margin-top: 0.5em;
    margin-bottom: 0.5em;
    margin-left: auto;
    margin-right: auto;
    border-style: inset;
    border-width: 1px;
}
a:hover, a:active {
    background-color: green;
    color: white;
}
	
td,tr{
	font-family: "Times New Roman", Times, serif;
	font-style: normal;
	font-weight:bold;
}
label{
font-face:fertigo pro;
font-size:18px;
	
}

.formheading{  
font-family: "Times New Roman", Times, serif;
	font-style: normal;
	font-weight:bold;
	font-variant: small-caps;
    background-color:#ccc;  
    color:green;  
    padding:4px;  
    text-align:center;  
}  
input[type=text],select,input[type=date],input [type=number]
{
	width: 230px;
	border: 1px solid #3366FF;
	border-left: 4px solid #3366FF;
	height:28px;
	background-color:#ccc;
}

table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    padding: 5px;
    text-align: left;
    

}
textarea
{
	width: 230px;
	border: 1px solid #3366FF;
	border-left: 4px solid #3366FF;
	background-color:#ccc;
}
fieldset {
  margin: 20px;
  padding: 0 10px 10px;
  border: 1px solid #666;
  border-radius: 8px;
  box-shadow: 0 0 10px #666;
  padding-top: 10px;
  background: #fff;
}
legend {
  padding: 2px 4px;

  /* For better legibility against the box-shadow */
}
fieldset > legend {
  float: left;
  margin-top: -20px;
}
fieldset > legend + * {
  clear: both;
}
	.bt
{
	 color: #6496c8;
  background: rgba(0,0,0,0);
  border: solid 5px #6496c8;
   width: 4.5em;  height: 2.5em;
}

	</style>
</head>
<body>

<form id="form1" name="form1" method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
<fieldset>
<table>
<tr>
<td colspan="80" bgcolor="#E6E6E6"><strong>Add your view</strong> </td>
</tr>
<tr>
<td><strong>Topic</strong></td>
<td><select name="topic" class="option3" style="width:220px;"><option size=30></option>
<option value="technical interview">TI</option>
<option value="HR">HR</option>
<option value="group discussion">GD</option>
<option value="written">Written</option>
</select>
</td><td><span class="error"><?php echo $topicerr;?></span></td>
</tr>

<tr>
<td><strong>About</strong></td>

<td>
<table>
<tr><td>
<input type="radio" name="r1" value="general" onchange="if (this.value=='general'){this.form['Company'].style.visibility='hidden';
this.form['General'].style.visibility='visible'};">General</td>
<td><input type="text" name="General" id="General" placeholder="general idea" style="visibility:hidden;" /></td>
<td><span class="error"><?php echo $generalerr;?></span></td>
</tr>
<tr><td><input type="radio" name="r1" value="company" onchange="if (this.value=='company'){this.form['General'].style.visibility='hidden';
this.form['Company'].style.visibility='visible'};">Company</td>
<td><?php $sql="select * from company";
$q=mysql_query($sql);
echo "<select name=\"Company\" class=\"option3\" style=\"visibility:hidden;\">"; 
echo "<option size =50 ></option>";
echo "<option default>Select the company</option>";
while($row = mysql_fetch_array($q)) 
{        
echo "<option value='".$row['cname']."'>".$row['cname']."</option>"; 
}
echo "</select>";?></td></tr></table>
</td><td><span class="error"><?php echo $companyerr;?></span></td>
</tr>

<tr>

<td valign="top"><br><strong>Details</strong></td>

<td><br><textarea name="detail" class="option3" rows="4" cols="20" id="detail"></textarea></td>
<td><span class="error"><?php echo $detailserr;?></span></td>
<td><input type="submit" name="Submit" class="bt" value="Submit" />
</td>
</tr>


</table>
</fieldset>
<hr>
</form>
<fieldset>

<form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post" enctype="multipart/form-data">
  <table>
  <tr>
<td colspan="80" bgcolor="#E6E6E6"><strong>Add attachments here</strong><a href="viewuploadnew.php" class="right" >view</a></td>
</tr>
<tr>
<td><strong>Topic</strong></td>
<td><select name="Topic" class="option3"><option size=30></option>
<option value="Programming">Programming languages:c,c++,java,etc</option>
<option value="Subjects">Subjects</option>
<option value="Gd">GD related</option>
<option value="Apps">Apps</option>
</select>
</td><td><span class="error"><?php echo $topic1err;?></span></td>

</tr>

<tr><td><strong>Information</strong></td>
<td><input type="text" name="info" class="option3" placeholder="optional"></td></tr>
<tr>

<td> <br><input type="file" name="file" /></td><td><span class="error"><?php echo $fileerr;?></span></td>
<td><button type="submit" class="bt" name="submit1">upload</button></td></tr>
</fieldset>

 </form>
<?php
if(isset($_POST['Submit']))
{
	
	
	$host="localhost"; // Host name 
$username="root"; // Mysql username 
$password=""; // Mysql password 
$db_name="kongu"; // Database name 

// Connect to server and select database.
mysql_connect("$host", "$username", "$password")or die("cannot connect"); 
mysql_select_db("$db_name")or die("cannot select DB");
$username=$_SESSION['user'];
$sql="select * from login where username='$username'";
$r=mysql_query($sql);
while($row = mysql_fetch_row($r)) 
{
	$dept=$row[3];
	$type=$row[5];
	}


$topic=$_POST['topic'];
/*$general=$_POST['General'];
$company=$_POST['Company'];*/
$detail=$_POST['detail'];
if($general=="")
{
	$idea=$_POST['Company'];
}
else{
	$idea=$_POST['General'];
}
if($topic==""||$detail==""||$idea=="")
{
	echo"<script>alert('Please fill in all fields!');</script>";
}
else
{
$sno="";
$sql="INSERT INTO forumadd VALUES('$sno','$topic','$username', '$idea', '$detail',now() )";
$result=mysql_query($sql);

if($result){
echo "<script>alert('Successfully entered!');window.location='new_topic.php';</script>";
//echo "<script>alert('Please share your views...');window.location='forumview.php';</script>";
}
else {
echo "<script>alert('Unsuccessfull! Please try again');window.location='new_topic.php';</script>";;
}
}
}

if(isset($_POST['submit1']))
{
	$file = rand(1000,100000)."-".$_FILES['file']['name'];
    $file_loc = $_FILES['file']['tmp_name'];
 $file_size = $_FILES['file']['size'];
 $file_type = $_FILES['file']['type'];
 $folder="uploads/";
 
 move_uploaded_file($file_loc,$folder.$file);
 $username=$_SESSION['user'];
$sql="select * from login where id='$username'";
$r=mysql_query($sql);
while($row = mysql_fetch_row($r)) 
{
	$dept=$row[3];
	$type=$row[5];
	}
if(isset($_POST['Topic']))
{
$topic=$_POST['Topic'];
}
$info=$_POST['info'];
if($topic==""||$file_loc==""||$file_size==""||$file_type=="")
{
	echo"<script>alert('Please fill in all fields!');</script>";
}
else{
$sql="INSERT INTO upload VALUES('$file','$file_type','$file_size','$topic','$info','$username','$dept')";
 // $sql="INSERT INTO upload VALUES('$final_file','$file_type','$new_size')";
  $s=mysql_query($sql);
  if($s)
  {
	  echo "<script>alert('Successfully uploaded');window.location='new_topic.php';</script>";
	  
  }
  else{
	  echo "<script>alert('Please try again!!!');window.location='new_topic.php';</script>";
  }
}
}






?>
 </body>
</html>
