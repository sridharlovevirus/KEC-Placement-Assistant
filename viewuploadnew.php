<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>view the events</title>
    <style>
	.dropbtn {
    background-color: #4CAF50;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {
    background-color: #3e8e41;
}

td,tr{
	font-family: "Times New Roman", Times, serif;
	font-style: normal;
	font-weight:bold;
}
label{
font-face:fertigo pro;
font-size:18px;
	
}

.formheading{  
font-family: "Times New Roman", Times, serif;
	font-style: normal;
	font-weight:bold;
	font-variant: small-caps;
    background-color:#ccc;  
    color:green;  
    padding:4px;  
    text-align:center;  
}  
input[type=text],select,input[type=date],input [type=number]
{
	width: 230px;
	border: 1px solid #3366FF;
	border-left: 4px solid #3366FF;
	height:28px;
	background-color:#ccc;
}

table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    padding: 5px;
    text-align: left;
    

}
textarea
{
	width: 230px;
	border: 1px solid #3366FF;
	border-left: 4px solid #3366FF;
	background-color:#ccc;
}
fieldset {
  margin: 20px;
  padding: 0 10px 10px;
  border: 1px solid #666;
  border-radius: 8px;
  box-shadow: 0 0 10px #666;
  padding-top: 10px;
  background: #fff;
}
legend {
  padding: 2px 4px;

  /* For better legibility against the box-shadow */
}
fieldset > legend {
  float: left;
  margin-top: -20px;
}
fieldset > legend + * {
  clear: both;
}
	.bt
{
	 color: #6496c8;
  background: rgba(0,0,0,0);
  border: solid 5px #6496c8;
   width: 5em;  height: 3em;
}


</style>
  <!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
  
  <script>
function showUser(str)
{
if (str=="")
{
document.getElementById("txtHint").innerHTML="";
return;
}

if (window.XMLHttpRequest)
{// code for IE7+, Firefox, Chrome, Opera, Safari
xmlhttp=new XMLHttpRequest();
}
else
{// code for IE6, IE5
xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
}



xmlhttp.onreadystatechange=function()
{
if (xmlhttp.readyState==4 && xmlhttp.status==200)
{
document.getElementById("subcat").innerHTML=xmlhttp.responseText;
}
}
xmlhttp.open("GET","viewupload.php?q="+str,true);
xmlhttp.send();
}
</script>

  
  
</head>

<body>
 
      <form method="post">


      <center><h1 class="formheading">Attachments</center></h1>
	  <fieldset>
	  <center><label>Select the topic:</label></center><a href="new_topic.php" align="right">Back</a>
	  <br><center>

	  <select name="Topic" class="option3" style="width:220px;" onChange="showUser(this.value)"><option size=30></option>
<option value="Programming">Programming languages:c,c++,java,etc</option>
<option value="Subjects">Subjects</option>
<option value="Gd">GD related</option>
<option value="Apps">Apps</option>
</select></center>
	  <p name="subcat" id="subcat"></p>
	 </fieldset>
	  
	  
	     
</body>
</html>