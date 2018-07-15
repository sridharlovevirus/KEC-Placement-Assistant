<html>
<head>
<link href="css/forgot.css" rel="stylesheet">
</head>
<body>
<div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->
    <h2 class="active"> Forgot Password </h2>


    <!-- Icon -->
    <div class="fadeIn first">
      <img src="image/userlogo.svg" id="icon" alt="User Icon" />
    </div>

    <!-- Login Form -->
 <form class="login-form" method="post" action="./mail/mail.php">
      <input type="text"  class="fadeIn second" placeholder="Rollno" name="roll">
      <input type="text"  name="mobno" class="fadeIn third" placeholder="Mobile number" >
      <input type="submit" class="fadeIn fourth" value="Check My Details">
    </form>

    <!-- Remind Passowrd -->
    <div id="formFooter">
      <a class="underlineHover" href="index.php">Go to Home</a>
    </div>

  </div>
</div>
</body>
</html>