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
                <h2 align="center">Deny For Edit Acadamic Details</h2>  
                <br />  
            
                <div class="form-group">  
                     <label>Enter the reason for deny request:</label>  
                     <textarea name="d" id="d" rows="6" class="form-control"></textarea>  
                </div>
    <div class="form-group">
    
<center>	<button type="submit" name="r" class="btn btn-info">Request</button>
	
	 <a href="../mailbox.php">  <button type="button" name="c" class="btn btn-warning">Cancel</button></a>
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
	 $sub="Dney For Change Personal Details";
	 $roll=$_SESSION['user'];
	 $d=$_POST['d'];
	 $t=date("d/m/y h:i:sa");
$mail=$_SESSION['drollno'];
$mail=$mail."@kongu.edu";
	 mysql_connect('localhost','root','');
	 mysql_select_db('kongu');
	$ir=rand(11111,99999);
		
	 $mailr="insert into mail values('$roll','$sub','$mail','$d','','$t','$ir',0)";
	
	mysql_query($mailr);
	
	 	 echo "<script>alert('reponse submited')</script>";

header('Refresh:1; url=index.php');
 }
 ?>