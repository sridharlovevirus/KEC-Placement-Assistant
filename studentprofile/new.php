<?php

session_start();
$user=$_SESSION['user'];
$con=mysql_connect('localhost','root','');
mysql_select_db('kongu');

$s="select finish from studentpersonal where rollno='$user'";
	$qo=mysql_query($s);
		$row=mysql_fetch_array($qo);
		if($row['finish']==1)
		{	echo "<script>alert('forbidden access')</script>";
	echo "<b><center>Forbidden Access</center></b>";
	echo "<center><br><br><b>You Cannot Edit your Information</b></br>";
	echo "<br><l>Contact:Your department Staff</l></center>";
			header('Refresh:3 url=index.php');
		
		exit();
		}
		
if(isset($_POST['save']))
{ $rollno=$_SESSION['user'];
	$fname=$_POST['fname'];
	$occ=$_POST['occupation'];
	$dob=$_POST['dob'];
	$gender=$_POST['gender'];
	$mobile=$_POST['mobile'];
	$mail=$_POST['mail'];
	$add1=$_POST['add1'];
	$add2=$_POST['add2'];
	$add3=$_POST['add3'];
	$state=$_POST['state'];
	$caste=$_POST['caste'];
	$day=$_POST['day'];
	$pin=$_POST['pin'];
	$language=$_POST['language'];
	$skills=$_POST['skills'];
	$phy=$_POST['phy'];
	$claim=$_POST['claim'];
	$gap=$_POST['gap'];
	$claim1=$_POST['claim1'];
	$my="select rollno from studentpersonal where rollno='$user'";
$r1=mysql_query($my,$con);
  $rowcount=mysql_num_rows($r1);
  if($rowcount==0)
  {
	 $sql="insert into studentpersonal values('$rollno','$fname','$occ','$dob','$gender','$mobile','$mail','$add1','$add2','$add3','$state','$caste','$day','$pin','$language','$skills','$phy','$claim','$gap','$claim1','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',0)";
	mysql_query($sql,$con);
	echo mysql_error($con);
	 echo "<script>alert('Data saved!!')</script>";
	 	header('Location: test1.php');
  }
  else
  {
	 $s="update studentpersonal set fathername='$fname',occupation='$occ',dob='$dob',gender='$gender',mobileno='$mobile',mail='$mail',streetname='$add1',villagename='$add2',cityname='$add3',statename='$state',caste='$caste',comefrom='$day',pincode='$pin',language='$language',skills='$skills',pys='$phy',pysreason='$claim',edugap='$gap',edureason='$claim1' where rollno='$rollno'";
mysql_query($s,$con);
echo mysql_error($con);  
	 echo "<script>alert('Data updated!!')</script>";
	 	header('Location: test1.php');
  }
}

?>




<!DOCTYPE html>
<html>

<head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  <!-- Optional theme -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <!-- Latest compiled and minified JavaScript -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  <script src="boot/js/validator.js"></script>
  <script type="text/javascript">
    function playVideo(a)
    {
	var a=document.getElementById('gap').value;
	if(a=="yes"){
        document.myForm.claim1.style.visibility='visible';
}
else
{
document.myForm.claim1.style.visibility='hidden';
}	
}
function playVideo1(a)
    {
	var a1=document.getElementById('phy').value;
	if(a1=="yes"){
        document.myForm.claim.style.visibility='visible';
}
else
{
document.myForm.claim.style.visibility='hidden';
}	
		}
  </script>
</head>

