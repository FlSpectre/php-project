<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link rel="stylesheet" type="text/css" media="screen" href="style.css" />
    <title>Document</title>

</head>
<body>
    <?php require_once('header.php') ?>
    <?php require_once('form.php') ?>
    <div class="content">
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
        <div class="car_model"><?php echo $donnees['car_price']; ?><span>€</span></div>
        <div class="car_color"><?php echo $donnees['car_color']; ?></div>
    </div>
</div>
<?php 
}
?> 
</div>
<?php require_once('footer.php') ?>
</body>
<script src="script.js"></script>
</html> 