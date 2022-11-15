<?php
include('partials/header.php');

?>

<?php

if(isset($_SESSION['accountCreated'])){
    echo $_SESSION['accountCreated'];
    unset($_SESSION['accountCreated']);
}

?>


    <div class="form_container">
        <div class="overlay">
            <!--------this will have not content--------->
        </div>

        <div class="titleDiv">
            <h1 class="title">Login</h1>
            <span class="subTitle">Welcome to Hamro Quiz!!</span>
        </div>
    

        <?php
        if(isset($_SESSION['noAdmin'])){
            echo $_SESSION['noAdmin'];
            unset($_SESSION['noAdmin']);
        }


        ?>





        <!-- formSection----->
        <form action="" method="POST">
            <div class="rows grid">

            <!------email---------->
            <div class="row">
                <label for="email">Email</Label>
                <input type="email" id="email" name="uemail" placeholder="Enter your Email" required>
            </div>

            <!-------Password---------->
            <div class="row">
                <label for="password">Password</Label>
                <input type="password" id="password" name="password" placeholder="Enter your Password" required>
            </div>

            <!----- submit button ------>
            <div class="row">
                <input type="submit" id="submitBtn" name="submit" value="Login"  required >
                <span class="registerLink">Don't Have an Account?  <a href="register.php">Register</a></span>
            </div>

            
         </div>
        </form>
    </div>


<?php
include('partials/footer.php');
?>



 
<!----------- login to the database -------------->
 
<?php

if(isset($_POST['submit'])){
    // echo 'Yes data submitted';


    // Creating variable to store email and password
    $emailid = $_POST['uemail'];
    $passWord = $_POST['password'];

    $key = 'mykey';
    
    $str_pass =hash_hmac('sha256', $passWord, $key);

    // function validate($data){
    //     $data = trim($data);
    //     $data = stripslashes($data);
    //     $data = htmlspecialchars($data);
    //     return $data;
    //  }

    //  //variables....
    //  $emailid = validate($_POST['emailid']);
    //  $password = validate($_POST['password']);

     


    // SQL to select if there is the details in the database
    $sql = "SELECT * FROM admin WHERE email = '$emailid' AND passwords = '$str_pass' ";
    
    // Exexute the query
    $result = mysqli_query($conn, $sql);

    // Count the number of accounts with same email and password
    $count = mysqli_num_rows($result);

    echo $count;

    // Put the count result into one assosiate array
    $row = mysqli_fetch_assoc($result);

    // Check if there is at least one account in the database
    if($count ==1){
        // message to welcome admin to the dashboard
        $_SESSION['loginMessage'] = '<span></span>' ; 
        header('location:' .SITEURL. 'dashboard.php');
        exit();
    }else{
        // message if the admin/account to the dashboard
        $_SESSION['noAdmin'] = '<span class="fail"> Invalid email or Password</span>' ; 
        header('location:' .SITEURL. 'index.php');
        exit();
    }
}