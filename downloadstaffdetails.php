
<?php
include 'db.php';
error_reporting(0);
$io="select * from login where additionalrole='placement'";
	$sd=mysql_query($io);
	$io1="select * from login where role='hod'";
		$sd1=mysql_query($io1);
		if(isset($_GET['download']))
{
	if($_GET['download']==1)
	{
		 header('Content-Type: application/xls');
 header('Content-Disposition: attachment; filename=studentdetails.xls');
	}
}
 header('Content-Type: application/xls');
 header('Content-Disposition: attachment; filename=studentdetails.xls');
		?>
		
		<html>
<head>

</head>
<body><br><br>
<center><b>
Placement Co-ordinator</b><br><br><br>	
              <table border="5">
               
			   <tr>
                  
                  <th>Staffid</th>
                  <th>StaffName</th>
                  <th>Department</th>
				  <th>Mail ID</th>
				  <th>Mobile Number</th>
                </tr>
               <?php
while($row11=mysql_fetch_array($sd))
{	$mail=$row11[mailid];
			   echo "<tr>";
			   echo "<td>".$row11['id']."</td>";
                  echo "<td>".$row11['name']."</td>";
                  echo "<td>".$row11['department']."</td>";
                  echo "<td>".$mail."";
                    echo "<td>".$row11[mobileno]."</td>";
                echo "</tr>";
}
				?>
				
                
              </table>
            </div>
			<br><br>
			<b><h4>&nbsp;Head Of Department:</h4></b>
            
              <table border="5">
               
			   <tr>
                  
                  <th>Staffid</th>
                  <th>StaffName</th>
                  <th>Department</th>
				  <th>Mail ID</th>
				  <th>Mobile Number</th>
                </tr>
               <?php
while($row111=mysql_fetch_array($sd1))
{	$mail=$row111[mailid];
			   echo "<tr>";
			   echo "<td>".$row111['id']."</td>";
                  echo "<td>".$row111['name']."</td>";
                  echo "<td>".$row111['department']."</td>";
                  echo "<td>".$mail."";
                    echo "<td>".$row111[mobileno]."</td>";
                echo "</tr>";
}
				?>
				
                
              </table>
       
</body>
</html>