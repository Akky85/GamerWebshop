<?php
    require "connection.php"; session_start(); 
?>
<!DOCTYPE html>
<html lang="hu">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="Description" content="Enter your description here"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
<link rel="icon" href="img/favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="css/style.css">
<script src="main.js" defer></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" defer></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js" defer></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js" defer></script>
<title>Gamer Webshop</title>
</head>
<body>
<img id="bground" src="img/bghex.png" alt="bg">

<section>
  <div class="container-fluid">
      <div class="row text-center">
          <div class="col-sm-12 mt-5">
              <a href="index.php"><img src="img\logo11.png" alt="" width="250px"></a>
              <h3 class="text-light m-3">Az ország legjobb gamer üzlethálózata</h3>
          </div>
      </div>
  </div>
</section>
<?php


$_SESSION["logged"] = false;

$error = "";
$success = "";

if(isset($_POST["reg"])){

    $user = $_POST["user"];
    $pwd = $_POST["pwd"];

    if(empty($user) || empty($pwd)){

        $error="Minden mező kitöltése kötelező!";
    }
    else if(strlen($pwd) < 8){

        $error = "A jelszó hossza min. 8-20 karakter legyen!";
    }
    //speciális karakterek
    else if(!preg_match('/^(?=.*\d)(?=.*[@#\-_$%^&+=§!\?])(?=.*[a-z])(?=.*[A-Z])[0-9A-Za-z@#\-_$%^&+=§!\?]{8,20}$/',$pwd)){

        $error = "A jelszó nem egyezik a követelményekkel!";
    }
    else{

        $con = mysqli_connect(host,user,pwd,dbname);
        mysqli_query($con, "SET NAMES utf8");

        //létező felhasználó vizsgálás
        $user_sql = "SELECT * FROM adatok WHERE user='$user'";

        $user_exist = mysqli_query($con, $user_sql);

        if(mysqli_num_rows($user_exist) >= 1){

            $error =" Létező felhasználónév!";

        } 
        else{

            $sql = "INSERT INTO adatok(user,email,pwd) VALUES('$user', '', sha1('$pwd'))";

            mysqli_query($con, $sql);

            $success = "<i class='fas fa-user-check'></i>";

            header("Location: login.php");
        }
    }
}



?>
  <div class="container">
    <div class="row">
      <div class="col-sm-3"></div>
      <div class="col-sm-6 mb-5 mt-5">
        <form action="" method="post" class="form-group text-center p-5 bg-light">
          <span class="text-danger d-block"><?php if(!empty($error)){echo $error;} ?></span>
          <span class="text-danger d-block"><?php if(!empty($success)){echo $success;} ?></span>

          <label for="">Felhasználónév</label>
          <input name="user" class="form-control mb-5" type="text" >

          <label for="">Jelszó</label>
          <input name="pwd" type="password" class="form-control mb-5">

          <a href="#">Elfelejtetted a jelszavadat?</a><br>
          <a href="login.php">Bocsi, még is van belépőkém!</a><br>

          <button name="reg" type="submit" class="btn btn-primary mt-5">Regisztrálok  <i class="fas fa-chevron-right"></i></button>

          <div class="mt-5 text-left">
                <ul>
                    A jelszónak tartalmaznia kell legalább egy:
                    <li>a-z (kisbetűt)</li>
                    <li>A-Z (nagybetűt)</li>
                    <li>0-9 (számot)</li>
                    <li>speciális karakter (@#-_$%^&+§!?)</li>
                </ul>
            </div>
        </form>
      </div>
      <div class="col-sm-3"></div>
  </div>  
</div>

</body>
</html>