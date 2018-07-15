	<?php 
	$host="localhost";
					   $user="root";
					   $pass="";
					   $db="kongu";
					   $con=mysql_connect($host,$user,$pass);
					   mysql_select_db($db,$con);
	$sql="update login set pa='sridhar',name='sridhar',department='computer science',mailid='sridhar@gmail.com',role='student',mobileno='sridhar' where id='15mcl119'";
				$r=mysql_query($sql,$con);
				mysql_error();
				?>