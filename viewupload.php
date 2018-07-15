<?php
include 'db.php';
?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<style>
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
   width: 5em;  height: 3em;
}



</style>



<title>File Uploading With PHP and MySql</title>
<link rel="stylesheet" href="style.css" type="text/css" />
</head>
<body>

<div id="body">
 <table width="80%" border="1">
        <tr>
    <td>File Name</td>
    <td>File Type</td>
    <td>File Size(KB)</td>
    <td>View</td>
    </tr>
    <?php
	$topic=$_GET['q'];
 $sql="SELECT * FROM upload where Topic='$topic'";
 $result_set=mysql_query($sql);
 while($row=mysql_fetch_array($result_set))
 {
  ?>
        <tr>
        <td><?php echo $row['file'] ?></td>
        <td><?php echo $row['type'] ?></td>
        <td><?php echo $row['size'] ?></td>
        <td><a href="uploads/<?php echo $row['file'] ?>" target="_blank">view file</a></td>
        </tr>
        <?php
 }
 ?>
    </table>
    
</div>
</body>
</html>