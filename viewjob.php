<?php
include 'connect.php';


$sql = mysqli_query($con, "SELECT * FROM job_details_tb;");
$list = array();
if ($sql->num_rows > 0) {
    while ($rows = mysqli_fetch_assoc($sql)) {


        $my_array['result'] = "Success";
        $my_array['u_id'] = $rows['job_id'];

        $my_array['name'] = $rows['title'];
        $my_array['age'] = $rows['dept'];
        $my_array['qualification'] = $rows['description'];
        $my_array['department'] = $rows['location'];
        $my_array['department'] = $rows['job_type'];
        $my_array['department'] = $rows['salary_amount'];
        $my_array['department'] = $rows['benefit'];

        $my_array['email'] = $rows['deadline'];
        $my_array['username'] = $rows['salary_type'];

        $my_array['password'] = $rows['urgent'];
       
       
        




        array_push($list, $my_array);

    }
} else {

    $my_array['result'] = "Failed";
    array_push($list, $my_array);

}

echo json_encode($list);
?>