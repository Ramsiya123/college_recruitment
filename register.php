<?php
// Include your database connection configuration
include("connect.php");

// Check if the HTTP POST request is received
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Get the data from the Flutter app
    $fname = $_POST['fname'];
    $lname = $_POST['lname'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $dob = $_POST['dob'];
    $phone = $_POST['phone'];

    // Perform server-side validation here if needed

    // Hash the password
    $hashedPassword = password_hash($password, PASSWORD_BCRYPT);

    // SQL query to insert user data into the database
    $query = "INSERT INTO registration_tb (first_name, last_name, email, password, dob, phone) VALUES (?, ?, ?, ?, ?, ?)";
    $stmt = $conn->prepare($query);
    $stmt->bind_param("ssssss", $fname, $lname, $email, $hashedPassword, $dob, $phone);

    if ($stmt->execute()) {
        $response = array("success" => 1, "message" => "Registration successful.");
    } else {
        $response = array("success" => 0, "message" => "Registration failed.");
    }

    // Return a JSON response to the Flutter app
    header('Content-Type: application/json');
    echo json_encode($response);

    $stmt->close();
} else {
    // Handle other HTTP methods if needed
    $response = array("success" => 0, "message" => "Invalid request method.");
    header('Content-Type: application/json');
    echo json_encode($response);
}

$conn->close();
?>
