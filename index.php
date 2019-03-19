<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<div>ALLO</div>
<?php
$servername = "localhost";
$username = "root";
$password = "firpowwa1998";

try {
    $conn = new PDO("mysql:host=$servername;dbname=myphpdb.sql", 'root', 'firpowwa1998');
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Connected successfully"; 
    }
catch(PDOException $e)
    {
    echo "Connection failed: " . $e->getMessage();
    }
?>
<div>ALLO</div>
    
</body>
</html>
