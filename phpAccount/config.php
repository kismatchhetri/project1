<?php

session_start(); // This will start our session

// let us create constants to store our localhost, root, password and database...
define('LOCALHOST', 'localhost');
define('ROOT', 'root');
define('PASSWORD', '');
define('DATABASE', 'quizzer');
define('SITEURL', 'http://localhost/phpAccount/'); // HERE IS OUR SITE ..... URL FOR OUR PROJECT AND WE SHALL KEEP IT IN THIS VARIABLE

//let us connect to our database   ======================
$conn = mysqli_connect(LOCALHOST, ROOT, PASSWORD, DATABASE) or die(mysqli_error('Failed To Connect!'));
$db_select = mysqli_select_db($conn, DATABASE) or die(mysqli_error('Failed to select database!'));

?>