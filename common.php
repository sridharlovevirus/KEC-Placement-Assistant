
<?php include 'db.php';
session_start();
?>

<html>
<head>
<link rel="stylesheet" href="css/stylenew.css" type="text/css" media="screen">
<!--[if IE 6]><link href="default_ie6.css" rel="stylesheet" type="text/css" /><![endif]-->
<style>
label{
	font-family: "Times New Roman", Times, serif;
	font-style: normal;
	font-weight:bold;
	
font-face:times new roman;
font-size:18px;
color:black;	
}



.formheading{  
font-family: "Times New Roman", Times, serif;
	font-style: normal;
	font-weight:bold;
	font-variant: small-caps;
    background-color:#ccc;  
    color:black;  
    padding:4px;  
    text-align:center;  
}  
input[type=text],input[type=date]
{
	width: 230px;
	border: 1px solid #3366FF;
	border-left: 4px solid #3366FF;
	height:28px;
	background-color:#ccc;
}
select
{
	width: 230px;
	border: 1px solid #3366FF;
	border-left: 4px solid #3366FF;
	height:28px;
}

table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    padding: 8px;
    text-align: left;
    

}
.right {
    text-align: right;
    float: right;
}
.btt {
    background-color:white; 
    border: none;
    color: #4CAF50; /* Green */
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
	border-radius: 50%;
	
	
}
</style>

</head>
<body>
<?php
$t=$_SESSION['username'];
$p=$_SESSION['password'];
$sql1="SELECT * FROM login WHERE username='$t' and password='$p'";
		$result1=mysql_query($sql1);
		while($rows = mysql_fetch_array($result1))
		{
			
			$type = $rows['type'];
			//echo $type;
   
		}
//echo $type;
$s='student';
$s1="staff";
$s2='placement';
if($type==$s)
{
?>	
<div class="example" >
		
    <ul id="nav">
				<li class="current"><a href="indexw.php" accesskey="1" title="">Homepage</a></li>
				<li>
					<a href="#" accesskey="2" title="">Events</a>
						<ul><a href="view.php">View</a>
						</ul>
					</li>
				
				<li>
					<a href="forum.php" accesskey="3" title="">Forum</a>
						
					
				</li>
				<li><a href="#" accesskey="4" title="">Feedback</a>
		<ul>		
    <a href="feedback.php">Post</a>
    </ul>

				</li>
				<li><a href="#" accesskey="5" title="">Contact</a>
						<ul>
													
							<a href="contact.php">View</a>
						</ul>
						</li>
					
					<li><a href="change.php">Change password</a>	</li>
					
				<li><a href="logout.php" accesskey="7" title="">Logout</a></li>
			</ul>	
			</div>
	
	
<?php

	}
	elseif($type==$s1)
	{
		//echo "<script>alert($dept);</script>";
?>	
		<div class="example" >
			<ul id="nav">
			
					
				<li class="current"><a href="indexw.php" accesskey="1" title="">Homepage</a></li>
				<li>
					<a href="#" accesskey="2" title="">Events</a>
						<ul>
							<li><a href="eventform.php">Post</a></li>
							
							<li><a href="view.php">View</a></li>
						</ul>
					</li>
				
				<li>
					<a href="forum.php" accesskey="3" title="">Forum</a>
						
						</li>
				<li><a href="#" accesskey="4" title="">Feedback</a>
						<ul>
   							<a href="feedbackview.php">View</a>
						</ul>
				</li>
				<li><a href="#" accesskey="5" title="">Contact</a>
						<ul>
							<a href="contactin.php">Insert</a>
							
							<a href="contact.php">View</a>
						</ul>
					</li>
					<li><a href="#" accesskey="6" title="">Others</a>
						<ul>
							<a href="op/add1.php">Add company</a>
							</ul>
									</li>
							<li><a href="#">Upload</a>
							<ul>
							<li><a href="#">Updation</a>
							<ul><a href="stu_upload.php">Mark details</a>
							<a href="stu_update.php">Student details</a></ul></li>
						<a href="stu_list.php">Students list</a>		
						
						</ul>
						</li>
					
					
					<li><a href="change.php">Change password</a>	</li>
				<li><a href="logout.php" accesskey="7" title="">Logout</a></li>
			
			</ul>
		</div>
<?php

	}
	elseif($type==$s2)
	{
		
?>	

<div class="example" >
<ul id="nav">

<a id="myLink" href="dindex.php" style="float:right;">Go back</a>
	
	
	
			
		
			
			
				<li class="current"><a href="indexw.php" accesskey="1" title="">Homepage</a></li>
				<li>
					<a href="#" accesskey="2" title="">Events</a>
						<ul>
							<a href="eventform.php">Post</a>
							
							<a href="view.php">View</a>
						</ul>
								</li>
				<li>
					<a href="forum.php" accesskey="3" title="">Forum</a>
						
						
					
				</li>
				<li><a href="#" accesskey="4" title="">Feedback</a>
						<ul>
   							<a href="feedbackview2.php">View</a>
						</ul>
					
				</li>
				<li><a href="#" accesskey="5" title="">Contact</a>
						<ul>			<a href="contactin.php">Insert</a>
							
							<a href="contact.php">View</a>
						
					</ul></li>
					
					<li><a href="change.php">Change password</a>	</li>
					
					
				<li><a href="logout.php" accesskey="7" title="">Logout</a></li>
			
		</ul>
		
</div>
<?php
}
else{
	
	echo "<script>window.location='logout.php';</script>";

}
?>


	</body>
	</html>