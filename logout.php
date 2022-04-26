<?php
session_start();  
unset($_SESSION['userLogin']);
unset($_SESSION['userType']);
header('Location: index.php');
?>
