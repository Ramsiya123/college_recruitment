<?php
include 'connect.php';

//$my_array = array(); // Initialize the response array

$position= $_POST['position'];
$category = $_POST['category'];
$dscrp= $_POST['dscrp'];
$location = $_POST['location'];
$job_type = $_POST['job_type'];
$urgent = $_POST['urgent'];
$salary_type= $_POST['salary_type'];
$amount = $_POST['amount'];
$extra= $_POST['extra'];


$deadline = $_POST['deadline'];


$sql1 = mysqli_query($con, "INSERT INTO job_details_tb(title,dept,description,location,job_type,salary_amount,benefit,deadline,salary_type,urgent) VALUES ('$position','$category','$dscrp','$location','$job_type','$amount','$extra','$deadline','$salary_type','$urgent')");
#dept,description,location,job_type,salary_amount,benefit,deadline,salary_type,urgent,) VALUES ('$position', '$category', '$dscrp','$location','$job_type','$amount','$extra','$deadline','$salary_type','$urgent',)");

if ($sql1) {
    $my_array['result'] = "success";
} else {
    $my_array['result'] = "Failed";
}

echo json_encode($my_array);
?>
