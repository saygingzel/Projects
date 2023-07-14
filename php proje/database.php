<?php
// Veritabanı bağlantısı için gerekli bilgileri girin
$servername = "localhost";
$username = "root";
$password = "";


// Veritabanına bağlan
$conn = mysqli_connect($servername, $username, $password);

// Bağlantıyı kontrol et
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}

// Verileri seç
$sql = "CREATE DATABASE customers";
if (mysqli_query($conn, $sql)) {
  echo "Database created successfully";
} else {
  echo "Error creating database: " . mysqli_error($conn);
}

mysqli_close($conn);


?>
