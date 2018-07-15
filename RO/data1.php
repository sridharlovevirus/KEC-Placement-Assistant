<?php
include 'db.php';
$from=$_GET['f'];
$to=$_GET['t'];
$sql="select x,y,date from chart where date between '$from' and '$to'";
$str=array();
$res=mysql_query($sql);
while($row=mysql_fetch_array($res))
{
$str[]=array('date'=>$row['date'],'x'=>$row['x'],'y'=>$row['y']);
}
echo json_encode($str);
?>