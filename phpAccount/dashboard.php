<?php include 'database.php'; ?>

<?php

include('partials2/header.php');
if(!isset($_SESSION['loginMessage']) || $_SESSION['loginMessage'] != true){
  session_unset();
  session_destroy(); //this will destroy the session
  header('location:' .SITEURL. 'index.php');
  exit();
}
unset($_SESSION['score']);

?>

    
 <!---------------navbar start----------------->

  
</section>
<!DOCTYPE html>
<html>
<head>
    <style>
        *{
            box-sizing: border-box;
        }
        body{
            background-color:#b8c6db;
            align-items:center;
            justify-content: center;
            height: 100vh;
            overflow: hidden;
            margin: 0;
            display: flex;


        }
        .container
        {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 0 10px 2px rgba(100,100,100, 0.1);
            width: 600px;
            overflow: hidden;
            text-align: center;
        }
        .container li{
            list-style: none;
            background-color: #D98630;
            padding: 2px;
            border: 2px solid black;
            margin: 1px 120px 1px 120px;
            border-radius: 20px;

        }
        .container li a{
            text-decoration: none;
            color: black;
        }
        button{
            border: 1px solid #3498db;
            background-color:none;

        }


</style>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Hamro Quiz</title>
</head>

<body>
       <div class="container">
             <h1>Hamro Quiz</h1>
              <h2>Test Your Knowledge</h2>
             <p>Select Your Options</p>
         
    <li><a href="option.php">Sports Quiz</a></li><br>
    <li><a href="option2.php">GK Quiz</a></li><br>

    <li><a href="option3.php">Computer Quiz</li><br>
    <li><a href="option4.php">Science Quiz</li><br>
            <section class="header">
    <nav >
      
  <div class="container-fluid">
    <span class="navbar-brand mb-0 h1">
      <?php
        if(isset($_SESSION['loginMessage'])){
          echo $_SESSION['loginMessage'];
         
        }
      ?>
    </span>
  </div>     
  <a href="logOut.php" class="btn btn-outline-primary" type="submit" >Logout</a>
  </nav>

</div>
</body>
</html>