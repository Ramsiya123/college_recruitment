<?php 
$con= new mysqli('localhost','root','','college_recruitmnt_db');
//  if($con->connect_error){
//     die("Connection Failed".$con->connect_error);
//   }
  
if($con){
    echo("success");
}
else{
    echo("failed");
}
?>