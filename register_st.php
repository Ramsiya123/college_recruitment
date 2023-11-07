<?php
include 'connect.php';
    $fname=$_POST['fname'];
        $lname=$_POST['lname'];
        $email=$_POST['email'];
        $password=$_POST['password'];
        $dob=$_POST['dob'];
        $phone=$_POST['phone'];
        $role=$_POST['type'];
        // if ($con->connect_error) {
        //     die('Could not connect to the database.');
        // } else {
        //     echo "connection Ok";

            $sql1 = mysqli_query($con,"INSERT INTO login_tb(email,password,role)values('$email','$password','$role')");
           $user_id = mysqli_insert_id($con);
            $sql2 = mysqli_query($con,"INSERT INTO student_details(fname,lname,dob,phone,login_id) values ('$fname','$lname','$dob','$phone','$user_id')");
            if ($sql1 && $sql2) {
                $my_array['result']="success";

            } else {
                $my_array['result']="Failed";
                
            }
            echo json_encode($my_array);
        

?>