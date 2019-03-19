<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "myphpdb";

$bdd = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
$rep = $bdd->query("SELECT * FROM cars");
while ($donnees = $rep->fetch()) {
    ?>
<div><?php echo $donnees['car_brand']; ?><div>
        <?php

    }

    ?> 