<?php
include('config.php');
session_unset();
session_destroy(); //this will destroy the session
header('location:' .SITEURL. 'index.php');
?>