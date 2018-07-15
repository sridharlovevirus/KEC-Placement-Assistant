<?php
session_start();
include 'db.php';
$user=$_SESSION['user'];
$query="select * from login where id='$user'";
						 $q=mysql_query($query);
						 $n=mysql_num_rows($q);
						 $row = mysql_fetch_array($q);
						 $_SESSION['dp']=$row[8];
						 $dp=$row[8];
						 $mb=$row[7];
						 $em=$row[10];
						 $_SESSION['mail']=$row[4];
						 $_SESSION['ph']=$row[7];
						 $_SESSION['name']=$row[2];
						 $_SESSION['id']=$row[0];
						 if(isset($_SESSION['user']))
						 {
						 }
						 else
						 {
							 header('Refresh: 0;url=index.php');
						 }
?>
<html>
<head> 
  <style>
  /* Base styles */
*, *:after, *:before {
  box-sizing: border-box;
}
html {
  font-size: 100%;
  line-height: 1.5;
  height: 100%;
}

body {
  position: relative;
  margin: 0;
  font-family: 'Work Sans', Arial, Helvetica, sans-serif;
  min-height: 100%;
  background: linear-gradient(to bottom, #68EACC 0%, #497BE8 100%);
  color: #777;
}
img {
  vertical-align: middle;
  max-width: 100%;
}
button {
  cursor: pointer;
  border: 0;
  padding: 0;
  background-color: transparent;
}

.container {
  position: absolute;
  width: 24em;
  left: 50%;
  top: 50%;
  transform: translate(-50%,-50%);
  animation: intro .7s cubic-bezier(0.175, 0.885, 0.32, 1.275) forwards;
}

/* Profile Card */
.profile {
  position: relative;
}
.profile--open {
}
.profile--open .profile__form {
  visibility: visible;
  height: auto;
  opacity: 1;
  transform: translateY(-6em);
  padding-top: 12em;
}
.profile--open .profile__fields {
  opacity: 1;
  visibility: visible;
}
.profile--open .profile__avatar {
  transform: translate(-50%, -1.5em);
  border-radius: 50%;
}
.profile__form {
  position: relative;
  background: white;
  visibility: hidden;
  opacity: 0;
  height: 0;
  padding: 3em;
  border-radius: .25em;
  -webkit-filter: drop-shadow(0 0 2em rgba(0,0,0,0.2));
  transition: 
    opacity .4s ease-in-out,
    height .4s ease-in-out,
    transform .4s cubic-bezier(0.175, 0.885, 0.32, 1.275),
    padding .4s cubic-bezier(0.175, 0.885, 0.32, 1.275);
}
.profile__fields {
  opacity: 0;
  visibility: hidden;
  transition: opacity .2s cubic-bezier(0.175, 0.885, 0.32, 1.275);
}
.profile__avatar {
  position: absolute;
  z-index: 1;
  left: 50%;
  transform: translateX(-50%);
  border-radius: 1.25em;
  overflow: hidden;
  width: 4.5em;
  height: 4.5em;
  display: block;
  transition: transform .3s cubic-bezier(0.175, 0.885, 0.32, 1.275);
  will-change: transform;
}
.profile__avatar:focus {
  outline: 0;
}
.profile__footer {
  padding-top: 1em;
}


/* Form */
.field {
  position: relative;
  margin-bottom: 2em;
}
.label {
  position: absolute;
  height: 2rem;
  line-height: 2rem;
  bottom: 0;
  color: #999;
  transition: all .3s cubic-bezier(0.175, 0.885, 0.32, 1.275);
}
.input {
  width: 100%;
  font-size: 100%;
  border: 0;
  padding: 0;
  background-color: transparent;
  height: 2rem;
  line-height: 2rem;
  border-bottom: 1px solid #eee;
  color: #777;
  transition: all .2s ease-in;
}
.input:focus {
  outline: 0;
  border-color: #ccc;
}

/* Using required and a faux pattern to see if input has text from http://stackoverflow.com/questions/16952526/detect-if-an-input-has-text-in-it-using-css */
.input:focus + .label,
input:valid + .label {
  transform: translateY(-100%);
  font-size: 0.75rem;
  color: #ccc;
}

/* Button */
.btn {
  border: 0;
  font-size: 0.75rem;
  height: 2.5rem;
  line-height: 2.5rem;
  padding: 0 1.5rem;
  color: white;
  background: #8E49E8;
  text-transform: uppercase;
  border-radius: .25rem;
  letter-spacing: .2em;
  transition: background .2s;
}
.btn:focus {
  outline: 0;
}
.btn:hover,
.btn:focus {
  background: #A678E2;
}
.btn1 {
  border: 0;
  font-size: 0.75rem;
  height: 2.5rem;
  line-height: 2.5rem;
  padding: 0 1.5rem;
  color: white;
  background: #FF0000;
  text-transform: uppercase;
  border-radius: .25rem;
  letter-spacing: .2em;
  transition: background .2s;
}
.btn1:focus {
  outline: 0;
}
.btn1:hover,
.btn1:focus {
  background: #FF00F0;
}
.btn2 {
  border: 0;
  font-size: 0.75rem;
  height: 2.5rem;
  line-height: 2.5rem;
  padding: 0 1.5rem;
  color: white;
  background: #0000FF;
  text-transform: uppercase;
  border-radius: .25rem;
  letter-spacing: .2em;
  transition: background .2s;
}
.btn2:focus {
  outline: 0;
}
.btn2:hover,
.btn2:focus {
  background: #FF00F0;
}



/* Intro animation */
@keyframes intro {
  from {
    opacity: 0;
    top: 0;
  }
  
  to {
    opacity: 1;
    top: 50%;
  }
}
body {
  background: #2d2d37;
}
a {
  color: white;
  text-decoration: none;
}
.arrow {
  text-align: center;
  margin: 8% 0;
}
.bounce {
  -webkit-animation: bounce 2s infinite;
  animation: bounce 2s infinite;
}
@-webkit-keyframes bounce {
  0%,
  20%,
  50%,
  80%,
  100% {
    -webkit-transform: translateY(0);
            transform: translateY(0);
  }
  40% {
    -webkit-transform: translateY(-30px);
            transform: translateY(-30px);
  }
  60% {
    -webkit-transform: translateY(-15px);
            transform: translateY(-15px);
  }
}
@keyframes bounce {
  0%,
  20%,
  50%,
  80%,
  100% {
    -webkit-transform: translateY(0);
            transform: translateY(0);
  }
  40% {
    -webkit-transform: translateY(-30px);
            transform: translateY(-30px);
  }
  60% {
    -webkit-transform: translateY(-15px);
            transform: translateY(-15px);
  }
}
  </style>
   
  </head>
<body>
<!--Google Font - Work Sans-->
<link href='https://fonts.googleapis.com/css?family=Work+Sans:400,300,700' rel='stylesheet' type='text/css'>
 

<br><br>
  <div class="profile">
    <button class="profile__avatar" id="toggleProfile">
    <?php echo "<img src='$dp' alt='Avatar'>"; ?>
    </button>
	
<a name="#e">
    <div class="profile__form">
	
	<form action="updateprofiledb1.php" method="post">
      <div class="profile__fields">
        <div class="field">
          <input type="password" id="fieldUser" class="input" name="pass" id="password" required>
          <label for="fieldUser" class="label">Password</label>
        </div>
        <div class="field">
          <input type="password" id="fieldPassword" class="input" name="pass1" id="confirm_password" required />
          <label for="fieldPassword" class="label">Conform Password</label>
        </div>
		   <div class="profile__fields">
        <div class="field">
          <input type="email" id="fieldUser" class="input" name="em" value="<?php if($em!='')echo $em; else echo ''; ?>" required>
          <label for="fieldUser" class="label"><?php if($em!='') echo $em; else echo "Email ID";
		  ?></label>
        </div>
        <div class="field">
          <input type="text" id="fieldPassword" class="input" name="mb" placeholder="Mobile number" value="<?php echo $mb; ?>" required pattern="((9[0-9]{9})|(8[0-9]{9})|(7[0-9]{9}))" />
          <label for="fieldPassword" class="label">
		  </label>
        </div>

        <div class="profile__footer">
		
        <center>  <button class="btn" type="submit">UPDATE</button>
		  </form>
		  </form>

        </div>
		
      </div>
     </div>
	<center><a href="profileupload.php"><button class="btn2">Click Change Profile Image</button></a> <a href="profile.php">
		   
			   <button  class="btn1">Cancel</button></a> 
	 <p>Note: Only Edit You want change plz d'not edit Another Values</p>
	 <?php


						 if(isset($_SESSION['error']))
						 {
							 if($_SESSION['error'])
							 {
								echo " <div class='alert alert-danger alert-dismissable'>";
    echo "<a href='#' class='close' data-dismiss='alert' aria-label='close'>×</a>";
   echo "<strong>Error</strong> Password MisMatch!!!</div>";
   
							 }
						 }
?>
  </div>
</div>
   <script src="form.js"></script>
 <div class="arrow bounce">
 <center><p>^^</p><b><font color="White"><p>^^</p>Click Image to Edit profile</b></center>
  <a class="fa fa-arrow-down fa-2x" href="#e">VV</a>
  <h1>VV</h1>
  <?php


						 if(isset($_SESSION['error']))
						 {
							 if($_SESSION['error'])
							 {
								echo " <div class='alert alert-danger alert-dismissable'>";
    echo "<a href='#' class='close' data-dismiss='alert' aria-label='close'>×</a>";
   echo "<strong>Error</strong> Password MisMatch!!!</div>";
   
							 }
						 }
?>
  
</div> 

   </body>
</html>
