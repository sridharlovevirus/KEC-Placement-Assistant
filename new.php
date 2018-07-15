<html>
<head>
<script>

    var childWindow = "new.html";
    var newTabUrl="new.php";

   

    function refreshExistingTab(){
        childWindow.location.href=childWindow;
		alert("hi");
    }

</script>
</head>
<body>
<?php
echo "<script type='text/javascript'>refreshExistingTab()</script>";
?>
</body>
</html>