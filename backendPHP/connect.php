<?php
$host = "localhost";
$user = "test";
$pass = "test";
$database = "thietbi";

$conn = mysqli_connect($host, $user, $pass, $database, 3307);
mysqli_set_charset($conn, "utf8");

if ($conn) {
}

?>