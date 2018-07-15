<?php
header('Refresh:15');
error_reporting(0);
session_start();
$no=$_SESSION['user'];
include 'db.php';
$user=$_SESSION['user'];
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

$q1="select * from mail where r='$mail'";
$q2=mysql_query($q1);
$c=mysql_num_rows($q2);
if($c==0)
{
	//echo "<script>alert('no new available mail')</script>";
	$_SESSION['mh']=0;
	}
	$rr="select * from mail where sender='$user'";
	$rr2=mysql_query($rr);
	
	
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
        <li class="active">OutBox</li>
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
                  <span class="label label-primary pull-right"><?php echo $count1 ?></span></a></li>
                <li class="active"><a href="mailsent.php"><i class="fa fa-envelope-o"></i> Sent</a></li>
                
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
              <h3 class="box-title">Outbox</h3>

             
              <!-- /.box-tools -->
            </div>
            <!-- /.box-header -->
            <div class="box-body no-padding">
            
                <div class="btn-group">
                 
                 
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
				  while($row3=mysql_fetch_row($rr2))
				  {
                  echo "<tr>";
                    echo "<td><input type='checkbox'></td>";
                  
                    echo "<td class='mailbox-name'><a href='readmail.php?id=$row3[6]&s=1'>$row3[0]</a></td>";
                    echo "<td class='mailbox-subject'><b>$row3[1]</b>	
                    </td>";
                    echo "<td class='mailbox-attachment'>$row3[2]</td>";
                   echo "<td class='mailbox-date'>$row3[3]</td></tr>";
				  }
				 ?>
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