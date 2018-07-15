<?php
session_start();
$dep=$_SESSION['dep'];
echo "<center><h1>Student Details</h1></center>";
echo "<center><ul>";
echo "<a href='niv.php'>View Student report</a><br>";
if($dep!='office')
{
echo "<a href='search1.php'>Search Student details</a>";
}
else
{
	echo "<a href='search2.php'>Search Student details</a>";
}
echo "</ul>";
echo "<a href='index.php'>Home</a>";
?>