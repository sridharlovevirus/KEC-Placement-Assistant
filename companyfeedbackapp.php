
<?php
include 'db.php';
$cname=$_GET['cname'];
$q1="select * from forumadd where Idea='$cname'";
$result=mysql_query($q1);
$str=array();
$n=mysql_num_rows($result);
if(mysql_num_rows($result)>0)
{
while($row=mysql_fetch_array($result))
{
	$sql="select dp from login where id='$row[Rollno]'";
	$r=mysql_query($sql);
		$img=mysql_fetch_row($r);
	$dp="http://thinknew.ga/".$img[0];

$str[]=array('topic'=>$row['Topic'],'rollno'=>$row['Rollno'],'detail'=>$row['Details'],'date'=>$row['Date'],'dp'=>$dp);
}
}
echo json_encode($str);
?>
