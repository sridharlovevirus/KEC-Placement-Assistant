<html>  
      <head>  
           <meta name="viewport" content="initial-scale=1.0, user-scalable=no">  
           <meta charset="utf-8">  
           <title>Kongu Engineering college</title>  
           <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  
      </head>  
      <body>  
	  <form action="" method="post">
           <div class="container">  
                <br />  
                <h2 align="center">Request For Edit Acadamic Details</h2>  
                <br />  
            
                <div class="form-group">  
                     <label>Enter the reason for Editing data:</label>  
                     <textarea name="d" id="d" rows="6" class="form-control"></textarea>  
                </div>
    <div class="form-group">
    
<center>	<button type="submit" name="r" class="btn btn-info">Request</button>
	
	 <a href="../index.php">  <button type="button" name="c" class="btn btn-warning">Cancel</button></a>
    </div>
                <div class="form-group">  
                     <input type="hidden" name="post_id" id="post_id" />  
                     <div id="autoSave"></div>  
                </div>  
           </div>  
		   </form>
      </body>  
 </html>  
 <?php
 session_start();
 if(isset($_POST['r']))
 {
	 $sub="Request For Change Personal Details";
	 $roll=$_SESSION['user'];
	 $d=$_POST['d'];
	 $t=date("d/m/y h:i:sa");

	 mysql_connect('localhost','root','');
	 mysql_select_db('kongu');
	 $rq="select rollno from request where rollno='$roll'";
	 $u=mysql_query($rq);
	 $count=mysql_num_rows($u);
	 if($count==0)
	 {
	 $ro="insert into request values('$roll','$d','$t')";
	 }
	 else
	 {
		 $ro="update request set reason='$d',time='$t' where rollno='$roll'";
	 }
	 mysql_query($ro);
	 $dep=$_SESSION['dep'];
	 $t1="select mailid from login where additionalrole='placement'";
	 $ry=mysql_query($t1);
	 $row1=mysql_fetch_array($ry);
	 $mail=$row1['mailid'];
	 
	 $d="Reason for change data is:".$d;
	 	 $t=date("d/m/y h:i:sa");
		 $id=rand(11111,99999);
		 $att="http://localhost/admin/requestedit.php?request=1";
		
	 $mailr="insert into mail values('$roll','$sub','$mail','$d','$att','$t','$id',0)";
	
	mysql_query($mailr);
	
	 	 echo "<script>alert('request submited')</script>";
	 echo "<b><h1><center>Thank you for your request</center></h1></b>";
header('Refresh:1; url=../index.php');
 }
 ?>