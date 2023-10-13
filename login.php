
<?php
include('connect.php');

 if(!$db){
    echo "Database connection failed";

 }

 $username=$_POST['username'];
 $password=$_POST['password'];

 $sql="SELECT * FROM login WHERE  username=".$username." AND password=".$password."";
 $result=mysqli_query($db,$sql);
 $count=mysqli_num_rows($result);

 if($count==1){
    echo json_encode('error');
 }
 else{
    $insert="INSERT INTO login(username,password) VALUES('".$username."','".$password."')";
    $query=mysqli_query($db,$insert);
    if($query){
        echo json_encode("Success");
    }
 }
