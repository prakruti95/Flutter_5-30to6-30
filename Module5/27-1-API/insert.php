<?php

  include('connect.php');
  
  $name = $_REQUEST["name"];
  $surname = $_REQUEST["surname"];
  $email = $_REQUEST["email"];
  $pass = $_REQUEST["password"];
  
  
  if($name=="" && $surname=="" && $email=="" && $pass=="")
  {
    echo '0';
  }
  else
  {
    $sql ="insert into test8(name,surname,email,password) values ('$name','$surname','$email','$pass')";
    mysqli_query($con,$sql);  
  
  }
  
  


?>