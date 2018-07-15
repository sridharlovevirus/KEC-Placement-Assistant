<?php
mysql_connect('localhost','root','');
mysql_select_db('kongu');
session_start();
$dep=$_SESSION['dep'];
if(isset($_POST['s']))
{
	$c=$_POST['c'];
	$d=$_POST['sd'];
	$e=$_POST['ed'];
	$q="insert into sem values('$dep','$c','$d','$e')";
	mysql_query($q);
	echo "<script>alert('Enabled Semester Mark')</script>";
	echo "<b><center>Value updating</center></b>";
	//$rt="delete from sem WHERE d < DATE_SUB(NOW(), INTERVAL $e DAY)";
	//echo $rt;
	//mysql_query($rt);
	if(($dep!='computer application')&&($dep!='msc')&&($dep!='mba')&&($dep!='bsc'))
					{
						$dep='be';
					}
		
				else if($dep=='computer application')
				{
					$dep='mca';
				}
					
	$y="delete from markupate where department='$dep'";
	mysql_query($y);
header('Refresh:1; url=index.php');	

}
?>