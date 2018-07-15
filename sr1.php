<?php
if(isset($_GET['download']))
{
	if($_GET['download']==1)
	{
		 header('Content-Type: application/xls');
 header('Content-Disposition: attachment; filename=studentdetails.xls');
	}
}
error_reporting(0);
session_start();
$dep=$_SESSION['dep'];

	$sslcper=$_POST['sslcper'];
	$hscper=$_POST['hscper'];
	$ugper=$_POST['ugper'];
	$cp=$_POST['cper'];
$year=$_POST['year'];
if($year!='06-2016')
{
	echo "<script>alert('data not found')</script>";
	header('Refresh:0; url=search1.php');
	exit();
}
	$sa=$_POST['sa'];
$ds=$_POST['dept1'];
$con=mysql_connect('localhost','root','');
mysql_select_db('kongu');
if($ds!='all')
{
	if($dep=='office')
	{
$rp="select rollno from studentpersonal where rollno in (select id from login where department='$ds')";
	}
	else
	{
		$rp="select rollno from studentpersonal where rollno in (select id from login where department='$dep')";
	}
$k=mysql_query($rp);
$c=mysql_num_rows($k);

if($c==0)
{
	echo "<script>alert('Values not found')</script>";
	echo "<center>Values not found</center>";
	header("Refresh:0; url=search.php");
}
}
if($dep!='Office')
{
	
	if($dep=='bsc')
	{
		
	
	
	if(($_POST['clevel']=='above'))
		{
			$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";		
		}
		if(($_POST['slevel'])=='above')
		{

		$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";		
		}
		if(($_POST['hlevel'])=='above')
		{
		$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and s.hscper>='$hscper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";		
		}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above'))
		{
			
	$query="select * from login l,studentpersonal s,bsc m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	

	}
	if(($_POST['slevel']=='above')&&($_POST['hlevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,bsc m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	

	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,bsc m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	

	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['clevel']=='above'))
		{
	
	$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	
	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['clevel']=='above')&&($_POST['stlevel']=='above'))
		{
	
	$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and m.sa=$sa and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	
	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above'))
		{
	
	$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and s.hscper>='$hscper' and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	
	}
		
			if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['clevel']=='above')&&($_POST['stlevel']=='above'))
		{
		
	
	$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and m.sa=$sa and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	
	}
	
		
	if($_POST['stlevel']=='above')
	{
		$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and m.sa='$sa' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";		
	}
	
	
	
	
	if($_POST['stlevel']=='below')
	{
		$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and m.sa<'$sa' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";		
	}
	
	
	if(($_POST['clevel']=='below'))
		{
			$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";		
		}
		if(($_POST['slevel'])=='below')
		{

		$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";		
		}
		if(($_POST['hlevel'])=='below')
		{
		$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and s.hscper<='$hscper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";		
		}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,bsc m where s.hscper<='$hscper' and s.rollno=m.rollno and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	

	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['clevel']=='below'))
		{
	
	$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	
	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['clevel']=='below')&&($_POST['stlevel']=='below'))
		{
			
	
	$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno  and m.sa<$sa and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	
	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
	
	$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno  and s.hscper<='$hscper' and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	
	}
	
			if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['clevel']=='below')&&($_POST['stlevel']=='below'))
		{
		
	
	$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno  and m.sa<$sa and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	}

	else if($dep=='computer application')
	{
		if($_POST['stlevel']=='above')
	{
		$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.sa='$sa' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";		
	}
	
		if(($_POST['ulevel']=='above'))
		{
			
	$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.ugper>='$ugper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	
	}
		if(($_POST['clevel']=='above'))
		{
			$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";		
		}
		if(($_POST['slevel'])=='above')
		{

		$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";		
		}
		if(($_POST['hlevel'])=='above')
		{
		$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and s.hscper>='$hscper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";		
		}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above'))
		{
			
	$query="select * from login l,studentpersonal s,mca m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	

	}
	if(($_POST['slevel']=='above')&&($_POST['hlevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,mca m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	

	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,mca m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	

	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['ulevel']=='above')&&($_POST['clevel']=='above'))
		{
	
	$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.ugper>='$ugper' and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	
	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['ulevel']=='above')&&($_POST['clevel']=='above')&&($_POST['stevel']=='above'))
		{
			echo $sa;
	
	$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.ugper>='$ugper' and m.sa=$sa and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	
	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['ulevel']=='above'))
		{
	
	$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.ugper>='$ugper' and s.hscper>='$hscper' and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	
	}
		
			if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['ulevel']=='above')&&($_POST['clevel']=='above')&&($_POST['stlevel']=='above'))
		{
		
	
	$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.ugper>='$ugper' and m.sa=$sa and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	
	}
	
		
	
	
	
	
	if($_POST['stlevel']=='below')
	{
		$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.sa<'$sa' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";		
	}
	
		if(($_POST['ulevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.ugper<='$ugper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	
	}
	if(($_POST['clevel']=='below'))
		{
			$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";		
		}
		if(($_POST['slevel'])=='below')
		{

		$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";		
		}
		if(($_POST['hlevel'])=='below')
		{
		$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and s.hscper<='$hscper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";		
		}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,mca m where s.hscper<='$hscper' and s.rollno=m.rollno and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	

	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['ulevel']=='below'))
		{
	
	$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.ugper<='$ugper' and s.hscper<='$hscper' and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	
	}
	
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['ulevel']=='below')&&($_POST['clevel']=='below'))
		{
	
	$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.ugper<='$ugper' and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	
	}
		
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['ulevel']=='below')&&($_POST['clevel']=='below')&&($_POST['stlevel']=='below'))
		{
			
	
	$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.ugper<='$ugper' and m.sa<$sa and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	
	}
		
		
			if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['ulevel']=='below')&&($_POST['clevel']=='below')&&($_POST['stlevel']=='below'))
		{
		
	
	$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.ugper<='$ugper' and m.sa<$sa and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	
	}
	
	
	
	
	
	
	
	
	
	
	}
	
	
	
	else if($dep=='mba')
	{
		
		if(($_POST['ulevel']=='above'))
		{
			
	$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.ugper>='$ugper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	
	}
if(($_POST['clevel']=='above'))
		{
			$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";		
		}
			
	if($_POST['stlevel']=='above')
	{
		$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.sa=$sa and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";		
	}
		if(($_POST['slevel'])=='above')
		{

		$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";		
		}
		if(($_POST['hlevel'])=='above')
		{
		$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and s.hscper>='$hscper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";		
		}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above'))
		{
			
	$query="select * from login l,studentpersonal s,mba m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	

	}
	if(($_POST['slevel']=='above')&&($_POST['hlevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,mba m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	

	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,mba m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	

	}
	if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['ulevel']=='above'))
		{
	
	$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.ugper>='$ugper' and s.hscper>='$hscper' and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	
	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['ulevel']=='above')&&($_POST['clevel']=='above'))
		{
	
	$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.ugper>='$ugper' and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	
	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['ulevel']=='above')&&($_POST['clevel']=='above')&&($_POST['stevel']=='above'))
		{
			
	
	$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.ugper>='$ugper' and m.sa=$sa and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	
	}
		
			if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['ulevel']=='above')&&($_POST['clevel']=='above')&&($_POST['stlevel']=='above'))
		{
		
	
	$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.ugper>='$ugper' and m.sa=$sa and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	
	}
	
	
	
	
	
	
	if($_POST['stlevel']=='below')
	{
		$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.sa<$sa and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";		
	}
	
	
	if(($_POST['clevel']=='below'))
		{
			$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";		
		}
		if(($_POST['slevel'])=='below')
		{

		$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";		
		}
		if(($_POST['hlevel'])=='below')
		{
		$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and s.hscper<='$hscper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";		
		}
		if(($_POST['ulevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.ugper<='$ugper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	
	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,mba m where s.hscper<='$hscper' and s.rollno=m.rollno and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	

	}
	
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['ulevel']=='below'))
		{
	
	$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.ugper<='$ugper' and s.hscper<='$hscper' and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	
	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['ulevel']=='below')&&($_POST['clevel']=='below'))
		{
	
	$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.ugper<='$ugper' and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	
	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['ulevel']=='below')&&($_POST['clevel']=='below')&&($_POST['stlevel']=='below'))
		{
			
	
	$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.ugper<='$ugper' and m.sa<$sa and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	
	}
		
			if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['ulevel']=='below')&&($_POST['clevel']=='below')&&($_POST['stlevel']=='below'))
		{
		
	
	$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.ugper<='$ugper' and m.sa<$sa and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	
	}
	}
	
	
	
	else if($dep=='msc')
	{
		//$query="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";
	
	
	
	
	if(($_POST['clevel']=='above'))
		{
			$query="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";		
		}
		if(($_POST['slevel'])=='above')
		{

		$query="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";		
		}
		if($_POST['stlevel']=='above')
	{
		$query="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and m.sa=$sa and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";		
	}
		if(($_POST['hlevel'])=='above')
		{
		$query="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and s.hscper>='$hscper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";		
		}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above'))
		{
			
	$query="select * from login l,studentpersonal s,msc m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	

	}
	if(($_POST['slevel']=='above')&&($_POST['hlevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,msc m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	

	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,msc m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	

	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['clevel']=='above'))
		{
	
	$query="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	
	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['clevel']=='above')&&($_POST['stlevel']=='above'))
		{
	
	$query="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and m.sa=$sa and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	
	}
		
			if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['clevel']=='above')&&($_POST['stlevel']=='above'))
		{
		
	
	$query="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and m.sa=$sa and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	
	}
	
		
	
	
	
	
	
	if($_POST['stlevel']=='below')
	{
		$query="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and m.sa<$sa and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";		
	}
	
	
	if(($_POST['clevel']=='below'))
		{
			$query="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";		
		}
		if(($_POST['slevel'])=='below')
		{

		$query="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";		
		}
		if(($_POST['hlevel'])=='below')
		{
		$query="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and s.hscper<='$hscper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";		
		}
	
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,msc m where s.hscper<='$hscper' and s.rollno=m.rollno and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	

	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['clevel']=='below'))
		{
	
	$query="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	
	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['clevel']=='below')&&($_POST['stlevel']=='below'))
		{
			
	
	$query="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno  and m.sa<$sa and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	
	}
		
	
			if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['clevel']=='below')&&($_POST['stlevel']=='below'))
		{
		
	
	$query="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno  and m.sa<$sa and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	}
	else
	{
		
		
	//	$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";
	if($_POST['stlevel']=='above')
	{
		$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and m.sa=$sa and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";		
	}
	
	
	if(($_POST['clevel']=='above'))
		{
			$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";		
		}
		if(($_POST['slevel'])=='above')
		{

		$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";		
		}
		if(($_POST['hlevel'])=='above')
		{
		$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and s.hscper>='$hscper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";		
		}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above'))
		{
			
	$query="select * from login l,studentpersonal s,be m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	

	}
	if(($_POST['slevel']=='above')&&($_POST['hlevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,be m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	

	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above'))
		{
	
	$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and s.hscper>='$hscper' and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	
	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,be m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	

	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['clevel']=='above'))
		{
	
	$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	
	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['clevel']=='above')&&($_POST['stlevel']=='above'))
		{
	
	$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and m.sa=$sa and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	
	}
	
		
			if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['clevel']=='above')&&($_POST['stlevel']=='above'))
		{
		
	
	$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and m.sa=$sa and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	
	}
	
		
	
	
	
	
	if($_POST['stlevel']=='below')
	{
		$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and m.sa<$sa and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";		
	}
	
	
	if(($_POST['clevel']=='below'))
		{
			$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";		
		}
		if(($_POST['slevel'])=='below')
		{

		$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";		
		}
		if(($_POST['hlevel'])=='below')
		{
		$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and s.hscper<='$hscper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";		
		}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,be m where s.hscper<='$hscper' and s.rollno=m.rollno and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	

	}
	if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
	
	$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno  and s.hscper<='$hscper' and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	
	}
	
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['clevel']=='below'))
		{
	
	$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	
	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['clevel']=='below')&&($_POST['stlevel']=='below'))
		{
			
	
	$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno  and m.sa<$sa and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	
	}
		
			if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['clevel']=='below')&&($_POST['stlevel']=='below'))
		{
		
	
	$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno  and m.sa<$sa and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep')";	
	}
	
	
	
	if($dep=='office')
	{
		$dep1=$_POST['dept1'];
		
		if($dep1=='all')
		{
			if($_POST['stlevel']=='above')
	{
		$be="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and m.sa=$sa and l.id=m.rollno and s.rollno in (select id from login where department='cse' or department='it' or department='eee' or department='ece' or department='mech' or department='civil' or department='automobiles')";		
	}
	
			if(($_POST['clevel']=='above'))
		{
			$be="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='cse' or department='it' or department='eee' or department='ece' or department='mech' or department='civil' or department='automobiles')";		
		}
			
			if(($_POST['clevel']=='above'))
		{
			$be="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='cse' or department='it' or department='eee' or department='ece' or department='mech' or department='civil' or department='automobiles')";		
		}	
			
				if(($_POST['clevel']=='above'))
		{
			$be="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='cse' or department='it' or department='eee' or department='ece' or department='mech' or department='civil' or department='automobiles')";		
		}
		if(($_POST['hlevel'])=='above')
		{
		$be="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and s.hscper>='$hscper' and l.id=m.rollno and s.rollno in (select id from login where department='cse' or department='it' or department='eee' or department='ece' or department='mech' or department='civil' or department='automobiles')";		
		}	
			
			
			
			
			
			
			
			
			
		
	
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above'))
		{
			
	$be="select * from login l,studentpersonal s,be m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='cse' or department='it' or department='eee' or department='ece' or department='mech' or department='civil' or department='automobiles')";	

	}
	if(($_POST['slevel']=='above')&&($_POST['hlevel']=='below'))
		{
			
	$be="select * from login l,studentpersonal s,be m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='cse' or department='it' or department='eee' or department='ece' or department='mech' or department='civil' or department='automobiles')";	

	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above'))
		{
	
	$be="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and s.hscper>='$hscper' and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='cse' or department='it' or department='eee' or department='ece' or department='mech' or department='civil' or department='automobiles')";	
	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
			
	$be="select * from login l,studentpersonal s,be m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='cse' or department='it' or department='eee' or department='ece' or department='mech' or department='civil' or department='automobiles')";	

	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['clevel']=='above'))
		{
	
	$be="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='cse' or department='it' or department='eee' or department='ece' or department='mech' or department='civil' or department='automobiles')";	
	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['clevel']=='above')&&($_POST['stlevel']=='above'))
		{
	
	$be="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and m.sa=$sa and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='cse' or department='it' or department='eee' or department='ece' or department='mech' or department='civil' or department='automobiles')";	
	}
	
		
			if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['clevel']=='above')&&($_POST['stlevel']=='above'))
		{
		
	
	$be="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and m.sa=$sa and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='cse' or department='it' or department='eee' or department='ece' or department='mech' or department='civil' or department='automobiles')";	
	}
	
		
	
	
	
	
	if($_POST['stlevel']=='below')
	{
		$be="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and m.sa<$sa and l.id=m.rollno and s.rollno in (select id from login where department='cse' or department='it' or department='eee' or department='ece' or department='mech' or department='civil' or department='automobiles')";		
	}
	
	
	if(($_POST['clevel']=='below'))
		{
			$be="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='cse' or department='it' or department='eee' or department='ece' or department='mech' or department='civil' or department='automobiles')";		
		}
		if(($_POST['slevel'])=='below')
		{

		$be="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='cse' or department='it' or department='eee' or department='ece' or department='mech' or department='civil' or department='automobiles')";		
		}
		if(($_POST['hlevel'])=='below')
		{
		$be="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and s.hscper<='$hscper' and l.id=m.rollno and s.rollno in (select id from login where department='cse' or department='it' or department='eee' or department='ece' or department='mech' or department='civil' or department='automobiles')";		
		}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
			
	$be="select * from login l,studentpersonal s,be m where s.hscper<='$hscper' and s.rollno=m.rollno and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='cse' or department='it' or department='eee' or department='ece' or department='mech' or department='civil' or department='automobiles')";	

	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['clevel']=='below'))
		{
	
	$be="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='cse' or department='it' or department='eee' or department='ece' or department='mech' or department='civil' or department='automobiles')";	
	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['clevel']=='below')&&($_POST['stlevel']=='below'))
		{
			
	
	$be="select * from login l,studentpersonal s,be m where s.rollno=m.rollno  and m.sa<$sa and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='cse' or department='it' or department='eee' or department='ece' or department='mech' or department='civil' or department='automobiles')";	
	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
	
	$be="select * from login l,studentpersonal s,be m where s.rollno=m.rollno  and s.hscper<='$hscper' and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='cse' or department='it' or department='eee' or department='ece' or department='mech' or department='civil' or department='automobiles')";	
	}
	
			if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['clevel']=='below')&&($_POST['stlevel']=='below'))
		{
		
	
	$be="select * from login l,studentpersonal s,be m where s.rollno=m.rollno  and m.sa<$sa and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='cse' or department='it' or department='eee' or department='ece' or department='mech' or department='civil' or department='automobiles')";	
	}
	
			
				if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['clevel']=='above')&&($_POST['stlevel']=='above'))
		{
		
	
	$be="select * from login l,studentpersonal s,be m where s.rollno=m.rollno  and m.sa=$sa and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>=$cp and l.id=m.rollno and s.rollno in (select id from login where department='cse' or department='it' or department='eee' or department='ece' or department='mech' or department='civil' or department='automobiles')";	
	}	
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			if($_POST['stlevel']=='above')
	{
		$mba="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.sa=$sa and l.id=m.rollno and s.rollno in (select id from login where department='mba')";		
	}
			
			
			if(($_POST['ulevel']=='above'))
		{
			
	$mba="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.ugper>='$ugper' and l.id=m.rollno and s.rollno in (select id from login where department='mba')";	
	}
