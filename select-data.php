<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "myphpdb";

$bdd = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
$rep = $bdd->query("SELECT * FROM cars");
while ($donnees = $rep->fetch()) {
    ?>
<div class="item">
    <div class="head-item">
        <div class="car_brand"><?php echo $donnees['car_brand']; ?></div>
        <div class="car_model"><?php echo $donnees['car_model']; ?></div>
    </div>
    <img src="<?php echo $donnees['car_image']; ?>" />
    <div class="foot-item">
        <div class="car_energy"><?php echo $donnees['car_energy']; ?></div>
        <div class="car_model"><?php echo $donnees['car_price']; ?></div>
        <div class="car_color"><?php echo $donnees['car_color']; ?></div>
    </div>
</div>
<?php

}

?> 