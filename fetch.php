<?php     require "connection.php";  ?>

<div class='container'>
    <div class="row justify-content-center">

<?php

    $con = mysqli_connect(host,user,pwd,dbname);
    mysqli_query($con, "SET NAMES utf8");

    $search = mysqli_real_escape_string($con, $_POST["search"]);

    $sql = "SELECT * FROM termekek WHERE termeknev LIKE '%$search%'";

    $result = mysqli_query($con, $sql);

    if(mysqli_num_rows($result) > 0){

        while ($row = mysqli_fetch_array($result)){

            $id = $row["id"];
            $termeknev = $row["termeknev"];
            $termekar = $row["termekar"];
            $termekkep = $row["termekkep"];
            $keszlet = $row["keszlet"];
            $rleiras = $row["rovidleiras"];

            $akciosar = $termekar * 1.2;
    
 ?>
            <div class='col-sm-3'>
            <div class='card my-4' id='termekkartya'>
                <a href='termek.php?termekid=<?php echo "$id"; ?>'> <img  class='p-3 card-img-top' src="<?php echo "$termekkep"; ?>" /> </a>

            <div class='card-body text-center'>
            <h5 class='card-title'><?php echo "$termeknev"; ?> </h5>
                <div class="card-text text-warning">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                </div>

                    <div class='card-text'> Készlet: <?php echo "$keszlet"; ?></div>

                    <div class='card-text'><h6><del><?php echo number_format($akciosar,0,".",".") ?> Ft </del></h6></div>

                    <div class='card-text'><h4><?php echo number_format($termekar,0,".",".") ?> Ft </h4></div>

                </div>
                </div>
            </div>
            
<?php
        }
    }  
    else{

        echo "<div class='container bg-light p-5'>
                <div class='row'>
  
                    <div class='col-sm-12'> <h3 class='text-dark text-center'>Nincs ilyen termék az adatbázisban!</h3> </div>

                </div>
            </div>
                    ";
    }

    ?>

    </div>
</div>