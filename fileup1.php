

<?php
session_start();
?>
<html>
<head>
<style>
#myProgress {
    width: 100%;
    background-color: grey;
}
#myBar 
{
    width: <?php echo $_SESSION['dp']; ?>%;
    height: 30px;
    background-color: #4CAF50;
    text-align: center; /* To center it horizontally (if you want) */
    line-height: 30px; /* To center it vertically */
    color: white; 
}
</style>
<script>
function move() {
    var elem = document.getElementById("myBar");

	
    var width=Number(document.getElementById("v").value);
	
	var width1;
    var id = setInterval(frame, 1);
    function frame() {
        if (width >= 100 )
		{
			if(width!=width1) {
            clearInterval(id);
			}
        } else {
			width++;
            elem.style.width = width + '%'; 
			    elem.innerHTML = width + '%';
				
        }
    }
}
</script>
</head>
<body>
<?php
$host="localhost";
					   $user="root";
					   $pass="";
					   $db="kongu";
					   $con=mysql_connect($host,$user,$pass);
					   mysql_select_db($db,$con);
error_reporting(0);
use Box\Spout\Reader\ReaderFactory;
use Box\Spout\Common\Type;
require_once 'spout-2.4.3/src/Spout/Autoloader/autoload.php';
$fileName = $_FILES["file1"]["name"]; // The file name
$fileTmpLoc = $_FILES["file1"]["tmp_name"]; // File in the PHP tmp folder
$fileType = $_FILES["file1"]["type"]; // The type of file it is
$fileSize = $_FILES["file1"]["size"]; // File size in bytes
$fileErrorMsg = $_FILES["file1"]["error"]; // 0 for false... and 1 for true
 $inputFileName="test/".rand(1,99999) . '.' . end(explode(".",$_FILES["file1"]["name"]));
