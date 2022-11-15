<?php

include('partials/header.php');

?>

   
    <div class="register_container">
        <div class="overlay">
            <!--------this will have not content--------->
        </div>

        <div class="titleDiv">
            <h1 class="title">Register</h1>
           
        </div>
    
        <?php

        if(isset($_SESSION['nopass'])){
            echo $_SESSION['nopass'];
            unset($_SESSION['nopass']);
        }

        ?>

        <?php

        if(isset($_SESSION['invalidphone'])){
            echo $_SESSION['invalidphone'];
            unset($_SESSION['invalidphone']);
        }

        ?>


        <!-- formSection----->
        <form action="" method="POST">
            <div class="rows grid">

            <!------Name---------->
            <div class="row">
                <label for="usernane">Name</Label>
                <input type="text" 
                        id="username" 
                        name="userName" 
                        maxlength = "50"
                        pattern="[A-Za-z ]{1,32}"
                        title = "Enter Vaild Name"
                        placeholder="Enter your Name" required>
            </div>

            <!------Last Name---------->
            <!-- <div class="row">
                <label for="usernane">Last Name</Label>
                <input type="text" 
                        id="username" 
                        name="userName" 
                        maxlength = "50"
                        pattern="[A-Za-z ]{1,32}"
                        title = "Enter Vaild Name"
                        placeholder="Enter your Full Name" required>
            </div> -->

            <!------email address---------->
            <div class="row">
                <label for="email">Email Address</Label>
                <input type="email" id="email" name="email" placeholder="Enter email Address" required>
            </div>

            <!------Phone Number---------->
            <div class="row">
                <label for="phone">Phone Number</Label>
                <input type="tel" 
                        id="phone" 
                        name="phone"
                        pattern = "[0-9]{10}" 
                        title = "Invaild Phone Number"
                        placeholder="Enter your Phone Number" required>
            </div>

            <!-------Password---------->
            <div class="row">
                <label for="password">Password</Label>
                <input type="password" 
                id="password" 
                name="password" 
                placeholder="Enter your Password" 
                pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" 
                title="Must contain at least one number and one uppercase and lowercase letter,
                 and at least 8 or more characters" 
                required>
            </div>
               
            <!-------conform Password---------->
            <div class="row">
                <label for="confirm_password">Confirm Password</Label>
                <input type="password" id="confirm_password" name="confirm_password" placeholder="Re-Enter your Password" required>
            </div>

            <!----- submit button ------>
            <div class="row">
                <input type="submit" id="submitBtn" name="submit" value="Register" required>

                <span class="registerLink">Already Have an Account?  <a href="index.php">Login</a></span>
            </div>

            
         </div>
        </form>
       
            
    </div>
 

<?php
include('partials/footer.php');
?>



<!-- regestering data into the database -->

   <?php
    if(isset($_POST['submit'])){

        function validate($data){
            $data = trim($data);
            $data = stripslashes($data);
            $data = htmlspecialchars($data);
            return $data;
         }


        //variables....
        $userName = validate($_POST['userName']);
        $email = validate($_POST['email']);
        $password = validate($_POST['password']);
        $confirm_password = validate($_POST['confirm_password']);
        $phone = $_POST['phone'];
        
        $key = 'mykey';
    
        $str_pass1 =hash_hmac('sha256', $password, $key);
        $str_pass2 =hash_hmac('sha256', $confirm_password, $key);

        if($password !== $confirm_password){
            $_SESSION['nopass'] = '<span class="fail">Confirm Password doesnot match</span>';
            header("Location: register.php");
            exit();
        }

       
        
        //state out query...
        $sql = "INSERT INTO admin SET
                usernames = '$userName',
                email = '$email',
                phone = '$phone',
                passwords = '$str_pass1'
            ";

        //execute our sql query....
        $res = mysqli_query($conn, $sql);
        //check if query is executed succesfully
        if($res == true){
            //message to show account created successfully..
            $_SESSION['accountCreated'] = '<span class="addedAccount">Account Created Succesfully!</span>';
            header('location:' .SITEURL. 'index.php');
            exit();

        } else{
            //message to show account creation failed..
            $_SESSION['unSuccessful'] = '<span class="fail">Account '.$userName.' failed!</span>';
            header('location:' .SITEURL. 'register.php');
            exit();
        }  
        
    }

    ?> 