if(($_POST['clevel']=='above'))
		{
			$mba="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='mba')";		
		}
		if(($_POST['slevel'])=='above')
		{

		$mba="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='mba')";		
		}
		if(($_POST['hlevel'])=='above')
		{
		$mba="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and s.hscper>='$hscper' and l.id=m.rollno and s.rollno in (select id from login where department='mba')";		
		}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above'))
		{
			
	$mba="select * from login l,studentpersonal s,mba m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='mba')";	

	}
	if(($_POST['slevel']=='above')&&($_POST['hlevel']=='below'))
		{
			
	$mba="select * from login l,studentpersonal s,mba m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='mba')";	

	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
			
	$mba="select * from login l,studentpersonal s,mba m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='mba')";	

	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['ulevel']=='above')&&($_POST['clevel']=='above'))
		{
	
	$mba="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.ugper>='$ugper' and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='mba')";	
	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['ulevel']=='above')&&($_POST['clevel']=='above')&&($_POST['stevel']=='above'))
		{
			
	
	$mba="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.ugper>='$ugper' and m.sa=$sa and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='mba')";	
	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['ulevel']=='above'))
		{
	
	$mba="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.ugper>='$ugper' and s.hscper>='$hscper' and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='mba')";	
	}
			if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['ulevel']=='above')&&($_POST['clevel']=='above')&&($_POST['stlevel']=='above'))
		{
		
	
	$mba="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.ugper>='$ugper' and m.sa=$sa and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='mba')";	
	}
	
		
	
	
	
	
	
	if($_POST['stlevel']=='below')
	{
		$mba="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.sa<$sa and l.id=m.rollno and s.rollno in (select id from login where department='mba')";		
	}
	
	
	if(($_POST['clevel']=='below'))
		{
			$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='mba')";		
		}
		if(($_POST['slevel'])=='below')
		{

		$mba="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='mba')";		
		}
		if(($_POST['hlevel'])=='below')
		{
		$mba="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and s.hscper<='$hscper' and l.id=m.rollno and s.rollno in (select id from login where department='mba')";		
		}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
			
	$mba="select * from login l,studentpersonal s,mba m where s.hscper<='$hscper' and s.rollno=m.rollno and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='mba')";	

	}
	
	
	if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['clevel']=='above')&&($_POST['stlevel']=='above'))
		{
	
	$mba="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and m.sa=$sa and l.id=m.rollno and s.rollno in (select id from login where department='mba')";	
	}
	
	
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['ulevel']=='below')&&($_POST['clevel']=='below'))
		{
	
	$mba="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.ugper<='$ugper' and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='mba')";	
	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['ulevel']=='below')&&($_POST['clevel']=='below')&&($_POST['stlevel']=='below'))
		{
			
	
	$mba="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.ugper<='$ugper' and m.sa<$sa and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='mba')";	
	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['ulevel']=='below'))
		{
	
	$mba="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.ugper<='$ugper' and s.hscper<='$hscper' and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='mba')";	
	}
		if(($_POST['ulevel']=='below'))
		{
			
	$mba="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.ugper<='$ugper' and l.id=m.rollno and s.rollno in (select id from login where department='mba')";	
	}
			if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['ulevel']=='below')&&($_POST['clevel']=='below')&&($_POST['stlevel']=='below'))
		{
		
	
	$mba="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.ugper<='$ugper' and m.sa<$sa and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='mba')";	
	}
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
					
	if($_POST['stlevel']=='above')
	{
		$msc="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and m.sa=$sa and l.id=m.rollno and s.rollno in (select id from login where department='msc')";		
	}
			
			
			if(($_POST['clevel']=='above'))
		{
			$msc="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='msc')";		
		}
		if(($_POST['slevel'])=='above')
		{

		$msc="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='msc')";		
		}
		if(($_POST['hlevel'])=='above')
		{
		$msc="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and s.hscper>='$hscper' and l.id=m.rollno and s.rollno in (select id from login where department='msc')";		
		}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above'))
		{
			
	$msc="select * from login l,studentpersonal s,msc m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='msc')";	

	}
	if(($_POST['slevel']=='above')&&($_POST['hlevel']=='below'))
		{
			
	$msc="select * from login l,studentpersonal s,msc m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='msc')";	

	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
			
	$msc="select * from login l,studentpersonal s,msc m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='msc')";	

	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['clevel']=='above'))
		{
	
	$msc="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='msc')";	
	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['clevel']=='above')&&($_POST['stlevel']=='above'))
		{
	
	$msc="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and m.sa=$sa and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='msc')";	
	}
		
			if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['clevel']=='above')&&($_POST['stlevel']=='above'))
		{
		
	
	$msc="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and m.sa=$sa and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='msc')";	
	}
	

	
	
	
	
	if($_POST['stlevel']=='below')
	{
		$msc="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and m.sa<$sa and l.id=m.rollno and s.rollno in (select id from login where department='msc')";		
	}
	
	
	if(($_POST['clevel']=='below'))
		{
			$msc="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='msc')";		
		}
		if(($_POST['slevel'])=='below')
		{

		$msc="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='msc')";		
		}
		if(($_POST['hlevel'])=='below')
		{
		$msc="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and s.hscper<='$hscper' and l.id=m.rollno and s.rollno in (select id from login where department='msc')";		
		}
	
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
			
	$msc="select * from login l,studentpersonal s,msc m where s.hscper<='$hscper' and s.rollno=m.rollno and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='msc')";	

	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['clevel']=='below'))
		{
	
	$msc="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='msc')";	
	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['clevel']=='below')&&($_POST['stlevel']=='below'))
		{
			
	
	$msc="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno  and m.sa<$sa and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='msc')";	
	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['clevel']=='above')&&($_POST['stlevel']=='above'))
		{
			$msc="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno  and m.sa=$sa and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='msc')";	
	
		}
	
			if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['clevel']=='below')&&($_POST['stlevel']=='below'))
		{
		
	
	$msc="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno  and m.sa<$sa and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='msc')";	
	}
	
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			if(($_POST['ulevel']=='above'))
		{
			
	$mca="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.ugper>='$ugper' and l.id=m.rollno and s.rollno in (select id from login where department='computer application')";	
	}
		if($_POST['stlevel']=='above')
	{
		$mca="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.sa=$sa and l.id=m.rollno and s.rollno in (select id from login where department='computer application')";		
	}
			
			
			if(($_POST['clevel']=='above'))
		{
			$mca="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='computer application')";		
		}
		if(($_POST['slevel'])=='above')
		{

		$mca="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='computer application')";		
		}
		if(($_POST['hlevel'])=='above')
		{
		$mca="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and s.hscper>='$hscper' and l.id=m.rollno and s.rollno in (select id from login where department='computer application')";		
		}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above'))
		{
			
	$mca="select * from login l,studentpersonal s,mca m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='computer application')";	

	}
	if(($_POST['slevel']=='above')&&($_POST['hlevel']=='below'))
		{
			
	$mca="select * from login l,studentpersonal s,mca m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='computer application')";	

	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
			
	$mca="select * from login l,studentpersonal s,mca m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='computer application')";	

	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['ulevel']=='above')&&($_POST['clevel']=='above'))
		{
	
	$mca="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.ugper>='$ugper' and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='computer application')";	
	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['ulevel']=='above')&&($_POST['clevel']=='above')&&($_POST['stevel']=='above'))
		{
			//echo $sa;
		$mca="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.ugper>='$ugper' and m.sa=$sa and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='computer application')";	
	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['ulevel']=='above'))
		{
	
	$mca="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.ugper>='$ugper' and s.hscper>='$hscper' and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='computer application')";	
	}
		
			if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['ulevel']=='above')&&($_POST['clevel']=='above')&&($_POST['stlevel']=='above'))
		{
		
	
	$mca="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.ugper>='$ugper' and m.sa=$sa and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='computer application')";	
	}
	
		

	
	
	if(($_POST['ulevel']=='below'))
		{
			
	$mca="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.ugper<='$ugper' and l.id=m.rollno and s.rollno in (select id from login where department='computer application')";	
	}
	
	if($_POST['stlevel']=='below')
	{
		$mca="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.sa<$sa and l.id=m.rollno and s.rollno in (select id from login where department='computer application')";		
	}
	
	
	if(($_POST['clevel']=='below'))
		{
			$mca="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='computer application')";		
		}
		if(($_POST['slevel'])=='below')
		{

		$mca="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='computer application')";		
		}
		if(($_POST['hlevel'])=='below')
		{
		$mca="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and s.hscper<='$hscper' and l.id=m.rollno and s.rollno in (select id from login where department='computer application')";		
		}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
			
	$mca="select * from login l,studentpersonal s,mca m where s.hscper<='$hscper' and s.rollno=m.rollno and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='computer application')";	

	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['ulevel']=='below')&&($_POST['clevel']=='below'))
		{
	
	$mca="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.ugper<='$ugper' and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='computer application')";	
	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['ulevel']=='below')&&($_POST['clevel']=='below')&&($_POST['stlevel']=='below'))
		{
			
	
	$mca="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.ugper<='$ugper' and m.sa<$sa and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='computer application')";	
	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['ulevel']=='below'))
		{
	
	$mca="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.ugper<='$ugper' and s.hscper<='$hscper' and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='computer application')";	
	}
		
			if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['ulevel']=='below')&&($_POST['clevel']=='below')&&($_POST['stlevel']=='below'))
		{
		
	
	$mca="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.ugper<='$ugper' and m.sa<$sa and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='computer application')";	
	}
	if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['clevel']=='above')&&($_POST['stlevel']=='above'))
	{
		$mca="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno  and m.sa=$sa and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='computer application')";	
	
	}
	
	
	
	
	
	
	
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
		if($_POST['stlevel']=='above')
	{
		$bsc="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and m.sa=$sa and l.id=m.rollno and s.rollno in (select id from login where department='bsc')";		
	}
	
		
			
			
			
			if(($_POST['clevel']=='above'))
		{
			$bsc="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='bsc')";		
		}
		if(($_POST['slevel'])=='above')
		{

		$bsc="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='bsc')";		
		}
		if(($_POST['hlevel'])=='above')
		{
		$bsc="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and s.hscper>='$hscper' and l.id=m.rollno and s.rollno in (select id from login where department='bsc')";		
		}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above'))
		{
			
	$bsc="select * from login l,studentpersonal s,bsc m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='bsc')";	

	}
	if(($_POST['slevel']=='above')&&($_POST['hlevel']=='below'))
		{
			
	$bsc="select * from login l,studentpersonal s,bsc m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='bsc')";	

	}
	if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above'))
		{
	
	$bsc="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and s.hscper>='$hscper' and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='bsc')";	
	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
			
	$bsc="select * from login l,studentpersonal s,bsc m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='bsc')";	

	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['clevel']=='above'))
		{
	
	$bsc="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='bsc')";	
	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['clevel']=='above')&&($_POST['stlevel']=='above'))
		{
	
	$bsc="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and m.sa=$sa and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='bsc')";	
	}
		
		
			if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['clevel']=='above')&&($_POST['stlevel']=='above'))
		{
		
	
	$bsc="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and m.sa=$sa and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='bsc')";	
	}
	
		
	
	
	
	if($_POST['stlevel']=='below')
	{
		$bsc="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and m.sa<$sa and l.id=m.rollno and s.rollno in (select id from login where department='bsc')";		
	}
	
	
	if(($_POST['clevel']=='below'))
		{
			$bsc="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='bsc')";		
		}
		if(($_POST['slevel'])=='below')
		{

		$bsc="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='bsc')";		
		}
		if(($_POST['hlevel'])=='below')
		{
		$bsc="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and s.hscper<='$hscper' and l.id=m.rollno and s.rollno in (select id from login where department='bsc')";		
		}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
			
	$bsc="select * from login l,studentpersonal s,bsc m where s.hscper<='$hscper' and s.rollno=m.rollno and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='bsc')";	

	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['clevel']=='below'))
		{
	
	$bsc="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='bsc')";	
	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['clevel']=='below')&&($_POST['stlevel']=='below'))
		{
			
	
	$bsc="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno  and m.sa<$sa and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='bsc')";	
	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
	
	$bsc="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno  and s.hscper<='$hscper' and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='bsc')";	
	}
	
			if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['clevel']=='below')&&($_POST['stlevel']=='below'))
		{
		
	
	$bsc="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno  and m.sa<$sa and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='bsc')";	
	}
	
			if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['clevel']=='above')&&($_POST['stlevel']=='above'))
		{
	
	$bsc="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and m.sa=$sa and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='bsc')";	
	}
	
	
	
	
	
	
	
	
	
	
	
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			