$format=explode(".",$fileName);
$sql1="update staffexcel set filename='$inputFileName' where id=1";
mysql_query($sql1);
//echo $format[1];
if($_SESSION['role']=='staff')
{
if($format[1]=='xls'||$format[1]=='xlsx')
{
 $s=1;
 echo "<br><br><br><br><br><b><h1><center>Data Uploading On database</center></h1></b>";
echo "<div id='myProgress'>";
  echo "<div id='myBar'></div></div>";   
        
if (!$fileTmpLoc) { // if file not chosen
    echo "ERROR: Please browse for a file before clicking the upload button.";
    exit();
}
if(move_uploaded_file($fileTmpLoc, "$inputFileName")){
	
    
	$s=0;
	  
} else {
    echo "move_uploaded_file function failed";
}
if($s==0)
{
	
	$final=0;
	// Read excel file by using ReadFactory object.
      $reader = ReaderFactory::create(Type::XLSX);
 
        // Open file
       $reader->open($inputFileName);
$row1=array();
	   // Number of sheet in excel file
        foreach ($reader->getSheetIterator() as $sheet) {
             
            // Number of Rows in Excel sheet
  foreach ($sheet->getRowIterator() as $row) 
  {
	  $final++;
		}
		}
        $count = 1;
        $rows = array();
		// Number of sheet in excel file
        foreach ($reader->getSheetIterator() as $sheet) {
             
            // Number of Rows in Excel sheet
  foreach ($sheet->getRowIterator() as $row) {
 
                // It reads data after header. In the my excel sheet,
                // header is in the first row.
              if ($count >1){
                    
                  $data['staffid'] = $row[0];
				  $data['password']=$row[1];
                   $data['staffname'] = $row[2];
				    $data['department'] = $row[3];
					 
					  $data['role'] = $row[4];
					   $data['additionalrole'] = $row[5];
					    $data['mobileno'] = $row[6];
						$mailid=$row[0]."@kongu.edu";
						
						$dp=$row[7];
						$status=0;
						$dep=$_SESSION['dep'];
						if($dep==$data['department'])
						{
						
				$sql="insert into login values('$data[staffid]','$data[password]','$data[staffname]','$data[department]','$mailid','$data[role]','$data[additionalrole]','$data[mobileno]','$dp','$status','')";
				$r=mysql_query($sql,$con);
				if($r)
				{
					
				}
				else
				{
					 
					//mysql_error();
					header('Location: studentupload.php');
					$_SESSION['exit']=1;
					$_SESSION['format']=1;
				}
						}
						else
						{
							echo "<script>alert('unable to add another department info')</script>";
							echo "<b><center>Unable to Add another department information</center></b>";
							    header('Refresh: 5;url=index.php');
						}
					
				}
				$count++;
				
				$dp=round(($count/$final)*100);
				
				$ds1=0;
				$_SESSION['dp']=$dp;
					echo "<input type='hidden' id='v' value='$dp'>";
					
				 echo "<script type='text/javascript'>elem.innerHTML = '$dp' + '%';</script>";
			
				
 
	
		}
}
$reader->close();
//echo "<script type='text/javascript'>move()</script>";
$final--;
echo "<br><br><center>".$final." Data Will Uploaded"."</center>";
//header('Location: staff.php');
    header('Refresh: 5;url=student.php');
}
}
else
	
	{
		
		header('Location: studentupload.php');
					
					$_SESSION['format']=1;
	}
}
else if($_SESSION['role']=='hod')
{
	if($format[1]=='xls'||$format[1]=='xlsx')
{
 $s=1;
 echo "<br><br><br><br><br><b><h1><center>Data Uploading On database</center></h1></b>";
echo "<div id='myProgress'>";
  echo "<div id='myBar'></div></div>";   
        
if (!$fileTmpLoc) { // if file not chosen
    echo "ERROR: Please browse for a file before clicking the upload button.";
    exit();
}
if(move_uploaded_file($fileTmpLoc, "$inputFileName")){
	
    
	$s=0;
	  
} else {
    echo "move_uploaded_file function failed";
}
if($s==0)
{
	
	$final=0;
	// Read excel file by using ReadFactory object.
      $reader = ReaderFactory::create(Type::XLSX);
 
        // Open file
       $reader->open($inputFileName);
$row1=array();
	   // Number of sheet in excel file
        foreach ($reader->getSheetIterator() as $sheet) {
             
            // Number of Rows in Excel sheet
  foreach ($sheet->getRowIterator() as $row) 
  {
	  $final++;
		}
		}
        $count = 1;
        $rows = array();
		// Number of sheet in excel file
        foreach ($reader->getSheetIterator() as $sheet) {
             
            // Number of Rows in Excel sheet
  foreach ($sheet->getRowIterator() as $row) {
 
                // It reads data after header. In the my excel sheet,
                // header is in the first row.
              if ($count >1){
                    
                  $data['staffid'] = $row[0];
				  $data['password']=$row[1];
                   $data['staffname'] = $row[2];
				    $data['department'] = $row[3];
					 
					  $data['role'] = $row[4];
					   $data['additionalrole'] = $row[5];
					    $data['mobileno'] = $row[6];
						$mailid=$row[0]."@kongu.edu";
						
						$dp=$row[7];
						$status=0;
						if($data['role']=='staff')
						{
				$sql="insert into login values('$data[staffid]','$data[password]','$data[staffname]','$data[department]','$mailid','$data[role]','$data[additionalrole]','$data[mobileno]','$dp','$status','')";
				$r=mysql_query($sql,$con);
				if($r)
				{
					
				}
				else
				{
					
					header('Location: studentupload.php');
					$_SESSION['exit']=1;
					$_SESSION['format']=1;
				}
					
				}
				else
				{
					$_SESSION['access']=1;
				}
				$count++;
				
				$dp=round(($count/$final)*100);
				
				$ds1=0;
				$_SESSION['dp']=$dp;
					echo "<input type='hidden' id='v' value='$dp'>";
					
				 echo "<script type='text/javascript'>elem.innerHTML = '$dp' + '%';</script>";
			
				
 
	
		}
}
$reader->close();
//echo "<script type='text/javascript'>move()</script>";
$final--;
echo "<br><br><center>".$final." Data Will Uploaded"."</center>";
//header('Location: staff.php');
    header('Refresh: 5;url=student.php');
}
}
else
	
	{
		
		header('Location: staffupload.php');
					
					$_SESSION['format']=1;
	}
}
else if($_SESSION['role']=='123')
{
	if($format[1]=='xls'||$format[1]=='xlsx')
{
 $s=1;
 echo "<br><br><br><br><br><b><h1><center>Data Uploading On database</center></h1></b>";
echo "<div id='myProgress'>";
  echo "<div id='myBar'></div></div>";   
        
if (!$fileTmpLoc) { // if file not chosen
    echo "ERROR: Please browse for a file before clicking the upload button.";
    exit();
}
if(move_uploaded_file($fileTmpLoc, "$inputFileName")){
	
    
	$s=0;
	  
} else {
    echo "move_uploaded_file function failed";
}
if($s==0)
{
	
	$final=0;
	// Read excel file by using ReadFactory object.
      $reader = ReaderFactory::create(Type::XLSX);
 
        // Open file
       $reader->open($inputFileName);
$row1=array();
	   // Number of sheet in excel file
        foreach ($reader->getSheetIterator() as $sheet) {
             
            // Number of Rows in Excel sheet
  foreach ($sheet->getRowIterator() as $row) 
  {
	  $final++;
		}
		}
        $count = 1;
        $rows = array();
		// Number of sheet in excel file
        foreach ($reader->getSheetIterator() as $sheet) {
             
            // Number of Rows in Excel sheet
  foreach ($sheet->getRowIterator() as $row) {
 
                // It reads data after header. In the my excel sheet,
                // header is in the first row.
              if ($count >1){
                    
                  $data['staffid'] = $row[0];
				  $data['password']=$row[1];
                   $data['staffname'] = $row[2];
				    $data['department'] = $row[3];
					 
					  $data['role'] = $row[4];
					  
					   $data['additionalrole'] = $row[5];
					    $data['mobileno'] = $row[6];
						$mailid=$row[0]."@kongu.edu";
						
						$dp=$row[7];
						$status=0;
						if($data['role']=='student')
						{
				$sql="insert into login values('$data[staffid]','$data[password]','$data[staffname]','$data[department]','$mailid','$data[role]','$data[additionalrole]','$data[mobileno]','$dp','$status','')";
				$r=mysql_query($sql,$con);
				if($r)
				{
					
				}
				else
				{
					
					header('Location: studentupload.php');
					$_SESSION['exit']=1;
					$_SESSION['format']=1;
				}
					
				}
				else
				{
					$_SESSION['access']=1;
				}
				$count++;
				
				$dp=round(($count/$final)*100);
				
				$ds1=0;
				$_SESSION['dp']=$dp;
					echo "<input type='hidden' id='v' value='$dp'>";
					
				 echo "<script type='text/javascript'>elem.innerHTML = '$dp' + '%';</script>";
			
				
 
			  }
		}
}
$reader->close();
//echo "<script type='text/javascript'>move()</script>";
$final--;
echo "<br><br><center>".$final." Data Will Uploaded"."</center>";
//header('Location: staff.php');
if($_SESSION['role']=='admin')
{
    header('Refresh: 5;url=student.php');
}
else if($_SESSION['role']=='hod')
{
    header('Refresh: 5;url=student.php');
}
else if($_SESSION['role']=='staff')
{
    header('Refresh:5;url=student.php');
}
}
}
else
	
	{
		
		header('Location: studentupload.php');
					
					$_SESSION['format']=1;
	}
}
}
?>
</body>
</html>