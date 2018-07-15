<?php
mysql_connect('localhost','root','');
mysql_select_db('kongu');
$sql="SELECT * FROM `mail` where r='15stf001@kongu.edu' ORDER BY `t` DESC";
$e=mysql_query($sql);
while($row=mysql_fetch_array($e))
{
	echo "<br>";
echo $row['subject'];
echo $row['t'];
echo "<br>";
}
?>