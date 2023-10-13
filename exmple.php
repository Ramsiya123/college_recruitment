<?php 
include 'connect.php';
$username=$_POST['username'];
 $password=$_POST['password'];
 $sql1="INSERT into login(username,password) values ($username,$password)";
 $ramz=mysqli_query($con,$sql1);
 if($rams)
 {
    myarray['result']='Sucess';

 }
 else
 {
 $myarray['result']='Failed';
 }
 json_encode($myarray);

?>