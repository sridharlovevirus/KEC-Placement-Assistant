<!DOCTYPE html>
<?php
session_start();
include 'db.php';
$dep=$_SESSION['dep'];
$role=$_SESSION['role'];
if(isset($_POST['delete']))
{
$id1=$_GET['id'];
$d="delete from mail where id='$id1'";
mysql_query($d);

echo "<script>alert('mail delete')</script>";
header('Refresh:0; url=mailbox.php');
}

$user=$_SESSION['user'];
$query="select * from login where id='$user'";
						 $q=mysql_query($query);
						 $n=mysql_num_rows($q);
						 $row = mysql_fetch_array($q);
						 $db=$row[8];
						 $mailid=$row[4];
						 $id=$_GET['id'];
						 if(isset($_SESSION['user']))
						 {
						 }
						 else
						 {
							 header('Refresh: 0;url=index.php');
						 }
						
							 
									if($_GET['s']==0)
									{
								
						 $r="update mail set mailread=1 where id='$id'";
						 mysql_query($r);
						
						 	
								}
								else
								{
							
								}
								
						 $r2="select mailread from mail where mailread=0 and r='$mailid'";
						 $result=mysql_query($r2);
				       $count1=mysql_num_rows($result);
					  
						 $q1="select * from mail where id='$id'";
						 $q2=mysql_query($q1);
						 $row1= mysql_fetch_array($q2);
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

  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
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
              <?php echo "<img src='$db' class='user-image'>"; ?>
              <span class="hidden-xs"><?php echo $_SESSION['user']; ?></span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <?php echo"<img src='$db' class='img-circle'>";

                echo "<p>".$_SESSION['user'];
				?>
  
                
                </p>
              </li>
              <!-- Menu Body -->
              <li class="user-body">
                <div class="row">
                  <div class="col-xs-4 text-center">
                    <a href="#">Followers</a>
                  </div>
                  <div class="col-xs-4 text-center">
                    <a href="#">Sales</a>
                  </div>
                  <div class="col-xs-4 text-center">
                    <a href="#">Friends</a>
                  </div>
                </div>
                <!-- /.row -->
              </li>
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left">
                  <a href="#" class="btn btn-default btn-flat">Profile</a>
                </div>
                <div class="pull-right">
                  <a href="#" class="btn btn-default btn-flat">Sign out</a>
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
  <form action="" method="post">

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
	  <?php
if(isset($_GET['s']))
{
	if($_GET['s']==0)
	{
	echo "Inbox";
	}
	else
	{
		echo "Outbox";
	}
}
		?>
      </h1>
      <ol class="breadcrumb">
        <li><a href="index.php"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Mailbox</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-md-3">
          <a href="compose.php" class="btn btn-primary btn-block margin-bottom">Compose</a>

          <div class="box box-solid">
            <div class="box-header with-border">
              <h3 class="box-title">Folders</h3>

              <div class="box-tools">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
              </div>
            </div>
            <div class="box-body no-padding">
              <ul class="nav nav-pills nav-stacked">
                <li><a href="mailbox.php"><i class="fa fa-inbox"></i> Inbox
                  <span class="label label-primary pull-right"><?php echo $count1; ?></span></a></li>
                <li><a href="mailsent.php"><i class="fa fa-envelope-o"></i> Sent</a></li>
              <?php
