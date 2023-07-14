<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "customers";

// Veritabanına bağlan
$conn = mysqli_connect($servername, $username, $password, $dbname);

// Bağlantıyı kontrol et
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}

$fname = $_POST["fname"];
$lname = $_POST["lname"];
$email = $_POST["email"];
$checkin = $_POST["checkin"];
$checkout = $_POST["checkout"];
$rooms = $_POST["roomCount"];
$guests = $_POST["guestCount"];
$vLocation = $_POST["location"];

//
$sql = "INSERT INTO MyGuests (fname, lname, email, checkin, checkout, roomCount, guestCount, vLocation)
VALUES ('$fname', '$lname', '$email', '$checkin', '$checkout', '$rooms', '$guests', '$vLocation' )";

if (mysqli_query($conn, $sql)) {
  echo "New record created successfully";
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
$conn->close();


?>