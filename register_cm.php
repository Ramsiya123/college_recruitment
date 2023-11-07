<?php
include 'connect.php';

$my_array = array(); // Initialize the response array

$cname = $_POST['cname'];
$email = $_POST['email'];
$password = $_POST['password'];
$address = $_POST['address'];
$role = $_POST['type'];

$sql1 = mysqli_query($con, "INSERT INTO login_tb(email, password, role) VALUES ('$email', '$password', '$role')");
//$user_id = mysqli_insert_id($con);
$sql2 = mysqli_query($con, "INSERT INTO company_tb(company_name, address) VALUES ('$cname', '$address')");

if ($sql1&&$sql2) {
    $my_array['result'] = "success";
} else {
    $my_array['result'] = "Failed";
}

echo json_encode($my_array);
?>
