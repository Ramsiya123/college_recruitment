<?php
include 'connect.php';

        $email=$_POST['email'];
        $password=$_POST['password'];
    
        $role=$_POST['type'];
        
        $query="SELECT * FROM login_tb  WHERE email='$email'AND password='$password'AND role='$role'";
        $sql = mysqli_query($con,$query);
       // $user_id = mysqli_insert_id($con);
           
        
            // Check if a matching record was found
            if (mysqli_num_rows($sql) > 0) 
            {

                while($row = mysqli_fetch_assoc($sql))
                {

                $my_array['result'] = 'success';
                $my_array['user_data'] = $row['login_id'];
                
                }
            } else {
                $my_array['result'] = "Failed - User not found";
            }
       
        
        echo json_encode($my_array);
?>