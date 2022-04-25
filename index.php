<?php 
session_start();  
if(isset($_SESSION['userLogin'])){
    header('Location: home.php');
}
require_once 'functions.php';


$func->login();


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IP Management System</title>
    <link rel="stylesheet" href="bootstrap.min.css">
    <link rel="stylesheet" href="style.css">

</head>
<body>
            
    <form class="form-signin" method="post">
        <?php
                if(isset($_GET['invalid'])){
                echo '<div class="alert alert-warning" role="alert"> 
                Invalid Username of Password!
                </div>';
              }
            ?>
        <center><img class="mb-1" src="tbk.png" alt="" width="310" height="300"></center>
        <label for="inputEmail" class="sr-only">Email address</label>
        <input type="text" id="username"  name="username" class="form-control" placeholder="Username" required autofocus autocomplete="off">
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="password" name="password" class="form-control" placeholder="Password" required autocomplete="off">

        <button class="btn btn-lg btn-danger btn-block" type="submit" id="loginbtn" name="loginbtn">Sign in</button>
        <center class="mt-5 mb-3 text-muted">IP Management System &copy; 2020</center>
    </form>
</body>
</html>