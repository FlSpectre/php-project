<?php
$servername = "localhost";
$username = "root";
$password = "firpowwa1998";
$dbname = "Cars";

$bdd = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
$rep = $bdd->query("SELECT * FROM cars");
    while ($donnees = $rep->fetch()) {
        ?>
        
        <?php 
    }        
    ?>