$q1=mysql_query($bsc);
$q2=mysql_query($mca);
$q3=mysql_query($mba);
$q4=mysql_query($msc);
$q5=mysql_query($be);


$c1=mysql_num_rows($q1);
$c2=mysql_num_rows($q2);
$c3=mysql_num_rows($q3);
$c4=mysql_num_rows($q4);
$c5=mysql_num_rows($q5);
if(($dep=="office"))
{

	
	echo "<center> <b>Bsc Student Details<b></center><br><br>";
echo "<table class='table'>";
  echo "<thead class='thead-inverse'>";
    echo "<tr><th>Student Rollno</th>";
	echo "<th>Name</th>";
					echo "<th>HSc percentage</th>";
					echo "<th>SSlc percentage</th>";
				echo "<th>Current percentage</th>";
				



			echo"</tr>";
  echo"</thead>";
  echo"<tbody>";
  if($c1==0)
  {
	  echo "<br><center>No values match for your search</center><br>";
  }
 while( $row = mysql_fetch_row($q1))
 {
    echo "<tr><th scope='row'>$row[0]</th>";
	echo"<th scope='row'>$row[2]</th>";
	   echo "<th scope='row'>$row[59]</th>";
	     echo "<th scope='row'>$row[60]</th>";
		   echo "<th scope='row'>$row[72]</th>";
		     
						
							 
	  echo "</tr>";
	
  }
 echo "</tbody>";
echo "</table>";
}
 if($dep=="office")
{
	echo "<center> <b>MBA Student Details<b></center><br><br>";
echo "<table class='table'>";
  echo "<thead class='thead-inverse'>";
    echo "<tr><th>Student Rollno</th>";
	echo "<th>Name</th>";
					echo "<th>Hsc percentage</th>";
					echo "<th>Sslc percentage</th>";
				echo "<th>Ug percentage</th>";
				echo "<th>Current percentage</th>";
				

			echo"</tr>";
  echo"</thead>";
  echo"<tbody>";
   if($c2==0)
  {
	  echo "<center>No values match for your search</center>";
  }
 while( $row = mysql_fetch_row($q3))
 {
    echo "<tr><th scope='row'>$row[0]</th>";
	echo"<th scope='row'>$row[2]</th>";
	   echo "<th scope='row'>$row[59]</th>";
	     echo "<th scope='row'>$row[60]</th>";
		   echo "<th scope='row'>$row[68]</th>";
		     echo "<th scope='row'>$row[74]</th>";
			  
							 
	  echo "</tr>";
	
  }
 echo "</tbody>";
echo "</table>";
}
 if(($dep=="office"))
{
	echo "<center> <b>MCA Student Details<b></center><br><br>";
echo "<table class='table'>";
  echo "<thead class='thead-inverse'>";
    echo "<tr><th>Student Rollno</th>";
	echo "<th>Name</th>";
					echo "<th>Hsc percentage</th>";
					echo "<th>Sslc percentage</th>";
				echo "<th>Ugpercentage</th>";
		echo "<th>Current percentage</th>";
				

			echo"</tr>";
  echo"</thead>";
  echo"<tbody>";
   if($c3==0)
  {
	  echo "<center>No values match for your search</center>";
  }
 while( $row = mysql_fetch_row($q2))
 {
    echo "<tr><th scope='row'>$row[0]</th>";
	echo"<th scope='row'>$row[2]</th>";
	   echo "<th scope='row'>$row[59]</th>";
	     echo "<th scope='row'>$row[60]</th>";
		   echo "<th scope='row'>$row[68]</th>";
		    echo  "<th scope='row'>$row[76]</th>";
			  
							 
	  echo "</tr>";
	
  }
 echo "</tbody>";
echo "</table>";
}
 if($dep=='office')
{
		echo "<center> <b>MSC Student Details<b></center><br><br>";
echo "<table class='table'>";
  echo "<thead class='thead-inverse'>";
    echo "<tr><th>Student Rollno</th>";
	echo "<th>Name</th>";
					echo "<th>Hsc percentage</th>";
					echo "<th>Sslc percentage</th>";
				echo "<th>Current percentage</th>";
				



			echo"</tr>";
  echo"</thead>";
  echo"<tbody>";
   if($c4==0)
  {
	  echo "<center>No values match for your search</center>";
  }
 while( $row = mysql_fetch_row($q4))
 {
    echo "<tr><th scope='row'>$row[0]</th>";
	echo"<th scope='row'>$row[2]</th>";
	   echo "<th scope='row'>$row[59]</th>";
	     echo "<th scope='row'>$row[60]</th>";
		   echo "<th scope='row'>$row[75]</th>";
		    
	  echo "</tr>";
	
  }
 echo "</tbody>";
echo "</table>";
}

