<?php
include 'db.php';
$start="";
$stop="";
if(isset($_GET['start']))
{
$start=$_GET['start'];
}
if(isset($_GET['stop']))
{
$stop=$_GET['stop'];
}
if($start!="")
{
	if($stop!="")
	{
$mysql="insert into sh values('$start','$stop')";
mysql_query($mysql);
	}
}
$str=array();
$sql="select * from sh";
$res=mysql_query($sql);
while($row=mysql_fetch_array($res))
{
$str[]=array('start'=>$row['start'],'stop'=>$row['stop']);
}
echo json_encode($str);
?>