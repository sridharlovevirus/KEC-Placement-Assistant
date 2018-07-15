<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Upload Staff Details</title>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>
<link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Roboto:100,300'>

      <link rel="stylesheet" href="css/style.css">

  
</head>

<body>
<form action="fileup.php" method="post"  enctype="multipart/form-data">
  <div class="upload">
 <div class="upload-files">
  <header>
   <p>
    <i class="fa fa-cloud-upload" aria-hidden="true"></i>
    <span class="up">up</span>
    <span class="load">load</span>
   </p>
  </header>
  <div class="body" id="drop">
   <i class="fa fa-file-text-o pointer-none" aria-hidden="true"></i>
   <p class="pointer-none"><b>Drag and drop</b> files here <br /> or <a href="" id="triggerFile">browse</a> to begin the upload</p>
			<input type="file" multiple="multiple" name="file1">
  </div>
  <footer>
   <div class="divider">
    <span><AR>FILES</AR></span>
   </div>
   <div class="list-files">
    <!--   template   -->
   </div>
			<button class="importar" type="sumbit">Sumbit</button>
  </footer>
 </div>
</div>
  
    <script src="js/index.js"></script>
</form>
</body>
</html>