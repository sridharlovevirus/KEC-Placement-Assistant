 <?php  
 $connect = mysqli_connect("localhost", "root", "", "kongu");
 if(isset($_POST["postTitle"]) && isset($_POST["postDescription"]))
 {
	 echo "ok";
  $post_title = mysqli_real_escape_string($connect, $_POST["postTitle"]);
  $post_description = mysqli_real_escape_string($connect, $_POST["postDescription"]);
  if($_POST["postId"] != '')  
  {  
    //update post  
	echo "<script>alert('hi')</script>";
    $sql = "UPDATE tbl_post SET post_title = '".$post_title."', post_description = '".$post_description."' WHERE post_id = '".$_POST["postId"]."'";  
    mysqli_query($connect, $sql);  
  }  
  else  
  {  
    //insert post  
	echo "<script>alert('insert')</script>";
    $sql = "INSERT INTO tbl_post(post_title, post_description, post_status) VALUES ('".$post_title."', '".$post_description."', 'draft')";  
    mysqli_query($connect, $sql);  
    echo mysqli_insert_id($connect);  
  }
 }  
 ?>
 