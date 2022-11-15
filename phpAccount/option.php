<?php include 'database.php'; ?> 
<?php
session_start();
    $query ="SELECT * FROM `questions`";
    $results = $mysqli->query($query) or die ($mysqli->error.__LINE__);
    $total = 10;
    $array = array(1,2,3,4,5,6,7,8,9,10);
    shuffle($array);
    $_SESSION['try'] = $array;
    $_SESSION['index'] = 0;
?>

<!DOCTYPE html>
<html>
     <head>
     <meta charset="utf-8" 1>
     <title>HamroQuiz</title>
     <link rel="stylesheet" type="text/css" href="style8.css">
</head>
<body>
     
         <div class="container">
             <h1>Hamro Quiz</h1>
             <h2>Test Your Sport Knowledge</h2>
              <ul>
                  <li><strong>Number of Questions: </strong><?php echo $total; ?></11>
                  <li><strong>Type: </strong>Multiple Choice</11>
             </ul>
             <?php $index = $_SESSION['index'];
             $newArr = $_SESSION['try'][$index];?>
             <a href="question.php?n=<?=$newArr?>" class="start">Start Quiz</a>

         </div> 
     </main>
      </body>
 </html>