if($role=='staff' || $role=='hod' || $role=='student')
{
			  echo "<li><a href='groupmail.php?dept=$dep'><i class='fa fa-bullhorn'></i> Group Mail</a></li>"; 
}
			  ?>
              </ul>
            </div>
            <!-- /.box-body -->
          </div>
         
          <!-- /.box -->
        </div>
        <!-- /.col -->
        <div class="col-md-9">
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Sent Mail</h3>

           
			
            <!-- /.box-header -->
            <div class="box-body no-padding">
              <div class="mailbox-read-info">
                <?php echo "<h3>Subject: $row1[1]</h3>";
                echo "<h5>Sender:$row1[0]</h5>";
                  echo "<span class='mailbox-read-time pull-right'>Time:$row1[5]</span></h5>";
				  
              echo "</div>";
           
              echo "<div class='mailbox-controls with-border text-center'>";
            
              echo "<div class='mailbox-read-message'>$row1[3]</div>";
			  if($row1[1]=="Request For Change Personal Details")
			  {
				   $denie1="http://localhost/admin/requestedit.php?request=1&rollno=".$row1[0];
				  
			      echo "<div class='mailbox-read-message'><a href='$denie1'>Accecpt</a></div>";
				  $denie="http://localhost/admin/requestedit.php?request=0&rollno=".$row1[0];
				  echo "<div class='mailbox-read-message'><a href='$denie'>Deny</a></div>";
			  }
			  else
				  if($row1[4]!="")
				  {
					   if($row1[4]!="http://localhost/admin/requestedit.php?request=1")
					   {
					 
					  echo "<a href='$row1[4]'><img src='image\az.png' width='50pt' height='50pt'>Attachment</a>";
					   }
				  }
			  ?>
              <!-- /.mailbox-read-message -->
            </div>
            <!-- /.box-body -->
            <div class="box-footer">
              <ul class="mailbox-attachments clearfix">
                <li>
                  
             
                 
                
              </ul>
            </div>
            <!-- /.box-footer -->
            <div class="box-footer">
              <div class="pull-right">
<?php              
if(isset($_GET['s']))
{
if($_GET['s']==0)
{
			 
              echo "</div>";
              echo "<button type='submit' class='btn btn-default' name='delete'><i class='fa fa-trash-o'></i> Delete</button>";
              echo "<button type='button' class='btn btn-default' onclick='window.print()'><i class='fa fa-print'></i> Print</button>";
}
}
			  ?>     
	 </div>
			 <div class="box-body no-padding">
              <ul class="nav nav-pills nav-stacked">
               <li>  
			   <li>
			     <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>     <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>  <li>  
			   <li>
              </ul>
            </div>
            <!-- /.box-footer -->
          </div>
          <!-- /. box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
 
   
  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Create the tabs -->
    <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
      <li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
      <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
    </ul>
    <!-- Tab panes -->
    <div class="tab-content">
      <!-- Home tab content -->
      <div class="tab-pane" id="control-sidebar-home-tab">
        <h3 class="control-sidebar-heading">Recent Activity</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-birthday-cake bg-red"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

                <p>Will be 23 on April 24th</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-user bg-yellow"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Frodo Updated His Profile</h4>

                <p>New phone +1(800)555-1234</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-envelope-o bg-light-blue"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Nora Joined Mailing List</h4>

                <p>nora@example.com</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-file-code-o bg-green"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Cron Job 254 Executed</h4>

                <p>Execution time 5 seconds</p>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

        <h3 class="control-sidebar-heading">Tasks Progress</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Custom Template Design
                <span class="label label-danger pull-right">70%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Update Resume
                <span class="label label-success pull-right">95%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-success" style="width: 95%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Laravel Integration
                <span class="label label-warning pull-right">50%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-warning" style="width: 50%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Back End Framework
                <span class="label label-primary pull-right">68%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-primary" style="width: 68%"></div>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

      </div>
      <!-- /.tab-pane -->
      <!-- Stats tab content -->
      <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
      <!-- /.tab-pane -->
      <!-- Settings tab content -->
      <div class="tab-pane" id="control-sidebar-settings-tab">
        <form method="post">
          <h3 class="control-sidebar-heading">General Settings</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Report panel usage
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Some information about this general settings option
            </p>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Allow mail redirect
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Other sets of options are available
            </p>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Expose author name in posts
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Allow the user to show his name in blog posts
            </p>
          </div>
          <!-- /.form-group -->

          <h3 class="control-sidebar-heading">Chat Settings</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Show me as online
              <input type="checkbox" class="pull-right" checked>
            </label>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Turn off notifications
              <input type="checkbox" class="pull-right">
            </label>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Delete chat history
              <a href="javascript:void(0)" class="text-red pull-right"><i class="fa fa-trash-o"></i></a>
            </label>
          </div>
          <!-- /.form-group -->
        </form>
      </div>
      <!-- /.tab-pane -->
    </div>
  </aside>
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
</form>
<!-- ./wrapper -->

<!-- jQuery 3 -->
<script src="../../bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="../../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- Slimscroll -->
<script src="../../bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="../../bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../dist/js/demo.js"></script>
</body>
</html>