if($dep=="office")
{
	
	echo "<center> <b>BE Student Details<b></center><br><br>";
echo "<table class='table'>";
  echo "<thead class='thead-inverse'>";
    echo "<tr><th>Student Rollno</th>";
	echo "<th>Name</th>";
					echo "<th>Hsc percentage</th>";
					echo "<th>SSlc percentage</th>";
				echo "<th>Current Percentage</th>";
				



			echo"</tr>";
  echo"</thead>";
  echo"<tbody>";
   if($c5==0)
  {
	  echo "<center>No values match for your search</center>";
  }
 while( $row = mysql_fetch_row($q5))
 {
    echo "<tr><th scope='row'>$row[0]</th>";
	echo"<th scope='row'>$row[2]</th>";
	   echo "<th scope='row'>$row[59]</th>";
	     echo "<th scope='row'>$row[60]</th>";
		   echo "<th scope='row'>$row[74]</th>";
		    
						
							 
	  echo "</tr>";
	
  }
 echo "</tbody>";
echo "</table>";
}

			
			
			
		}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	if($dep1=='bsc')
	{
		
	
	
	if(($_POST['clevel']=='above'))
		{
			$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['slevel'])=='above')
		{

		$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['hlevel'])=='above')
		{
		$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and s.hscper>='$hscper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above'))
		{
			
	$query="select * from login l,studentpersonal s,bsc m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	

	}
	if(($_POST['slevel']=='above')&&($_POST['hlevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,bsc m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	

	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,bsc m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	

	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['clevel']=='above'))
		{
	
	$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['clevel']=='above')&&($_POST['stlevel']=='above'))
		{
	
	$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and m.sa=$sa and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above'))
		{
	
	$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and s.hscper>='$hscper' and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		
			if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['clevel']=='above')&&($_POST['stlevel']=='above'))
		{
		
	
	$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and m.sa=$sa and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
	
		
	if($_POST['stlevel']=='above')
	{
		$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and m.sa='$sa' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
	}
	
	
	
	
	if($_POST['stlevel']=='below')
	{
		$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and m.sa<'$sa' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
	}
	
	
	if(($_POST['clevel']=='below'))
		{
			$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['slevel'])=='below')
		{

		$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['hlevel'])=='below')
		{
		$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and s.hscper<='$hscper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,bsc m where s.hscper<='$hscper' and s.rollno=m.rollno and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	

	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['clevel']=='below'))
		{
	
	$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['clevel']=='below')&&($_POST['stlevel']=='below'))
		{
			
	
	$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno  and m.sa<$sa and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
	
	$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno  and s.hscper<='$hscper' and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
	
			if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['clevel']=='below')&&($_POST['stlevel']=='below'))
		{
		
	
	$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno  and m.sa<$sa and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	}

	else if($dep1=='computer application')
	{
		if(($_POST['clevel']=='above'))
		{
			$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['slevel'])=='above')
		{

		$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['hlevel'])=='above')
		{
		$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and s.hscper>='$hscper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above'))
		{
			
	$query="select * from login l,studentpersonal s,mca m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	

	}
	if(($_POST['slevel']=='above')&&($_POST['hlevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,mca m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	

	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,mca m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	

	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['ulevel']=='above')&&($_POST['clevel']=='above'))
		{
	
	$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.ugper>='$ugper' and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['ulevel']=='above')&&($_POST['clevel']=='above')&&($_POST['stevel']=='above'))
		{
			echo $sa;
	
	$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.ugper>='$ugper' and m.sa=$sa and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['ulevel']=='above'))
		{
	
	$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.ugper>='$ugper' and s.hscper>='$hscper' and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		if(($_POST['ulevel']=='above'))
		{
			
	$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.ugper>='$ugper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
			if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['ulevel']=='above')&&($_POST['clevel']=='above')&&($_POST['stlevel']=='above'))
		{
		
	
	$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.ugper>='$ugper' and m.sa=$sa and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
	
		
	if($_POST['stlevel']=='above')
	{
		$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.sa='$sa' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
	}
	
	
	
	
	if($_POST['stlevel']=='below')
	{
		$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.sa<'$sa' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
	}
	
	
	if(($_POST['clevel']=='below'))
		{
			$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['slevel'])=='below')
		{

		$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['hlevel'])=='below')
		{
		$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and s.hscper<='$hscper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,mca m where s.hscper<='$hscper' and s.rollno=m.rollno and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	

	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['ulevel']=='below')&&($_POST['clevel']=='below'))
		{
	
	$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.ugper<='$ugper' and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['ulevel']=='below')&&($_POST['clevel']=='below')&&($_POST['stlevel']=='below'))
		{
			
	
	$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.ugper<='$ugper' and m.sa<$sa and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['ulevel']=='below'))
		{
	
	$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.ugper<='$ugper' and s.hscper<='$hscper' and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		if(($_POST['ulevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.ugper<='$ugper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
			if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['ulevel']=='below')&&($_POST['clevel']=='below')&&($_POST['stlevel']=='below'))
		{
		
	
	$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.ugper<='$ugper' and m.sa<$sa and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
	
	
	
	
	
	
	
	
	
	
	}
	
	
	
	else if($dep1=='mba')
	{
		
		if(($_POST['ulevel']=='above'))
		{
			
	$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.ugper>='$ugper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
if(($_POST['clevel']=='above'))
		{
			$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['slevel'])=='above')
		{

		$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['hlevel'])=='above')
		{
		$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and s.hscper>='$hscper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above'))
		{
			
	$query="select * from login l,studentpersonal s,mba m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	

	}
	if(($_POST['slevel']=='above')&&($_POST['hlevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,mba m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	

	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,mba m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	

	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['ulevel']=='above')&&($_POST['clevel']=='above'))
		{
	
	$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.ugper>='$ugper' and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['ulevel']=='above')&&($_POST['clevel']=='above')&&($_POST['stevel']=='above'))
		{
			
	
	$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.ugper>='$ugper' and m.sa=$sa and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['ulevel']=='above'))
		{
	
	$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.ugper>='$ugper' and s.hscper>='$hscper' and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
			if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['ulevel']=='above')&&($_POST['clevel']=='above')&&($_POST['stlevel']=='above'))
		{
		
	
	$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.ugper>='$ugper' and m.sa=$sa and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
	
		
	if($_POST['stlevel']=='above')
	{
		$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.sa='$sa' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
	}
	
	
	
	
	if($_POST['stlevel']=='below')
	{
		$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.sa<'$sa' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
	}
	
	
	if(($_POST['clevel']=='below'))
		{
			$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['slevel'])=='below')
		{

		$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['hlevel'])=='below')
		{
		$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and s.hscper<='$hscper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,mba m where s.hscper<='$hscper' and s.rollno=m.rollno and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	

	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['ulevel']=='below')&&($_POST['clevel']=='below'))
		{
	
	$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.ugper<='$ugper' and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['ulevel']=='below')&&($_POST['clevel']=='below')&&($_POST['stlevel']=='below'))
		{
			
	
	$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.ugper<='$ugper' and m.sa<$sa and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['ulevel']=='below'))
		{
	
	$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.ugper<='$ugper' and s.hscper<='$hscper' and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		if(($_POST['ulevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.ugper<='$ugper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
			if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['ulevel']=='below')&&($_POST['clevel']=='below')&&($_POST['stlevel']=='below'))
		{
		
	
	$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.ugper<='$ugper' and m.sa<$sa and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
	}
	
	
	
	else if($dep1=='msc')
	{
		//$query="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";
	
	
	
	
	if(($_POST['clevel']=='above'))
		{
			$query="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['slevel'])=='above')
		{

		$query="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['hlevel'])=='above')
		{
		$query="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and s.hscper>='$hscper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above'))
		{
			
	$query="select * from login l,studentpersonal s,msc m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	

	}
	if(($_POST['slevel']=='above')&&($_POST['hlevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,msc m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	

	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,msc m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	

	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['clevel']=='above'))
		{
	
	$query="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['clevel']=='above')&&($_POST['stlevel']=='above'))
		{
	
	$query="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and m.sa=$sa and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		
			if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['clevel']=='above')&&($_POST['stlevel']=='above'))
		{
		
	
	$query="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and m.sa=$sa and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
	
		
	if($_POST['stlevel']=='above')
	{
		$query="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and m.sa='$sa' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
	}
	
	
	
	
	if($_POST['stlevel']=='below')
	{
		$query="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and m.sa<'$sa' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
	}
	
	
	if(($_POST['clevel']=='below'))
		{
			$query="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['slevel'])=='below')
		{

		$query="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['hlevel'])=='below')
		{
		$query="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and s.hscper<='$hscper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
	
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,msc m where s.hscper<='$hscper' and s.rollno=m.rollno and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	

	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['clevel']=='below'))
		{
	
	$query="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['clevel']=='below')&&($_POST['stlevel']=='below'))
		{
			
	
	$query="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno  and m.sa<$sa and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		
	
			if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['clevel']=='below')&&($_POST['stlevel']=='below'))
		{
		
	
	$query="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno  and m.sa<$sa and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	}
	else
	{
		
	//	$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";
	
	
	if(($_POST['clevel']=='above'))
		{
			$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['slevel'])=='above')
		{

		$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['hlevel'])=='above')
		{
		$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and s.hscper>='$hscper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above'))
		{
			
	$query="select * from login l,studentpersonal s,be m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	

	}
	if(($_POST['slevel']=='above')&&($_POST['hlevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,be m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	

	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above'))
		{
	
	$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and s.hscper>='$hscper' and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,be m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	

	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['clevel']=='above'))
		{
	
	$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['clevel']=='above')&&($_POST['stlevel']=='above'))
		{
	
	$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and m.sa=$sa and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
	
		
			if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['clevel']=='above')&&($_POST['stlevel']=='above'))
		{
		
	
	$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and m.sa=$sa and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
	
		
	if($_POST['stlevel']=='above')
	{
		$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and m.sa='$sa' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
	}
	
	
	
	
	if($_POST['stlevel']=='below')
	{
		$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and m.sa<'$sa' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
	}
	
	
	if(($_POST['clevel']=='below'))
		{
			$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['slevel'])=='below')
		{

		$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['hlevel'])=='below')
		{
		$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and s.hscper<='$hscper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,be m where s.hscper<='$hscper' and s.rollno=m.rollno and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	

	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['clevel']=='below'))
		{
	
	$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['clevel']=='below')&&($_POST['stlevel']=='below'))
		{
			
	
	$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno  and m.sa<$sa and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
	
	$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno  and s.hscper<='$hscper' and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
	
			if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['clevel']=='below')&&($_POST['stlevel']=='below'))
		{
		
	
	$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno  and m.sa<$sa and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
	
	
	}
	$dept1=$_POST['dept1'];
	
	if($dep1=='bsc')
	{
		
	
	
	if(($_POST['clevel']=='above'))
		{
			$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['slevel'])=='above')
		{

		$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['hlevel'])=='above')
		{
		$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and s.hscper>='$hscper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above'))
		{
			
	$query="select * from login l,studentpersonal s,bsc m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	

	}
	if(($_POST['slevel']=='above')&&($_POST['hlevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,bsc m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	

	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,bsc m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	

	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['clevel']=='above'))
		{
	
	$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['clevel']=='above')&&($_POST['stlevel']=='above'))
		{
	
	$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and m.sa=$sa and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above'))
		{
	
	$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and s.hscper>='$hscper' and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		
			if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['clevel']=='above')&&($_POST['stlevel']=='above'))
		{
		
	
	$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and m.sa=$sa and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
	
		
	if($_POST['stlevel']=='above')
	{
		$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and m.sa='$sa' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
	}
	
	
	
	
	if($_POST['stlevel']=='below')
	{
		$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and m.sa<'$sa' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
	}
	
	
	if(($_POST['clevel']=='below'))
		{
			$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['slevel'])=='below')
		{

		$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['hlevel'])=='below')
		{
		$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and s.hscper<='$hscper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,bsc m where s.hscper<='$hscper' and s.rollno=m.rollno and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	

	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['clevel']=='below'))
		{
	
	$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['clevel']=='below')&&($_POST['stlevel']=='below'))
		{
			
	
	$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno  and m.sa<$sa and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
	
	$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno  and s.hscper<='$hscper' and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
	
			if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['clevel']=='below')&&($_POST['stlevel']=='below'))
		{
		
	
	$query="select * from login l,studentpersonal s,bsc m where s.rollno=m.rollno  and m.sa<$sa and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	}

	else if($dep1=='computer application')
	{
		if(($_POST['clevel']=='above'))
		{
			$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['slevel'])=='above')
		{

		$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['hlevel'])=='above')
		{
		$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and s.hscper>='$hscper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above'))
		{
			
	$query="select * from login l,studentpersonal s,mca m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	

	}
	if(($_POST['slevel']=='above')&&($_POST['hlevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,mca m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	

	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,mca m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	

	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['ulevel']=='above')&&($_POST['clevel']=='above'))
		{
	
	$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.ugper>='$ugper' and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['ulevel']=='above')&&($_POST['clevel']=='above')&&($_POST['stevel']=='above'))
		{
			echo $sa;
	
	$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.ugper>='$ugper' and m.sa=$sa and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['ulevel']=='above'))
		{
	
	$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.ugper>='$ugper' and s.hscper>='$hscper' and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		if(($_POST['ulevel']=='above'))
		{
			
	$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.ugper>='$ugper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
			if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['ulevel']=='above')&&($_POST['clevel']=='above')&&($_POST['stlevel']=='above'))
		{
		
	
	$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.ugper>='$ugper' and m.sa=$sa and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
	
		
	if($_POST['stlevel']=='above')
	{
		$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.sa='$sa' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
	}
	
	
	
	
	if($_POST['stlevel']=='below')
	{
		$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.sa<'$sa' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
	}
	
	
	if(($_POST['clevel']=='below'))
		{
			$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['slevel'])=='below')
		{

		$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['hlevel'])=='below')
		{
		$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and s.hscper<='$hscper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,mca m where s.hscper<='$hscper' and s.rollno=m.rollno and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	

	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['ulevel']=='below')&&($_POST['clevel']=='below'))
		{
	
	$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.ugper<='$ugper' and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['ulevel']=='below')&&($_POST['clevel']=='below')&&($_POST['stlevel']=='below'))
		{
			
	
	$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.ugper<='$ugper' and m.sa<$sa and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['ulevel']=='below'))
		{
	
	$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.ugper<='$ugper' and s.hscper<='$hscper' and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		if(($_POST['ulevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.ugper<='$ugper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
			if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['ulevel']=='below')&&($_POST['clevel']=='below')&&($_POST['stlevel']=='below'))
		{
		
	
	$query="select * from login l,studentpersonal s,mca m where s.rollno=m.rollno and m.ugper<='$ugper' and m.sa<$sa and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
	
	
	
	
	
	
	
	
	
	
	}
	
	
	
	else if($dep1=='mba')
	{
		
		if(($_POST['ulevel']=='above'))
		{
			
	$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.ugper>='$ugper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
if(($_POST['clevel']=='above'))
		{
			$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['slevel'])=='above')
		{

		$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['hlevel'])=='above')
		{
		$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and s.hscper>='$hscper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above'))
		{
			
	$query="select * from login l,studentpersonal s,mba m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	

	}
	if(($_POST['slevel']=='above')&&($_POST['hlevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,mba m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	

	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,mba m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	

	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['ulevel']=='above')&&($_POST['clevel']=='above'))
		{
	
	$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.ugper>='$ugper' and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['ulevel']=='above')&&($_POST['clevel']=='above')&&($_POST['stevel']=='above'))
		{
			
	
	$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.ugper>='$ugper' and m.sa=$sa and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['ulevel']=='above'))
		{
	
	$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.ugper>='$ugper' and s.hscper>='$hscper' and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
			if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['ulevel']=='above')&&($_POST['clevel']=='above')&&($_POST['stlevel']=='above'))
		{
		
	
	$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.ugper>='$ugper' and m.sa=$sa and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
	
		
	if($_POST['stlevel']=='above')
	{
		$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.sa='$sa' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
	}
	
	
	
	
	if($_POST['stlevel']=='below')
	{
		$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.sa<'$sa' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
	}
	
	
	if(($_POST['clevel']=='below'))
		{
			$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['slevel'])=='below')
		{

		$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['hlevel'])=='below')
		{
		$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and s.hscper<='$hscper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,mba m where s.hscper<='$hscper' and s.rollno=m.rollno and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	

	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['ulevel']=='below')&&($_POST['clevel']=='below'))
		{
	
	$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.ugper<='$ugper' and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['ulevel']=='below')&&($_POST['clevel']=='below')&&($_POST['stlevel']=='below'))
		{
			
	
	$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.ugper<='$ugper' and m.sa<$sa and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['ulevel']=='below'))
		{
	
	$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.ugper<='$ugper' and s.hscper<='$hscper' and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		if(($_POST['ulevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.ugper<='$ugper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
			if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['ulevel']=='below')&&($_POST['clevel']=='below')&&($_POST['stlevel']=='below'))
		{
		
	
	$query="select * from login l,studentpersonal s,mba m where s.rollno=m.rollno and m.ugper<='$ugper' and m.sa<$sa and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
	}
	
	
	
	else if($dep1=='msc')
	{
		//$query="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";
	
	
	
	
	if(($_POST['clevel']=='above'))
		{
			$query="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['slevel'])=='above')
		{

		$query="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['hlevel'])=='above')
		{
		$query="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and s.hscper>='$hscper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above'))
		{
			
	$query="select * from login l,studentpersonal s,msc m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	

	}
	if(($_POST['slevel']=='above')&&($_POST['hlevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,msc m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	

	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,msc m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	

	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['clevel']=='above'))
		{
	
	$query="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['clevel']=='above')&&($_POST['stlevel']=='above'))
		{
	
	$query="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and m.sa=$sa and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		
			if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['clevel']=='above')&&($_POST['stlevel']=='above'))
		{
		
	
	$query="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and m.sa=$sa and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
	
		
	if($_POST['stlevel']=='above')
	{
		$query="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and m.sa='$sa' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
	}
	
	
	
	
	if($_POST['stlevel']=='below')
	{
		$query="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and m.sa<'$sa' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
	}
	
	
	if(($_POST['clevel']=='below'))
		{
			$query="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['slevel'])=='below')
		{

		$query="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['hlevel'])=='below')
		{
		$query="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and s.hscper<='$hscper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
	
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,msc m where s.hscper<='$hscper' and s.rollno=m.rollno and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	

	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['clevel']=='below'))
		{
	
	$query="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['clevel']=='below')&&($_POST['stlevel']=='below'))
		{
			
	
	$query="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno  and m.sa<$sa and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		
	
			if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['clevel']=='below')&&($_POST['stlevel']=='below'))
		{
		
	
	$query="select * from login l,studentpersonal s,msc m where s.rollno=m.rollno  and m.sa<$sa and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	}
	else
	{
		
	
	//	$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";
	
	
	if(($_POST['clevel']=='above'))
		{
			$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['slevel'])=='above')
		{

		$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['hlevel'])=='above')
		{
		$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and s.hscper>='$hscper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above'))
		{
			
	$query="select * from login l,studentpersonal s,be m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	

	}
	if(($_POST['slevel']=='above')&&($_POST['hlevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,be m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	

	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above'))
		{
	
	$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and s.hscper>='$hscper' and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,be m where s.hscper>='$hscper' and s.rollno=m.rollno and s.sslcper>='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	

	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['clevel']=='above'))
		{
	
	$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['clevel']=='above')&&($_POST['stlevel']=='above'))
		{
	
	$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and m.sa=$sa and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
	
		
			if(($_POST['slevel']=='above')&&($_POST['hlevel']=='above')&&($_POST['clevel']=='above')&&($_POST['stlevel']=='above'))
		{
		
	
	$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and m.sa=$sa and s.hscper>='$hscper' and s.sslcper>='$sslcper' and m.cp>='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
	
		
	if($_POST['stlevel']=='above')
	{
		$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and m.sa='$sa' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
	}
	
	
	
	
	if($_POST['stlevel']=='below')
	{
		$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and m.sa<'$sa' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
	}
	
	
	if(($_POST['clevel']=='below'))
		{
			$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['slevel'])=='below')
		{

		$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['hlevel'])=='below')
		{
		$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and s.hscper<='$hscper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";		
		}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
			
	$query="select * from login l,studentpersonal s,be m where s.hscper<='$hscper' and s.rollno=m.rollno and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	

	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['clevel']=='below'))
		{
	
	$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['clevel']=='below')&&($_POST['stlevel']=='below'))
		{
			
	
	$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno  and m.sa<$sa and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
		if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below'))
		{
	
	$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno  and s.hscper<='$hscper' and s.sslcper<='$sslcper' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
	
			if(($_POST['slevel']=='below')&&($_POST['hlevel']=='below')&&($_POST['clevel']=='below')&&($_POST['stlevel']=='below'))
		{
		
	
	$query="select * from login l,studentpersonal s,be m where s.rollno=m.rollno  and m.sa<$sa and s.hscper<='$hscper' and s.sslcper<='$sslcper' and m.cp<='$cp' and l.id=m.rollno and s.rollno in (select id from login where department='$dep1')";	
	}
	
	
	}
	
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	}
					 $q=mysql_query($query);
						 $count=mysql_num_rows($q);
						 if($count==0)
						 {
if($dep!='office'){							 
					 $_SESSION['err']=1;
							 echo "<script>alert('No Record Found');</script>";
							header('Location:search1.php');
}
else{
}
						 }

						
}
else
{
	
	
	
	
	
		 $q=mysql_query($query);
						 $count=mysql_num_rows($q);
						 if($count==0)
						 {	 $_SESSION['err']=1;
							 echo "<script>alert('No Record Found');</script>";
							header('Location:search1.php');
						
						 }
}	
	echo "<left><a href='index.php'>Home</a></left>";	
echo "<left><a href='search.php'>Previous Menu</a></left>";	
?>
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
     <title>Kongu Engineering College</title>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
</head>
<body>
 <?php echo "<a href='view.php?download=1'>Download As Excel</a>"; ?> 
<?php

if(($dep=="computer application"))
{
echo "<center> <b>Student Details<b></center><br><br>";
echo "<table class='table'>";
  echo "<thead class='thead-inverse'>";
    echo "<tr><th>Student Rollno</th>";
	echo "<th>Name</th>";
	echo "<th>Hsc percentage</th>";
echo "<th>sslc percentage</th>";	
echo "<th>Ug percentage</th>";
echo "<th>Current Percentage</th>";
echo "<th>Department</th>";
			echo"</tr>";
  echo"</thead>";
  echo"<tbody>";
 while( $row = mysql_fetch_row($q))
 {
    echo "<tr><th scope='row'>$row[0]</th>";
	   echo "<th scope='row'>$row[2]</th>";
	     echo "<th scope='row'>$row[59]</th>";
		   echo "<th scope='row'>$row[60]</th>";
		     echo "<th scope='row'>$row[68]</th>";
			 echo "<th scope='row'>$row[76]</th>";
			 if($dep=='office')
			 {
			   echo "<th scope='row'>$dep1</th>";
			 }else
			 {
				 echo "<th scope='row'>$dep</th>";
			 }
	  echo "</tr>";
	  
	
  }
 echo "</tbody>";
echo "</table>";
}
else if(($dep=="bsc"))
{
	echo "<center> <b>Student Details<b></center><br><br>";
echo "<table class='table'>";
  echo "<thead class='thead-inverse'>";
    echo "<tr><th>Student Rollno</th>";
	echo "<th>Name</th>";
	echo "<th>Hsc percentage</th>";
echo "<th>sslc percentage</th>";	
echo "<th>Current percentage</th>";
echo "<th>Department</th>";
			echo"</tr>";
  echo"</thead>";
  echo"<tbody>";
 while( $row = mysql_fetch_row($q))
 {
	 
    echo "<tr><th scope='row'>$row[0]</th>";
	   echo "<th scope='row'>$row[2]</th>";
	     echo "<th scope='row'>$row[59]</th>";
		   echo "<th scope='row'>$row[60]</th>";
		     echo "<th scope='row'>$row[72]</th>";
			   if($dep=='office')
			 {
			   echo "<th scope='row'>$dep1</th>";
			 }else
			 {
				 echo "<th scope='row'>$dep</th>";
			 }
	  echo "</tr>";
	  
	
  }
 echo "</tbody>";
echo "</table>";	
}
else if($dep=="msc")
{
	echo "<center> <b>Student Details<b></center><br><br>";
echo "<table class='table'>";
  echo "<thead class='thead-inverse'>";
    echo "<tr><th>Student Rollno</th>";
	echo "<th>Name</th>";
	echo "<th>Hsc percentage</th>";
echo "<th>sslc percentage</th>";	
echo "<th>Current percentage</th>";
echo "<th>Department</th>";
			echo"</tr>";
  echo"</thead>";
  echo"<tbody>";
 while( $row = mysql_fetch_row($q))
 {
    echo "<tr><th scope='row'>$row[0]</th>";
	   echo "<th scope='row'>$row[2]</th>";
	     echo "<th scope='row'>$row[59]</th>";
		   echo "<th scope='row'>$row[60]</th>";
		     echo "<th scope='row'>$row[75]</th>";
			   if($dep=='office')
			 {
			   echo "<th scope='row'>$dep1</th>";
			 }else
			 {
				 echo "<th scope='row'>$dep</th>";
			 }
	  echo "</tr>";
	  
	
  }
 echo "</tbody>";
echo "</table>";
}
else if($dep=="mba")
{
	echo "<center> <b>Student Details<b></center><br><br>";
echo "<table class='table'>";
  echo "<thead class='thead-inverse'>";
    echo "<tr><th>Student Rollno</th>";
	echo "<th>Name</th>";
	echo "<th>Hsc percentage</th>";
echo "<th>sslc percentage</th>";	
echo "<th>Ug percentage</th>";
echo "<th>Current percentage</th>";
echo "<th>Department</th>";
			echo"</tr>";
  echo"</thead>";
  echo"<tbody>";
 while( $row = mysql_fetch_row($q))
 {
    echo "<tr><th scope='row'>$row[0]</th>";
	   echo "<th scope='row'>$row[2]</th>";
	     echo "<th scope='row'>$row[59]</th>";
		   echo "<th scope='row'>$row[60]</th>";
		     echo "<th scope='row'>$row[68]</th>";
		     echo "<th scope='row'>$row[74]</th>";
			   if($dep=='office')
			 {
			   echo "<th scope='row'>$dep1</th>";
			 }else
			 {
				 echo "<th scope='row'>$dep</th>";
			 }
	  echo "</tr>";
	  
	
  }
 echo "</tbody>";
echo "</table>";	
}
else if($dep=='office')
{
if(($dep1=="computer application"))
{
echo "<center> <b>Student Details<b></center><br><br>";
echo "<table class='table'>";
  echo "<thead class='thead-inverse'>";
    echo "<tr><th>Student Rollno</th>";
	echo "<th>Name</th>";
	echo "<th>Hsc percentage</th>";
echo "<th>sslc percentage</th>";	
echo "<th>Ug percentage</th>";
echo "<th>Department</th>";
			echo"</tr>";
  echo"</thead>";
  echo"<tbody>";
 while( $row = mysql_fetch_row($q))
 {
    echo "<tr><th scope='row'>$row[0]</th>";
	   echo "<th scope='row'>$row[2]</th>";
	     echo "<th scope='row'>$row[59]</th>";
		   echo "<th scope='row'>$row[60]</th>";
		     echo "<th scope='row'>$row[68]</th>";
			 if($dep=='office')
			 {
			   echo "<th scope='row'>$dep1</th>";
			 }else
			 {
				 echo "<th scope='row'>$dep</th>";
			 }
	  echo "</tr>";
	  
	
  }
 echo "</tbody>";
echo "</table>";
}	

else if($dep1=="mba")
{
	echo "<center> <b>Student Details<b></center><br><br>";
echo "<table class='table'>";
  echo "<thead class='thead-inverse'>";
    echo "<tr><th>Student Rollno</th>";
	echo "<th>Name</th>";
	echo "<th>Hsc percentage</th>";
echo "<th>sslc percentage</th>";	
echo "<th>Ug percentage</th>";
echo "<th>Current percentage</th>";
echo "<th>Department</th>";
			echo"</tr>";
  echo"</thead>";
  echo"<tbody>";
 while( $row = mysql_fetch_row($q))
 {
    echo "<tr><th scope='row'>$row[0]</th>";
	   echo "<th scope='row'>$row[2]</th>";
	     echo "<th scope='row'>$row[59]</th>";
		   echo "<th scope='row'>$row[60]</th>";
		     echo "<th scope='row'>$row[68]</th>";
		     echo "<th scope='row'>$row[74]</th>";
			   if($dep=='office')
			 {
			   echo "<th scope='row'>$dep1</th>";
			 }else
			 {
				 echo "<th scope='row'>$dep</th>";
			 }
	  echo "</tr>";
	  
	
  }
 echo "</tbody>";
echo "</table>";	
}


else if(($dep1=="bsc"))
{
	echo "<center> <b>Student Details<b></center><br><br>";
echo "<table class='table'>";
  echo "<thead class='thead-inverse'>";
    echo "<tr><th>Student Rollno</th>";
	echo "<th>Name</th>";
	echo "<th>Hsc percentage</th>";
echo "<th>sslc percentage</th>";	
echo "<th>Current percentage</th>";
echo "<th>Department</th>";
			echo"</tr>";
  echo"</thead>";
  echo"<tbody>";
 while( $row = mysql_fetch_row($q))
 {
	 
    echo "<tr><th scope='row'>$row[0]</th>";
	   echo "<th scope='row'>$row[2]</th>";
	     echo "<th scope='row'>$row[59]</th>";
		   echo "<th scope='row'>$row[60]</th>";
		     echo "<th scope='row'>$row[72]</th>";
			   if($dep=='office')
			 {
			   echo "<th scope='row'>$dep1</th>";
			 }else
			 {
				 echo "<th scope='row'>$dep</th>";
			 }
	  echo "</tr>";
	  
	
  }
 echo "</tbody>";
echo "</table>";	
}
else if($dep1=="msc")
{
	echo "<center> <b>Student Details<b></center><br><br>";
echo "<table class='table'>";
  echo "<thead class='thead-inverse'>";
    echo "<tr><th>Student Rollno</th>";
	echo "<th>Name</th>";
	echo "<th>Hsc percentage</th>";
echo "<th>sslc percentage</th>";	
echo "<th>Current percentage</th>";
echo "<th>Department</th>";
			echo"</tr>";
  echo"</thead>";
  echo"<tbody>";
 while( $row = mysql_fetch_row($q))
 {
    echo "<tr><th scope='row'>$row[0]</th>";
	   echo "<th scope='row'>$row[2]</th>";
	     echo "<th scope='row'>$row[59]</th>";
		   echo "<th scope='row'>$row[60]</th>";
		     echo "<th scope='row'>$row[75]</th>";
			   if($dep=='office')
			 {
			   echo "<th scope='row'>$dep1</th>";
			 }else
			 {
				 echo "<th scope='row'>$dep</th>";
			 }
	  echo "</tr>";
	  
	
  }
 echo "</tbody>";
echo "</table>";
}
else
{
	if($dep!='office')
	{
echo "<center> <b>Student Details<b></center><br><br>";
echo "<table class='table'>";
  echo "<thead class='thead-inverse'>";
    echo "<tr><th>Student Rollno</th>";
	echo "<th>Name</th>";
	echo "<th>Hsc percentage</th>";
echo "<th>sslc percentage</th>";	
echo "<th>Current percentage</th>";
echo "<th>Department</th>";
			echo"</tr>";
  echo"</thead>";
  echo"<tbody>";
 while( $row = mysql_fetch_row($q))
 {
    echo "<tr><th scope='row'>$row[0]</th>";
	   echo "<th scope='row'>$row[2]</th>";
	     echo "<th scope='row'>$row[59]</th>";
		   echo "<th scope='row'>$row[60]</th>";
		     echo "<th scope='row'>$row[74]</th>";
			   if($dep=='office')
			 {
			   echo "<th scope='row'>$dep1</th>";
			 }else
			 {
				 echo "<th scope='row'>$dep</th>";
			 }
	  echo "</tr>";
	  
	
  }
 echo "</tbody>";
echo "</table>";	
}
}
	
}
else
{
	
echo "<center> <b>Student Details<b></center><br><br>";
echo "<table class='table'>";
  echo "<thead class='thead-inverse'>";
    echo "<tr><th>Student Rollno</th>";
	echo "<th>Name</th>";
	echo "<th>Hsc percentage</th>";
echo "<th>sslc percentage</th>";	
echo "<th>Current percentage</th>";
echo "<th>Department</th>";
			echo"</tr>";
  echo"</thead>";
  echo"<tbody>";
 while( $row = mysql_fetch_row($q))
 {
    echo "<tr><th scope='row'>$row[0]</th>";
	   echo "<th scope='row'>$row[2]</th>";
	     echo "<th scope='row'>$row[59]</th>";
		   echo "<th scope='row'>$row[60]</th>";
		     echo "<th scope='row'>$row[74]</th>";
			   if($dep=='office')
			 {
			   echo "<th scope='row'>$dep1</th>";
			 }else
			 {
				 echo "<th scope='row'>$dep</th>";
			 }
	  echo "</tr>";
	  
	
  }
 echo "</tbody>";
echo "</table>";	
}

?>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
</body>
</html>