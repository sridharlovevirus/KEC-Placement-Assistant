<?php  
//export.php  
session_start();
$connect = mysqli_connect("localhost", "root", "", "kongu");
$output = '';
$dep=$_SESSION['dept'];
 $query = "SELECT * FROM login where role='staff' and department='$dep'";
 $result = mysqli_query($connect, $query);
 if(mysqli_num_rows($result) > 0)
 {
  $output .= '
   <table class="table" bordered="1">  
                    <tr>  
                         
						<th>Name</th>
						<th>Department</th>
						<th>Mailid</th>
						<th>role</th>
						<th>Additional Role</th>
						<th>Mobile Number</th>
					
                    </tr>
  ';
  while($row = mysqli_fetch_array($result))
  {
   $output .= '
    <tr>  
           
				  <td>'.$row["name"].'</td>
				    <td>'.$row["department"].'</td>
					  <td>'.$row["mailid"].'</td>  <td>'.$row["role"].'</td>
					    <td>'.$row[6].'</td>
						  <td>'.$row["mobileno"].'</td>
					
                    </tr>
   ';
  }
  $output .= '</table>';
  header('Content-Type: application/xls');
  header('Content-Disposition: attachment; filename=staffdetails.xls');
  echo $output;
 }

?>
