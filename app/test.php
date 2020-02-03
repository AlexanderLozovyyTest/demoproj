<?php

$dbhost = 'localhost';
$dbuser = 'user1';
$dbpass = 'Password1!';

$mysqli = new mysqli($dbhost, $dbuser, $dbpass, "people");
if ($mysqli->connect_errno) {
    echo "Could not connect: (" . $mysqli->connect_errno . ") " . $mysqli->conn$
}

$res = $mysqli->query("SELECT first_name FROM workers");
$row = $res->fetch_assoc();
echo "Hello, ". $row['first_name'];


?>