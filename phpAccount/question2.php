<?php include 'database.php'; ?> 
<?php session_start(); ?>
<?php
if(!isset($_SESSION['score']))
{
    $_SESSION['score'] = 0;

}
if(!isset($_SESSION['index']))
{
    $_SESSION['index'] = 0;

}

$number = (int) $_GET['n'];

$query ="SELECT * FROM `questions2`";
    $results = $mysqli->query ($query) or die ($mysqli->error.__LINE__);
    $total = $results->num_rows;
    
    
    $query ="SELECT *FROM `questions2` 
                WHERE question_number = $number";
    $result = $mysqli->query($query) or die ($mysqli->error.__LINE__);
    $question  = $result->fetch_assoc();


        $query = "SELECT * FROM `choices2`
         WHERE question_number = $number";
         $choices = $mysqli->query($query) or die ($mysqli->error.__LINE__);


?>
<! DOCTYPE html>
<html>
     <head>
     <meta charset="ntf-8" 1>
     <title>PHP Quizzer</title>
     <link rel="stylesheet" type="text/css" href="style8.css">
</head>
<body>
         
         <div class="container">
            <h1 style="margin-bottom: 0;">Hamro Quiz</h1>
            <div style="margin-top: 0;" class="timer-container">
             <div class="timer">
             <p style="display: flex;justify-content: flex-end;align-content: center;margin-right: 10px;font-size: 1.2rem;font-weight:bold; background: white;">00:<span id="countdown">15</span></p>
         </div>
     </div>
             
        
      
             <div class="current">Question <?=$_SESSION['index'] +1 ?> of <?php echo $total; ?></div> 
             <p class="question">
                <?php
                echo $question['text'];

                ?>
             </p>
             <form method="post" action="process2.php">
                 <div class="choices">
                    <?php while($row = $choices->fetch_assoc()):
                        ?>

                     <div><label for="<?php echo $row['id']; ?>"><?php echo $row['text'] ?></label><input name="choice" type="radio" id="<?php echo $row['id']; ?>"  value="<?php echo $row['id']; ?>"/></div>
                 <?php endwhile; ?>

                 </div>
             <input style="margin-top: 1rem;
    width: 10rem;
    height: 2rem;" type="submit" value="Skip" id="skip" />
                 <input type="submit" value="Next" id="formSubmit" />
                 
                 <input type="hidden" name="number" value=" <?php echo $number; ?>" />
             </form>
         </div>
 </body>
 <script src="script2.js"></script>
  <script type="text/javascript">
     var input = document.querySelectorAll('input[type=radio]');
     var submit = document.getElementById('formSubmit');
     var skip = document.getElementById('skip');

     input.forEach((item) => {
        item.addEventListener('click',()=>{
            submit.style.display = "block"; 
        });
     });
     window.addEventListener('load',()=>{
        submit.style.display = "none"; 
     })

      input.forEach((item) => {
        item.addEventListener('click',()=>{
            skip.style.display = "none";  
        });
     });
     window.addEventListener('load',()=>{
        skip.style.display = "block";
     })


     var label = document.querySelectorAll('label');
     function removeColor(label) {
        label.forEach((l) => {
            l.style.backgroundColor = 'white';
        })
     }
     label.forEach((lab) => {
        lab.addEventListener('click',() => {
            removeColor(label);
            lab.style.backgroundColor = "#969696";
        });
     });
 </script> 

 </html>
