<?php  
//export.php  
session_start();
$output = '';
mysql_connect('localhost','root','');
	mysql_select_db('kongu');
if(isset($_SESSION['q']))
{
	$query=$_SESSION['q'];

	$dep=$_SESSION['dep'];
	if($dep=='computer application')
	{
		$dep='mca';
	}
	else if(($dep!='bsc')&&($dep!='msc')&&($dep!='mba'))
	{
		$dep='be';
	}
	

	

	$output .= '<table class="table" bordered="10">  
                    <tr>  
                          
					   <th>Student Rollno</th>
<th>Name</th>
<th>Department Name</th>
<th>Additional Role</th>
<th>DOB</th>
<th>gender</th>
<th>Mobile Number</th>
<th>Email</th>
<th>Alternate Email</th>
<th>Father Name</th>
<th>Occupation</th>
<th>street name</th>
<th>Village name</th>
<th>Cityname</th>
<th>state</th>
<th>pincode</th>
<th>language</th>
<th>caste</th>
<th>Hostel/dayscholer</th>
<th>skills</th>
<th>education gap</th>
<th>education gap reason</th>
<th>Physically challenged</th>
<th>Detail about your illness</th>
<th>Sslc reg.no</th>
<th>sslc school name</th>
<th>sslc certificate no</th>
<th>sslc board</th>
<th>sslc mark</th>
<th>sslc percentage</th>
<th>sslc start</th>
<th>sslc end</th>
<th>hsc reg.no</th>
<th>hsc school name</th>
<th>hsc certificate no</th>
<th>hscboard</th>
<th>hscmark</th>
<th>hsc percentage</th>
<th>hsc specication</th>
<th>hsc start</th>
<th>hsc end</th>
<th>counselling rank</th>
<th>Cutoff mark</th>
<th>Diploma regno</th>
<th>Diploma College</th>
<th>Diploma percentage</th>
<th>Diploma specication</th>
<th>Diploma cutoff</th>
<th>career option</th>
<th>First generation</th>
<th>First semester</th>
<th>Second semester</th>	
<th>Third semester</th>
<th>Fourth semester</th>
<th>Fifth semester</th>
<th>Sixth semester</th>
<th>Current percentage</th>				
<th>History of Arrear</th>
<th>Cleared Arrear</th>
<th>Standing Arrear</th>
<th>Course Start</th>
                    </tr>';
			$qw=$_SESSION['q'];
			echo $qw;
					$res=mysql_query($qw);
					 while($row=mysql_fetch_row($res))
  {
					$output .='<tr>
					<th>'.$row[0].'</th> 
	 <th>'.$row[2].'</th> 
	     <th>'.$row[3].'</th> 
	       <th>'.$row[6].'</th> 
		     <th>'.$row[14].'</th> 
		       <th>'.$row[15].'</th></tr>';
			   /*  <th>.'$row[16].'</th>   
			     <th>.'$row[17].'</th> 
	       <th>.'$row[10].'</th> 
		     <th>.'$row[12].'</th>   
		     <th>.'$row[13].'</th> 
    <th>.'$row[18]'.</th> 
    <th>.'$row[19]'.</th> 
    <th>.'$row[20]'.</th> 
    <th>.'$row[21]'.</th> 
    <th>.'$row[24]'.</th> 
    <th>.'$row[25]'.</th> 
    <th>.'$row[22]'.</th> 
    <th>.'$row[23]'.</th> 
    <th>.'$row[26].'</th> 
    <th>.'$row[29].'</th> 
    <th>.'$row[30].'</th> 
    <th>.'$row[27].'</th> 
    <th>.'$row[28]'.</th> 
    <th>.'$row[31]'.</th> 
    <th>.'$row[32]'.</th> 
    <th>.'$row[33]'.</th> 
    <th>.'$row[34]'.</th> 
      <th>.'$row[57]'.</th> 
	    <th>.'$row[60]'.</th> 
    <th>'.$row[35].'</th> 
    <th>'.$row[36].'</th> 
    <th>'.$row[38].'</th> 
    <th>'.$row[39].'</th> 
    <th>'.$row[40].'</th>   
    <th>'.$row[41].'</th> 
     <th>'.$row[58].'</th> 
      <th>'.$row[59].'</th> 
      <th>'.$row[44].'</th> 
    <th>'.$row[42].'</th> 
  
    <th>'.$row[43].'</th> 
    <th>'.$row[46].'</th> 
    <th>'.$row[45].'</th> 
       <th>'.$row[49].'</th> 
    <th>'.$row[48].'</th> 
 
	    <th>'.$row[61].'</th> 
	      <th>'.$row[53].'</th> 
    <th>'.$row[54].'</th> 
      <th>'.$row[64].'</th> 

	      <th>'.$row[65].'</th> 
		    <th>'.$row[66].'</th> 
		      <th>'.$row[67].'</th> 
			    <th>'.$row[68].'</th> 
			      <th>'.$row[69].'</th> 
				    <th>'.$row[70].'</th> 
				      <th>'.$row[71].'</th> 
						   <th>'.$row[72].'</th> 
					    <th>'.$row[73].'</th> 
					      <th>'.$row[74]'.</th> 
						    <th>'.$row[75].'</th> 
						      <th>'.$row[76].'</th></tr>';*/

	$output .= '</table>';

}
 header('Content-Type: application/xls');
 header('Content-Disposition: attachment; filename=staffdetails.xls');
 echo $output;
}

/*$connect = mysqli_connect("localhost", "root", "", "kongu");
$output = '';


 $result = mysqli_query($connect, $query);
 if(mysqli_num_rows($result) > 0)
 {
  $output .= '
   <table class="table" bordered="1">  
                    <tr>  
                         <th>Staffid</th>  
                        <th>Password</th>
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
              <td>'.$row["id"].'</td>
			    <td>'.$row["pa"].'</td>
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
*/
?>
