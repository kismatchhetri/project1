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

if($_POST)
{
	$number = $_POST['number'];
	$selected_choice = $_POST['choice'];
	?><script>console.log('<?=$selected_choice?>')</script><?php
	$index = $_SESSION['index'];
	$index = $index + 1;
	$_SESSION['index'] = $index;
	
	
	$next = $_SESSION['try'][$index]; 

	$query ="SELECT * FROM `questions2`";
	$results = $mysqli->query ($query) or die ($mysqli->error.__LINE__);
	$total = 10;

	 $query ="SELECT * FROM `choices2`
	              WHERE question_number = $number AND is_correct =1";

    $result = $mysqli->query($query) or die ($mysqli->error.__LINE__);

    $row = $result->fetch_assoc();

    $correct_choice = $row['id'];

    if($correct_choice == $selected_choice)
    {
    	$_SESSION['score']++;

    }
  

    if ($index == $total)
    {
    	header("Location: final2.php");
    	exit();
    }else{
    	header("Location: question2.php?n=".$next);
    }

}