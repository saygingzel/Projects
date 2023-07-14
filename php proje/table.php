<?php
// Veritabanı bağlantısı için gerekli bilgileri girin
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
//sql to create table
$sql = "CREATE TABLE MyGuests (
fname VARCHAR(30) NOT NULL,
lname VARCHAR(30) NOT NULL,
email VARCHAR(50) NOT NULL,
checkin  VARCHAR(50) NOT NULL,
checkout  VARCHAR(50) NOT NULL,
roomCount INT(2) NOT NULL,
guestCount INT(2) NOT NULL,
vLocation VARCHAR(50)
)";
if (mysqli_query($conn, $sql)) {
  echo "Table MyGuests created successfully";
} else {
  echo "Error creating table: " . mysqli_error($conn);
}

mysqli_close($conn);
?>