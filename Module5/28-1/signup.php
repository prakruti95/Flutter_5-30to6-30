<?php

  include('connect.php');
  
  $name = $_REQUEST["firstname"];
  $email = $_REQUEST["email"];
  $pass = $_REQUEST["password"];
  
  
  if($name=="" && $email=="" && $pass=="")
  {
    echo '0';
  }
  else
  {
    $sql ="insert into test_login(firstname,email,password) values ('$name','$email','$pass')";
    mysqli_query($con,$sql);  
  
  }
  
  


?>