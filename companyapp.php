
<?php
include 'db.php';
$q1="select * from company";
$result=mysql_query($q1);
$str=array();
$n=mysql_num_rows($result);
while($row=mysql_fetch_array($result))
{
	$sql="select img from companyprofile where cname='$row[cname]'";
	$r=mysql_query($sql);
	$img=mysql_fetch_row($r);
	if($img[0]=='')
	{
		$dp="http://thinknew.ga/image/other.png";
	}
	else
	{
	$dp="http://thinknew.ga/image/".$img[0];
	}
$str[]=array('cname'=>$row['cname'],'dp'=>$dp);
}
echo json_encode($str);
?>