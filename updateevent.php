<!DOCTYPE html>
<?php
session_start();
include 'db.php';
$user=$_SESSION['user'];
$query="select * from login where id='$user'";
						 $q=mysql_query($query);
						 $n=mysql_num_rows($q);
						 $row = mysql_fetch_array($q);
						 $db=$row[8];
						 if(isset($_SESSION['user']))
						 {
						 }
						 else
						 {
							 header('Refresh: 0;url=index.php');
						 }
						 $e="select * from event";
						 $er=mysql_query($e);
						 if(isset($_POST['edit']))
						 {
							 $value=$_POST['edit'];
							 
						 }
						 if(isset($_POST['edit']))
						 {
							 $idq=$_POST['edit'];
							 $_SESSION['edit']=1;
							 $_SESSION['editid']=$idq;
							 header('Location:edit.php');
						 }
if(isset($_POST['delete']))
{
	$id=$_POST['delete'];
	$t="select * from event where id='$id'";
	$wet=mysql_query($t);
	$rowe=mysql_fetch_array($wet);
	$dept=$rowe['departments'];
	$sub=$rowe['eventname']."Event Cancelled";
	$des="<br><br><b>The Above Event Was Cancelled By Placement Cell for unexpected issue.<b><br><hr> <i>More details contact your placement co-ordinator</i><br>";
$dept1=explode(",",$dept);
foreach($dept1 as $wo)
{
$ty="select mailid from login where department='$wo'";
	
	$z=mysql_query($ty);
	while($row2=mysql_fetch_array($z))
	{
		$time = date("h:i:sa");
	$mail=$row2[0];
	$ra=rand(11111,99999);
	$samy="insert into mail values('KEC Placement','$sub','$mail','$des','','$time','$ra',0)";
		mysql_query($samy);

	}	
}
	$d="delete from event where id='$id'";
	mysql_query($d);
	//$rrt="insert into mail values('Placement',)";
		echo "<div class='box-body'>
	 <div class='alert alert-success alert-dismissible'>
                <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
                <h4><i class='icon fa fa-check'></i> Alert!</h4>Event Deleted Successfully</div></div>";
			//	print_r($dept1);
			header('Location:updateevent.php');
}
							
							 
 $mailid=$row[4];
						 $_SESSION['dep']=$row[3];
						 if(isset($_SESSION['user']))
						 {
						 }
						 else
						 {
							 header('Refresh: 0;url=index.php');
						 }
						 $r2="select mailread from mail where mailread=0 and r='$mailid'";
						 $result=mysql_query($r2);
				       $count1=mysql_num_rows($result);
$total=$count1;
$q="SELECT `mailid` FROM `login` WHERE id='$user'";
$w=mysql_query($q);
$count=mysql_num_rows($w);
while($row=mysql_fetch_row($w))
{
$mail=$row[0];
}

$q1="select * from mail where r='$mail'";
$q2=mysql_query($q1);
$c=mysql_num_rows($q2);
if($c==0)
{
	//echo "<script>alert('no new available mail')</script>";
	$_SESSION['mh']=0;
	}						 
						 
?>
<html>
<head>
 <link rel="icon" href="c.ico"/>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Kongu Engineering College</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="ionicons-2.0.1/css/ionicons.min.css">
  <!-- jvectormap -->
  <link rel="stylesheet" href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <link rel="stylesheet" href="css/main.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
<link href="css/sample.css" rel="stylesheet">
  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

   <header class="main-header">

    <!-- Logo -->
    <a href="index2.html" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini">Kongu</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b><?php echo $role; ?></b></span>
    </a>

    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="mailbox.php" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
      <!-- Navbar Right Menu -->
            <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Messages: style can be found in dropdown.less-->
          <li class="dropdown messages-menu">
            <a href="mailbox.php" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-envelope-o"></i>
              <span class="label label-success"><?php echo $total; ?></span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">You have <?php echo $total; ?> messages</li>
              <li>
                <!-- inner menu: contains the actual data -->
                
              </li>
              <li class="footer"><a href="mailbox.php">See All Messages</a></li>
            </ul>
          </li>
          <!-- Notifications: style can be found in dropdown.less -->
          
            <ul class="dropdown-menu">
              <li class="header">You have 10 notifications</li>
              <li>
                <!-- inner menu: contains the actual data -->
                <ul class="menu">
                  <li>
                    <a href="#">
                      <i class="fa fa-users text-aqua"></i> 5 new members joined today
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-warning text-yellow"></i> Very long description here that may not fit into the
                      page and may cause design problems
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-users text-red"></i> 5 new members joined
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-shopping-cart text-green"></i> 25 sales made
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-user text-red"></i> You changed your username
                    </a>
                  </li>
                </ul>
              </li>
              <li class="footer"><a href="#">View all</a></li>
            </ul>
          </li>
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <?php echo "<img src='$db' class='user-image' alt='User Image'>";
			  ?>
              <span class="hidden-xs"><?php echo $_SESSION['role']; ?></span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
			  <?php
			  $user=$_SESSION['role'];
			  
                echo"<img src='$db' class='img-circle' alt='User Image'>";