<body class="bg-primary w-100 h-100 border border-dark text-danger">
  <br>
  <br>
  <div class="container">
    <div class="row clearfix" id="content-row">
      <div class="col-xs-16 column">
        <div class="well well-lg">
          <center>
            <h2 class="text-primary">Personal Details</h2>
          </center>
          <hr>
          <br>
          <br>
          <form role="form" data-toggle="validator" name="myForm" class="text-warning"  method="post">
            <div class="form-group">
              <div class="form-group has-feedback"> <label for="fname" class="control-label"><b>Enter your father name:</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
	  
      <input type="text" pattern="[a-zA-Z \.]{3,20}" class="form-control" name="fname" id="fname" placeholder="Father name" required="">
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div><b>
  
  <div class="form-group has-feedback">
    <label for="fname" class="control-label"><b>Enter your father Occupation:</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-briefcase"></i></span>
	  
      <input type="text" pattern="[a-zA-Z \.]{3,20}" class="form-control" name="occupation" id="occupation" placeholder="Father Occupation" required="">
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div><b>
  
    <div class="form-group has-feedback">
    <label for="fname" class="control-label"><b>Select Your Date Of Birth:</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
	  
      <input type="date" class="form-control" name="dob" id="dob" placeholder="Date Of Birth" required="">
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div><b>
  <div class="form-group has-feedback">
    <label for="gender" class="control-label"><b>Select Your gender:</b></label><b>
    <br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="radio" name="gender" id="gender" value="male" required="">Male<br><br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <input type="radio" name="gender" id="gender" value="female" required="">Female
   
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div><b>
  
  
    <div class="form-group has-feedback">
    <label for="mobile" class="control-label"><b>Enter your mobile no:</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
	  
      <input type="text" pattern="^[7-9]{1}[0-9]{9}" class="form-control" name="mobile" id="mobile" placeholder="Mobile No" required="">
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div><b>
  
  
   <div class="form-group has-feedback">
    <label for="inputTwitter" class="control-label"><b>Enter your mail id:</b></label><b>
    <div class="input-group">
      <span class="input-group-addon">@</span>
	  
      <input type="email" class="form-control" name="mail" id="inputEmail" placeholder="Email" required="">
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div><b>
  
  
  
     <div class="form-group has-feedback">
    <label for="add1" class="control-label"><b>Enter the Door no,street name:</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-font"></i></span>
	  
      <input type="text" pattern="[0-9 a-zA-Z \.]+" class="form-control" name="add1" id="add1" placeholder="Street name" required="">
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div><b>
  
    
     <div class="form-group has-feedback">
    <label for="add2" class="control-label"><b>Enter the village name:</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-font"></i></span>
	  
      <input type="text" pattern="[a-zA-Z \.]+" class="form-control" name="add2" id="add2" placeholder="Village name" required="">
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div><b>
  
   <div class="form-group has-feedback">
    <label for="add3" class="control-label"><b>Enter the city name:</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
	  
      <input type="text" pattern="[a-zA-Z]+" class="form-control" name="add3" id="add3" placeholder="City name" required="">
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div><b>
  
   <div class="form-group has-feedback">
   
    <label for="state" class="control-label"><b>Select your state:</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
	  
      <select class="form-control" name="state" id="state" placeholder="State Name" required="">
	  <option></option>
	  <option value="Tamilnadu">Tamilnadu</option>
	  <option value="Andhra Pradesh">Andhra Pradesh</option>
	    <option value="Arunachal Pradesh">Arunachal Pradesh</option>
		  <option value="Assam">Assam</option>
		    <option value="Bihar">Bihar</option>
			  <option value="Goa">Goa</option>
			    <option value="Gujarat">Gujarat</option>  
				<option value="Haryana">Haryana</option>
				  <option value="Himachal Pradesh">Himachal Pradesh</option>
				    <option value="Jammu &amp; Kashmir">Jammu &amp; Kashmir</option>
					  <option value="Karnataka">Karnataka</option>
					    <option value="Kerala">Kerala</option>
						  <option value="Madhya Pradesh">Madhya Pradesh</option>
						    <option value="Maharashtra">Maharashtra</option>
							  <option value="Manipur">Manipur</option>
							    <option value="Meghalaya">Meghalaya</option>
								  <option value="Mizoram">Mizoram</option>
								    <option value="Nagaland">Nagaland</option>
									  <option value="Orissa">Orissa</option>
									    <option value="Punjab">Punjab</option>
										  <option value="Rajasthan">Rajasthan</option>
										    <option value="Sikkim">Sikkim</option>
											  <option value="Tripura">Tripura</option>
											    <option value="Uttar Pradesh">Uttar Pradesh</option>
												  <option value="West Bengal">West Bengal</option>
												    <option value="Chhattisgarh">Chhattisgarh</option>
								
								<option value="Uttarakhand">Uttarakhand</option> 
								<option value="Jharkhand">Jharkhand</option>
								  <option value="Telangana">Telangana</option>
								    <option value="Puducherry">Puducherry</option>
									  <option value="Lakshadweep">Lakshadweep</option>
									    <option value="Daman &amp; Diu">Daman &amp; Diu</option>  <option value="Dadra &amp; Nagar Haveli">Dadra &amp; Nagar Haveli</option>
										  <option value="Chandigarh">Chandigarh</option>
										    <option value="Andaman &amp; Nicobar Islands">Andaman &amp; Nicobar Islands</option>
											  <option value="Delhi">Delhi</option>
										
	  </select>
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div><b>

  </b></b>
  </b>
  </b>
  </b>
  </b>
  </b>
  </b>
  </b>
  </b>
  </div><b><b><b>
  
  
  
  
  
  
  
   <div class="form-group has-feedback">
   
    <label for="caste" class="control-label"><b>Select your caste:</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-book"></i></span>
	  
      <select class="form-control" name="caste" id="caste" placeholder="Caste" required="">
	  <option></option>
	  <option value="BC">BC</option>
	  <option value="MBC">MBC</option>
	    <option value="OC">OC</option>
		  <option value="SC/ST">SC/ST</option>
		
										
	  </select>
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div><b>

  
   <div class="form-group has-feedback">
   
    <label for="day" class="control-label"><b>Dayschooler/Hostel</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-sort-by-order-alt"></i></span>
	  
      <select class="form-control" name="day" id="day" required="">
	  <option></option>
	  <option value="Dayschooler">Dayschooler</option>
	  <option value="Hostel">Hostel</option>
	 
		
										
	  </select>
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div><b>
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
   <div class="form-group has-feedback">
    <label for="pin" class="control-label"><b>Enter the pincode:</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-inbox"></i></span>
	  
      <input type="text" pattern="^[6]{1}[0-9]{5}" class="form-control" name="pin" id="pin" placeholder="Pincode" required="">
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div><b>
  
     <div class="form-group has-feedback">
    <label for="language" class="control-label"><b>Language Kown?</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-road"></i></span>
	  
      <input type="text" pattern="[a-z , A-Z]+" class="form-control" name="language" id="language" placeholder="language" required="">
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div><b>
  
   <div class="form-group has-feedback">
    <label for="skills" class="control-label"><b>Enter your extra skills:</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-stats"></i></span>
	  
      <input type="text" pattern="[a-zA-Z]+" class="form-control" name="skills" id="skills" placeholder="skills" required="">
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div><b>
  
  
   <div class="form-group has-feedback">
   
    <label for="phy" class="control-label"><b>Physically changed?</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-question-sign"></i></span>
	  
      <select class="form-control" name="phy" id="phy" onchange="playVideo1(this)" required="">
	  <option></option>
	  <option value="yes">Yes</option>
	  <option value="no">No</option>
	 
		
										
	  </select>
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div><b>
  <textarea class="form-control" name="claim" style="visibility:hidden;" rows="5" cols="15" placeholder="GIVE REASON"></textarea>
  
  
  
  
  
  
   
   <div class="form-group has-feedback">
   
    <label for="gap" class="control-label"><b>Education Gap?</b></label><b>
    <div class="input-group">
   <span class="input-group-addon"><i class="glyphicon glyphicon-question-sign"></i></span>
	  
      <select class="form-control" name="gap" id="gap" onchange="playVideo(this)" required="">
	  <option></option>
	  <option value="yes">Yes</option>
	  <option value="no">No</option>
	 
		
										
	  </select>
    </div>
    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
    <div class="help-block with-errors"></div>
  </b></div><b>
  <textarea class="form-control" name="claim1" style="visibility:hidden;" rows="5" cols="15" placeholder="GIVE REASON"></textarea>
  
  </b></b>
  </b>
  </b>
  </b>
  </b>
  </b>
  </b>
  </b>
  </b>  <center><h5>Note:</h5><h6>Must save values and move to next page if you not press save button means no value is saved!!</h6></center>
  <center><button type="submit" class="btn btn-info" name="save">Save</button>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="test1.php" class="btn btn-danger">Next</a></center></form>
  </div><b><b><b>
  </b></b>
  </b>
  </div><b><b><b>

</b></b>
  </b>
  </div><b><b><b>
</b></b>
  </b>
  </div><b><b><b>



</b></b>
  </b>
</body>

</html>