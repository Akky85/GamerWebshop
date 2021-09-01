<?php

  if($_SESSION["logged"]){
?>
<a name="menu"></a>
<form method="post">

<!-- Navigation bar -->
  <nav class="navbar navbar-expand-lg" id="navbar">
    <a id="mainlogo" href="index.php"><img src="img/logo11.png" alt="" width="250px"></a>  
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav ml-auto">

          <?php require "kategoria.php"; ?>

          <a href="termekek.php">Összes termék</a>
          <a href="tajekoztato.php">ÁSZF</a>
          <a href="index.php?#kapcs"><i class="far fa-comment-dots fa-2x"></i></a>
          <a href="kosar.php"><i id="kosarka" class="fas fa-shopping-basket fa-3x"></i></a>
          </ul>
        </div>
  </nav>
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-3">
              <a class="ugras" href="admin/admin.php"><i class="fas fa-tools"></i>  ugrás az admin felületre</a>
            </div>
<!-- Keresés -->
            <div class="col-sm-6">
                <input type="text" name="search_text" class="search_text form-control mb-3" placeholder="Mit keresel? Kezdj el gépelni...">
            </div>
        <div class="col-sm-2 text-center">
      <?php 
          $con = mysqli_connect(host,user,pwd,dbname);
          mysqli_query($con, "SET NAMES utf8");
          $nev = $_SESSION["user"];

          $sql = "SELECT profilkep FROM adatok WHERE user = '$nev'";
          $result = mysqli_query($con, $sql);
    
          while($row = mysqli_fetch_array($result)){
          

              $profilkep = $row["profilkep"];

          
          }
      ?>
          <a href="user.php"><img style="width: 50px; height: 50px;" class="rounded-circle float-left" src="<?php echo "$profilkep"; ?>" alt=""></a>
          <a id="emberke" href="user.php"><p class="ml-3"><?php echo "Üdvözöllek ".$_SESSION["user"]."!"; ?> </p></a>
        </div> 
        <div class="col-sm-1 text-center">
          <button class="mr-5" id="logout" type="submit" name="logout"><i class="fas fa-power-off fa-2x"></i></button>
        </div>
      </div>   
    </div>

    <div class="container">
    <div class="row justify-content-center">
      <div class="col-sm-12">
        <div class="result"></div>
      </div>
    </div>
  </div>

  </form>


    

<?php  
  } 
  else{
    $_SESSION["user"] = "";
  ?>
 <a name="menu"></a>

<form method="post">
  <nav class="navbar navbar-expand-lg" id="navbar">
    <a id="mainlogo" href="index.php"><img src="img/logo11.png" alt="" width="250px"></a>  
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav ml-auto">

            <?php require "kategoria.php"; ?>

            <a href="termekek.php">Összes termék</a>
            <a href="tajekoztato.php">ÁSZF</a>
            <a href="index.php?#kapcs"><i class="far fa-comment-dots fa-2x"></i></a>
            <a href="kosar.php"><i id="kosarka" class="fas fa-shopping-basket fa-3x"></i></a>
          </ul>
        </div>
  </nav>

  <div class="container-fluid">
    <div class="row">
      <div class="col-sm-3 ">
      <a class="ugras" href="admin/admin.php"><i class="fas fa-tools"></i>  ugrás az admin felületre</a>
      </div>

      <div class="col-sm-6">
        <input type="text" name="search_text" class="search_text form-control mb-3" placeholder="Mit keresel? Kezdj el gépelni...">
      </div>

    <div class="col-sm-3">
      <a class="bereg" href="login.php"><i class="fas fa-sign-in-alt fa-1x mr-2 ml-2"></i> Bejelentkezés  </a>
      <a class="bereg" href="register.php"><i class="fas fa-user-plus fa-1x mr-2 ml-4"></i> Regisztráció  </a>
    </div>   
  </div>
  </div>

  <div class="container">
    <div class="row justify-content-center">
      <div class="col-sm-12">
        <div class="result"></div>
      </div>
    </div>
  </div>

</form>


<?php
}

if (isset($_POST["logout"])){
  unset($_SESSION["logged"]);
  $_SESSION["logged"] = false;
  header("Location: index.php");
}
?>


<script>
    $(function(){

        $(".search_text").keyup(function(){

            var text = $(".search_text").val();

            if(text != ""){

                $.ajax({

                    url : "fetch.php",
                    type : "post",
                    dataType : "text",
                    data : {search : text},
                    success : function(data){

                        $(".result").html(data);
                    }
                })
            }
            else{

                $(".result").html("");
            }
        })
    })
</script>