?>
                <p>
                
                </p>
              </li>
              <!-- Menu Body -->
              <li class="user-body">
        <?php
			  $user=$_SESSION['role'];
			  echo "<center><b>".$user."</b></center>";
			  ?>
              </li>
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left">
                  <a href="profile.php" class="btn btn-default btn-flat">Profile</a>
                </div>
                <div class="pull-right">
                  <a href="logout.php" class="btn btn-default btn-flat">Sign out</a>
                </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
          <li>
            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
          </li>
        </ul>
      </div>

    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
<?php           echo "<img src='$db' class='img-circle' alt='User Image'>";
?>
        </div>
        <div class="pull-left info">
          <?php echo "<p>".$_SESSION['user']."</p>"; ?>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <!-- search form -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
     
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Placement Information
   
      </h1>
      <ol class="breadcrumb">
        <li><a href="index.php"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <div id="load">
<div class="loading">
  <div class="loading-bar"></div>
  <div class="loading-bar"></div>
  <div class="loading-bar"></div>
  <div class="loading-bar"></div>
</div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<center><h5><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Loading...</b></h5></center>
</div>

<div id="contents">
       
  <div class="modal modal-warning fade" id="modal-warning">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Update</h4>
              </div>
			  			  <form action="#" method="post">
			<b>Select The Event Type:<br><br>
	<div class="form-group">
	<select name="eventtype" class="form-control" required>
	<option></option>
	<option value="placement">Placement</option>
	<option value="placementtraining">Placement training</option>
	</select>
	</div>
	<br><br>
	  <div class="form-group">
	Enter the Company/Event Name:<br><br>
	<input type="text" class="form-control input-lg" name="eventname" placeholder="Name of the Event" required>
	</div>
	<br><br>
	Select Date:<br><br>
	<input type="date" class="form-control input-lg" name="eventdate" required>
	<br><br>
	How Many Days:<br><br>
	<input type="number" class="form-control input-lg" name="count" required>
	<br><br>
	Select Department:
	<br>
	<br>
	<hr>
	<?php
	while($row1= mysql_fetch_row($q1))
	{
	echo "<input type='checkbox' class='form-check-input' name='i[]' value='$row1[0]'>$row1[0]<hr>";
	}
	?>
	Descirbtion About Event :<br><br>
	<textarea name="d" class="form-control" rows="12" cols="50" placeholder="Example :Place,Time,Eligiblity,more 	"></textarea>

<br><br><br>
Any Attanchment include here:<br><br><Br>
	<input type="file" class="form-control input-lg" name="file" required><br><br><hr>


              
              <div class="modal-footer">

                <button type="submit" class="btn btn-block btn-info">Save</button>
                <button type="button" class="btn btn-block btn-danger btn-flat" data-dismiss="modal" >Close</button>
				
              </div>
			  </form>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>

<br><Br>
<div class="container">

  <div class="row">
<form action="#" method="post">
<div class="col-md-10">
          <div class="box">
            <div class="box-header with-border">
              <h3 class="box-title">Events</h3>
            </div>
            <!-- /.box-header -->
		
            <div class="box-body">
              <table class="table table-bordered">
               
			   <tr>
                  <th style="width: 10px">#</th>
                  <th>Event</th>
                  <th>Describe</th>
                  <th>Edit/Delete</th>
                </tr>
               <?php
while($row11=mysql_fetch_array($er))
{	
			   echo "<tr>";
			   echo "<td>".$row11['id']."</td>";
                  echo "<td>".$row11['eventname']."</td>";
                  echo "<td>".$row11['edesc']."</td>";
                  echo "<td><button name='edit' value=$row11[id] class='btn btn-block btn-info'>Edit</button><button name='delete' value=$row11[id] class='btn btn-block btn-danger btn-flat'>Delete</button></td>";
                    
                echo "</tr>";
}
				?>
				
                
              </table>
            </div>
      
          </div>
		  
    
   

      </div>
	  </form>
    </div>
	
	
	 
  
        </div>
      </div>
    </div>

  </div>
</div>
<!-- Left to right -->
 

<!-- end Right to left -->
	         
<!-- jQuery 2.2.3 -->
<script src="plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="bootstrap/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/app.min.js"></script>
<!-- Sparkline -->
<script src="plugins/sparkline/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- SlimScroll 1.3.0 -->
<script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- ChartJS 1.0.1 -->
<script src="plugins/chartjs/Chart.min.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="dist/js/pages/dashboard2.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<script src="js/imageload.js"></script>
</body>
</html>
