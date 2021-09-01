<?php require "header.php"; 
      require "menu.php";?>

<div class="container-fluid bg-light pb-5 mt-5">
  <div class="row bg-secondary mb-5">
    <div class="col-sm-12">
    <strong><h2 class="text-center text-light py-3"><?php echo "Szia ".$_SESSION["user"]."! "; ?></h2></strong>
    </div>
  </div>

    <div class="row justify-content-center">
      <div class="tovabbi" class="col-sm-3 ">
        <h4 >További lehetőségek</h4>
        <ul>
          <li><a href="#"><i class="far fa-id-card"></i> Személyes adatok</a></li>
          <li><a href="#"><i class="fas fa-unlock-alt"></i> Jelszóváltoztatás</a></li>
          <li><a href="#"><i class="fas fa-newspaper"></i> Számlázási cím</a></li>
          <li><a href="#"><i class="fas fa-truck"></i> Szállítási cím</a></li>
          <li><a href="#"><i class="fas fa-pencil-alt"></i> Feliratkozások</a></li>
          <li><a href="#"><i class="fab fa-amazon-pay"></i> Azonnali vásárlás</a></li>
          <li><a href="#"><i class="fas fa-user-cog"></i> Adatvédelem</a></li>
        </ul>
      </div>
      <div class="col-sm-1"></div>
      <div class="col-sm-5">
      <h2 class="text-center">Személyes adataid:</h2>
      <?php 
       $con = mysqli_connect(host,user,pwd,dbname);
       mysqli_query($con, "SET NAMES utf8");

       $nev = $_SESSION["user"];

       $sql = "SELECT email,lakcim,szallitasicim,telefon FROM adatok WHERE user = '$nev'";
       $result = mysqli_query($con, $sql);
 
       while($row = mysqli_fetch_array($result)){
       
           $email = $row["email"];
           $lakcim = $row["lakcim"];
           $szallitasicim = $row["szallitasicim"];
           $telefon = $row["telefon"];
       }
      ?>
      <table class="table">
        <tr>
          <td>Felhasználónév</td>
          <td><?php echo $nev  ?></td>
        </tr>
        <tr>
          <td>Email cím</td>
          <td><?php echo $email  ?></td>
        </tr>
        <tr>
          <td>Lakcím</td>
          <td><?php echo $lakcim  ?></td>
        </tr>
        <tr>
          <td>Szállítási cím</td>
          <td><?php echo $szallitasicim  ?></td>
        </tr>
        <tr>
          <td>Telefonszám</td>
          <td><?php echo $telefon  ?></td>
        </tr>

      </table>

        <a href="user_change.php"><button class="btn btn-warning justify-content-end">Változtatni szeretnék</button></a>
      </div>
      <div class="col-sm-3">
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

        <img style="height: 400px;" class="img-fluid img-thumbnail mx-auto d-block" src="<?php echo $profilkep; ?>" alt="">
      </div>   
  </div>  

  <div class="row justify-content-center">
    <div class="col-sm-12">
      <h2 class="text-center my-5"><?php echo $_SESSION["user"].", eddig ezeket rendelted:"; ?></h2>
      <table class="table table-striped">
        <tr align='center'>
          <th>Termék azonosító</th>
          <th>Termékkép</th>
          <th>Terméknév</th>
          <th>Termékár</th>
          <th>Darabszám</th>
          <th>Összérték</th>
        </tr>

        <?php
            $nev = $_SESSION["user"];

            $con = mysqli_connect(host,user,pwd,dbname);
            mysqli_query($con, "SET NAMES utf8");

            $sql = "SELECT termekid,termeknev,termekar,db,termekkep FROM vevok INNER JOIN rendelesek ON vevok.id=rendelesek.vevoid INNER JOIN rend_termekek ON rendelesek.id=rend_termekek.rendelesid INNER JOIN termekek ON rend_termekek.termekid=termekek.id WHERE vevok.vevonev LIKE '$nev'";

            $result = mysqli_query($con, $sql);

            while($row = mysqli_fetch_array($result)){

                $id = $row["termekid"];
                $termekkep = $row["termekkep"];
                $termeknev = $row["termeknev"];
                $termekar = $row["termekar"];
                $db = $row["db"];
                $ertek = $db * $termekar;


                echo "
                    <tr>
                    <td align='center'>".$id."</td>
                    <td align='center'> <a href='termek.php?termekid=".$id."'> <img src='$termekkep' width='50px' height='50px' /> </a></td>                    
                    <td>".$termeknev."</td>
                    <td>".number_format($termekar,0,".",".")." Ft</td>
                    <td align='center'>".$db."</td>
                    <td>Összesen: ".number_format($ertek,0,".",".")." Ft</td>

                    </tr>
                    
                    
                    
                    ";
            }
          ?>
      </table>
    </div>
  </div>
</div>




</body>
</html>
