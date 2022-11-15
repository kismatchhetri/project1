<?php
include('partials2/header.php');
if(!isset($_SESSION['loginMessage']) || $_SESSION['loginMessage'] != true){
  session_unset();
  session_destroy(); //this will destroy the session
  header('location:' .SITEURL. 'index.php');
  exit();
}

 unset($_SESSION['try']);
 unset($_SESSION['index']);
?>


<!DOCTYPE html>
<html>
     <head>
     <meta charset="ntf-8" 1>
     <title>PHP Quizzer</title>
     <link rel="stylesheet" type="text/css" href="style8.css">
</head>
<body>

        <div class="container">
            <div style="color: white;" class="text">
            <h>.</h><br><br>
        </div>
            <h2>You are done</h2>
            <p>Congrats</p>
            <p>Final score: <?php echo $_SESSION['score']; ?></p>
            <a href="dashboard.php" class="start">Try Again</a>

         </div>
     </body>
 </html>
   

