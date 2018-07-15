<!DOCTYPE html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]> <html class="lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]> <html class="lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en"> <!--<![endif]-->
<head>

<style>

p{
font face:Times new roman;
font size:30px;

}
table {
    
    width: 100%;
}
h3   {
	font face:fertigo pro;
font size:50px;
padding: 0px;
color: blue;}

th, td {
    padding: 5px;
    text-align: left;
} 
.register {
  position: relative;
  margin-top:20px;
  padding: 100px 100px 100px;
  background: #fff;
  -webkit-box-shadow: 0 0 200px rgba(255, 255, 255, 0.5), 0 1px 2px rgba(0, 0, 0, 0.3);
  -moz-box-shadow: 0 0 200px rgba(255, 255, 255, 0.5), 0 1px 2px rgba(0, 0, 0, 0.3);
  box-shadow: 0 0 500px rgba(255, 255, 255, 0.5), 0 1px 2px rgba(0, 0, 0, 0.3);
}
td,tr{
font face:fertigo pro;
font size:50px;
padding: 0px;
}
label{
font-face:fertigo pro;
font-size:18px;
	
}


input[type=text],select,input[type=date],input[type=number],input[type=time]
{
	width: 230px;
	border: 1px solid #3366FF;
	border-left: 4px solid #3366FF;
	height:28px;
	background-color:#ccc;
}
textarea
{
	width: 230px;
	border: 1px solid #3366FF;
	border-left: 4px solid #3366FF;
	background-color:#ccc;
}
.bt
{
	 color: #6496c8;
  background: rgba(0,0,0,0);
  border: solid 5px #6496c8;
   width: 5em;  height: 3em;
}

fieldset {
  margin: 20px;
  padding: 0 10px 10px;
  border: 1px solid #666;
  border-radius: 8px;
  box-shadow: 0 0 10px #666;
  padding-top: 10px;
  background: #fff;
}
legend {
  padding: 2px 4px;

  /* For better legibility against the box-shadow */
}
fieldset > legend {
  float: left;
  margin-top: -20px;
}
fieldset > legend + * {
  clear: both;
}
</style>
</head>
<body>
 
     
      <form method="post" action="update.php">
	  
      <?php
	  
    header("refresh: 15;");

include 'db.php';
print " ";
print " 
<table  border=\"5\" cellpadding=\"5\" cellspacing=\"0\"  width=\"100&#37;\" id=\"AutoNumber2\" ><tr> ";
$i=1;
				
				$stages = 3;
				$targetpage = "forumview.php"; //your file name
				$limit = 5; //how many items to show per page
				//$page = " ";

				
				//if(isset($_GET['page']))
				//{
				//$page = mysql_escape_string($_GET['page']);
				$page=(isset($_GET['page']))?(int)$_GET['page']:0;
					if($page){
						$start = ($page - 1) * $limit; 
					}else{
						$start = 0;	
						}
				//}						
					$check1="select * from forumadd order by Date desc";
					$check1.=" limit $start ,$limit";
					$sql_query = mysql_query($check1);	
					$check_num=mysql_num_rows($sql_query);
				
				/* Setup page vars for display. */
				//if(isset($_GET['page']))
				
				if ($page == 0) $page = 1; //if no page var is given, default to 1.
				$prev = $page - 1; //previous page is current page - 1
				$next = $page + 1; //next page is current page + 1
				$lastpage = ceil($check_num/$limit); //lastpage.
				$LastPagem1= $lastpage - 1; //last page minus 1
				
				
					$check1="select * from forumadd order by Date desc";
					$check1.=" limit $start ,$limit";
					$sql_query = mysql_query($check1);	
					$check_num=mysql_num_rows($sql_query);
				
				$paginate = '';
	if($lastpage > 1)
	{	
	
		$paginate .= "<div class='paginate'>";
		// Previous
		if ($page > 1){
			$paginate.= "<a href='$targetpage?page=$prev style='color:white''>previous</a>";
		}else{
			$paginate.= "<span class='disabled'>previous</span>";	}
		
		// Pages	
		if ($lastpage < 7 + ($stages * 2))	// Not enough pages to breaking it up
		{	
			for ($counter = 1; $counter <= $lastpage; $counter++)
			{
				if ($counter == $page){
					$paginate.= "<span class='current'>$counter</span>";
				}else{
					$paginate.= "<a href='$targetpage?page=$counter' style='color:white'>$counter</a>";}	
						
			}
		}
		elseif($lastpage > 5 + ($stages * 2))	// Enough pages to hide a few?
		{
			// Beginning only hide later pages
			if($page < 1 + ($stages * 2))		
			{
				for ($counter = 1; $counter < 4 + ($stages * 2); $counter++)
				{
					if ($counter == $page){
						$paginate.= "<span class='current'>$counter</span>";
					}else{
						$paginate.= "<a href='$targetpage?page=$counter' style='color:white' 'font-size:50'>$counter</a>";}					
				}
				$paginate.= "...";
				$paginate.= "<a href='$targetpage?page=$LastPagem1 style='color:white' 'font-size:50''>$LastPagem1</a>";
				$paginate.= "<a href='$targetpage?page=$lastpage style='color:white' 'font-size:50''>$lastpage</a>";		
			}
			// Middle hide some front and some back
			elseif($lastpage - ($stages * 2) > $page && $page > ($stages * 2))
			{
				$paginate.= "<a href='$targetpage?page=1'>1</a>";
				$paginate.= "<a href='$targetpage?page=2'>2</a>";
				$paginate.= "...";
				for ($counter = $page - $stages; $counter <= $page + $stages; $counter++)
				{
					if ($counter == $page){
						$paginate.= "<span class='current'>$counter</span>";
					}else{
						$paginate.= "<a href='$targetpage?page=$counter'>$counter</a>";}					
				}
				$paginate.= "...";
				$paginate.= "<a href='$targetpage?page=$LastPagem1'>$LastPagem1</a>";
				$paginate.= "<a href='$targetpage?page=$lastpage'>$lastpage</a>";		
			}
			// End only hide early pages
			else
			{
				$paginate.= "<a href='$targetpage?page=1'>1</a>";
				$paginate.= "<a href='$targetpage?page=2'>2</a>";
				$paginate.= "...";
				for ($counter = $lastpage - (2 + ($stages * 2)); $counter <= $lastpage; $counter++)
				{
					if ($counter == $page){
						$paginate.= "<span class='current'>$counter</span>";
					}else{
						$paginate.= "<a href='$targetpage?page=$counter'>$counter</a>";}					
				}
			}
		}
					
				// Next
		if ($page < $counter - 1){ 
			$paginate.= "<a href='$targetpage?page=$next'>next</a>";
		}else{
			$paginate.= "<span class='disabled'>next</span>";
			}
			
		$paginate.= "</div>";		
	
	
}
 

 echo $paginate;
  echo "<br>";
while($row = mysql_fetch_array($sql_query, MYSQL_ASSOC)) 
{
$id=$row['Sno'];
print "<tr>";
print "<td>";
print"<fieldset>";
print "" . $row['Rollno'] . "  says...<br>"; 
print " <p><b> About:</b>".$row['Idea']."</p>";
print "".$row['Details']."";
//print "<button type='submit' style='float:right' name='update' value=".$row['Sno'].">Update</button>";
print "</fieldset>";
print "</td>";
print "</tr>";
} 
print "</table>"; 
?>	  

</body>
</html>