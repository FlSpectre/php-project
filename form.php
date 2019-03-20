<button class="open-form" onclick="openForm()">REGISTER</button>
<div class="form-popup" id="myForm">
    <form class="form-container" action="index.php" method="post">
        <h1>Registration</h1>
        <label for="prenom"><b>First name</b></label>
        <input id="client_firstname" type="text" placeholder="Enter your first name" name="prenom" required>
        <label for="nom"><b>Last name</b></label>
        <input id="client_lastname" type="text" placeholder="Enter your last name" name="nom" required>
        <label for="email"><b>Email</b></label>
        <input id="client_mail" type="text" placeholder="Enter your Email" name="email" required>
        <label for="mdp"><b>Password</b></label>
        <input id="client_password" type="password" placeholder="Enter your password" name="mdp" required>
        <label for="pays"><b>Country</b></label>
        <input id="client_country" type="text" placeholder="Enter your country" name="pays" required>
        <button type="submit" class="post-form" name="save">Create my account</button>
        <button type="button" class="close-form" onclick="closeForm()"></button>
    </form>
</div> 