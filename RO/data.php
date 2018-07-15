<?php
include 'db.php';
$sql="select date from chart";
$str=array();
$res=mysql_query($sql);
while($row=mysql_fetch_array($res))
{
$str[]=array('date'=>$row['date']);
}
echo json_encode($str);
?>