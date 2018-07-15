<html>
 <!-- bsc -->
<head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  <!-- Optional theme -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <!-- Latest compiled and minified JavaScript -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  <script src="boot/js/validator.js"></script>
<script src="date/js/date.js"></script>
<script type="text/javascript">       

function a(aa)      
{      
if (aa.checked) {
 document.getElementById("s").disabled = false;
}
else
{
	 document.getElementById("s").disabled = true;
}
}      
</script>
</head>
<body class="bg-primary w-100 h-100 border border-dark text-danger">
  <br>
  <br>
  <form name="form1" action="end.php?s=1" method="post">
  <div class="container">
    <div class="row clearfix" id="content-row">
      <div class="col-xs-16 column">
        <div class="well well-lg">
          <center>
            <h2 class="text-primary">Please Ensure All Data Must Save On Ever Each Steps</h2>
<br><hr>			<h4 class="text-warning"><b>Warning</b></h4><br><Br><font color="red"><b>
-----------------------------------------------------------------------------------------------------------------------------------------------------------------</font>
		<b>	<h4 class="text-danger">Note: Not press save button means no value is saved on the database.<br><br><br><br>
		Note: After Submit Final Data you cannot edit the value without staff permission.</h4><br><br><font color="red">
-----------------------------------------------------------------------------------------------------------------------------------------------------------------</font>
			<label class="checkbox-inline"><input type="checkbox" name="s1" id="s1" value="" onChange='a(this)'><font color="red">I am providing an all correct acadamic information </label><br><br><br>
			<a href="end.php?s=1"><button class="btn btn-info" type="submit" name="s" id="s" disabled>Final Data Save </button></a>
			<?php
			mysql_connect('localhost','root','');
			mysql_select_db('kongu');
			session_start();
			$dep=$_SESSION['dep'];
			$user=$_SESSION['user'];
			if(isset($_GET['s']))
			{
				
				$f=0;
				$high=$_SESSION['h'];
				//$high='hsc';
				//$dep='computer application';
				$degree=$_SESSION['d'];
			
				if(($high=='HSC')&&($degree=='mca'))
				{
					
					$query="select * from login l,studentpersonal s,$degree m where s.rollno=m.rollno and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";
	
		$q=mysql_query($query);
		$row=mysql_fetch_array($q);
		if(($row['fathername']!='')&&($row['sslcschool']!='')&&($row['hscschool']!='')&&($row['cs']!=''))
		{
		$f=1;
		
		
		}
		else
		{
			echo "<script>alert('Fill all values some values not updated .. Plz Check All Forms')</script>";
		}
		if($f==1)
		{
			$w="update studentpersonal set finish=1 where rollno='$user'";
			
			mysql_query($w);
			 	header('Refresh:1;url=../index.php');
			
		}
				}
				if(($high=='hsc')&&($degree=='mba'))
				{
					$query="select * from login l,studentpersonal s,$degree m where s.rollno=m.rollno and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";
		
		$q=mysql_query($query);
		$row=mysql_fetch_array($q);
		if(($row['fathername']!='')&&($row['sslcschool']!='')&&($row['hscschool']!='')&&($row['cs']!=''))
		{
		$f=1;
		
		}
		else
		{
			echo "<script>alert('Fill all values some values not updated .. Plz Check All Forms')</script>";
		}
		if($f==1)
		{
			$w="update studentpersonal set finish=1 where rollno='$user'";
			
			mysql_query($w);
						 	header('Refresh:1;url=../index.php');
		}
				}
				if(($high=='hsc')&&($degree=='msc'))
				{
						$query="select * from login l,studentpersonal s,$degree m where s.rollno=m.rollno and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";
		
		$q=mysql_query($query);
		$row=mysql_fetch_array($q);
		if(($row['fathername']!='')&&($row['sslcschool']!='')&&($row['hscschool']!='')&&($row['cs']!=''))
		{
		$f=1;
		
		}
		else
		{
			echo "<script>alert('Fill all values some values not updated .. Plz Check All Forms')</script>";
		}
		if($f==1)
		{
			$w="update studentpersonal set finish=1 where rollno='$user'";
			
			mysql_query($w);
						 	header('Refresh:1;url=../index.php');
		}
				}
				if(($high=='hsc')&&($degree=='bsc'))
				{
						$query="select * from login l,studentpersonal s,$degree m where s.rollno=m.rollno and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";
		
		$q=mysql_query($query);
		$row=mysql_fetch_array($q);
		if(($row['fathername']!='')&&($row['sslcschool']!='')&&($row['hscschool']!='')&&($row['cs']!=''))
		{
		$f=1;
		
		}
		else
		{
			echo "<script>alert('Fill all values some values not updated .. Plz Check All Forms')</script>";
		}
		if($f==1)
		{
			$w="update studentpersonal set finish=1 where rollno='$user'";
			
			mysql_query($w);
						 	header('Refresh:1;url=../index.php');
		}
				}
				if(($high=='hsc')&&($degree=='be'))
				{$query="select * from login l,studentpersonal s,$degree m where s.rollno=m.rollno and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";
		
		$q=mysql_query($query);
		$row=mysql_fetch_array($q);
		if(($row['fathername']!='')&&($row['sslcschool']!='')&&($row['hscschool']!='')&&($row['cs']!=''))
		{
		$f=1;
		
		}
		else
		{
			echo "<script>alert('Fill all values some values not updated .. Plz Check All Forms')</script>";
		}
		if($f==1)
		{
			$w="update studentpersonal set finish=1 where rollno='$user'";
			
			mysql_query($w);
						 	header('Refresh:1;url=../index.php');
		}
				}
				if(($high=='Diploma')&&($high=='be'))
				{
						$query="select * from login l,studentpersonal s,$degree m where s.rollno=m.rollno and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";
		
		$q=mysql_query($query);
		$row=mysql_fetch_array($q);
		if(($row['fathername']!='')&&($row['sslcschool']!='')&&($row['dcollege']!='')&&($row['cs']!=''))
		{
		$f=1;
		
		}
		else
		{
			echo "<script>alert('Fill all values some values not updated .. Plz Check All Forms')</script>";
		}
		if($f==1)
		{
			$w="update studentpersonal set finish=1 where rollno='$user'";
			
			mysql_query($w);
						 	header('Refresh:1;url=../index.php');
		}
				}
			
			}
		//	header('Location: ../index.php');
			?>
          </center>
          <hr>
          <br>
          <br>
		  </div>
		  </div>
		  </div>
		  </div>
		  </form>
		  </body>
		  </html>