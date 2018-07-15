<?php
include 'db.php';
$user=$_GET['user'];
$pass=$_GET['pass'];
$q1="select id,pa,name,department,role,dp from login where id='$user' and pa='$pass'";
$result=mysql_query($q1);
$str=array();
$n=mysql_num_rows($result);
$dp="";
while($row=mysql_fetch_array($result))
{
$dp="http://thinknew.ga/image/".$row['dp'];
$str[]=array('id'=>$row['id'],'pa'=>$row['pa'],'name'=>$row['name'],'department'=>$row['department'],'role'=>$row['role'],'dp'=>$dp,'error'=>'0');
}
$err=array();

if($n==1)
{
echo json_encode($str);
}
else
{
$err[]=array('id'=>'','pa'=>'','name'=>'','department'=>'','role'=>'','dp'=>'','error'=>'1');
echo json_encode($err);	
}
/*$row = mysql_fetch_array($result);
$n=mysql_num_rows($result);
if($n==1)
{
echo json_encode($row);
}
else
{
	echo "error";
}*/
?>
