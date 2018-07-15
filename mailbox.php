<?php
header('Refresh:20; url=mailbox.php');
error_reporting(0);
session_start();
$no=$_SESSION['user'];
include 'db.php';
$user=$_SESSION['user'];
$dep=$_SESSION['dep'];
$role=$_SESSION['role'];
$query="select * from login where id='$user'";
						 $q=mysql_query($query);
						 $n=mysql_num_rows($q);
						 $row = mysql_fetch_array($q);
						 $db=$row[8];
						 $mailid=$row[4];
$r2="select mailread from mail where mailread=0 and r='$mailid'";
						 $result=mysql_query($r2);
				       $count1=mysql_num_rows($result);
$total=$count1;
$q="SELECT `mailid` FROM `login` WHERE id='$no'";
$w=mysql_query($q);
$count=mysql_num_rows($w);
while($row=mysql_fetch_row($w))
{
$mail=$row[0];
}
 
$q1="select * from mail where r='$mail' ORDER BY `t` DESC";
//$q="SELECT * FROM `mail` where r='15stf001@kongu.edu' ORDER BY `t` DESC";
$q2=mysql_query($q1);
$c=mysql_num_rows($q2);
if($c==0)
{
	//echo "<script>alert('no new available mail')</script>";
	$_SESSION['mh']=0;
	}
	if(isset($_POST['d']))
	{
	$e=$_POST['item'];
foreach($e as $wo)
{
	$ty="delete from mail where id='$wo'";
	
	mysql_query($ty);
}
	}
?>
<html>
<head></head><body><?php include('template.php');?>
 <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Mailbox
        <small> <?php echo $total; ?> new messages</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="index.php"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Mailbox</li>
      </ol>
    </section>
	<?php
if(isset($_GET['sent']))
{
if($_GET['sent']==1)
{
	//$_GET['sent']=0;
	echo "<div class='box-body'>
	 <div class='alert alert-success alert-dismissible'>
                <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
                <h4><i class='icon fa fa-check'></i> Alert!</h4>
         Mail Successfully Sent !!!
              </div>
			  </div>";
}
}
			  ?>
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
                <li class="active"><a href="mailbox.php"><i class="fa fa-inbox"></i> Inbox
                  <span class="label label-primary pull-right"><?php echo $count1 ?></span></a></li>
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
          <!-- /. box -->
          
           
            <!-- /.box-body -->
         
          <!-- /.box -->
        </div>
        <!-- /.col -->
        <div class="col-md-9">
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Inbox</h3>

             
              <!-- /.box-tools -->
            </div>
            <!-- /.box-header -->
            <div class="box-body no-padding">
            <form action="" method="post">
                <div class="btn-group">
                  <button type="submit" class="btn btn-default btn-sm" name="d"><i class="fa fa-trash-o"></i></button>
                 
                </div>
                <!-- /.btn-group -->
             
                
              </div>
              <div class="table-responsive mailbox-messages">
                <table class="table table-hover table-striped">
                  <tbody>
				  <?php
				  if($_SESSION['mc']==0)
				  {
					  echo "<center>No New Mail.</center>";
				  }
				  $count11=0;
				  $q1="select * from mail where r='$mail' ORDER BY `t` DESC";

                 $q2=mysql_query($q1);
				  while($row=mysql_fetch_row($q2))
				  {
					  $count11=$count11+1;
                  echo "<tr>";
                    echo "<td><input type='checkbox' name='item[]' value='$row[6]'></td>";
                  
                    echo "<td class='mailbox-name'><a href='readmail.php?id=$row[6]&s=0'>$row[0]</a></td>";
                    echo "<td class='mailbox-subject'><b>$row[1]</b>	
                    </td>";
                    echo "<td class='mailbox-attachment'>$row[2]</td>";
                   echo "<td class='mailbox-date'>$row[3]</td></tr>";
				  }
				 ?>
				 </form>
                  </tbody>
                </table>
			
                <!-- /.table -->
              </div>
              <!-- /.mail-box-messages -->
            </div>
            <!-- /.box-body -->
            
                <!-- /.pull-right -->
              </div>
            </div>
          </div>
          <!-- /. box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  </body>
  </html>