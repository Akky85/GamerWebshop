<?php require "header.php"; ?>
<?php require "menu.php"; ?>
<?php

$con = mysqli_connect(host,user,pwd,dbname);
mysqli_query($con, "SET NAMES utf8");

if(isset($_GET["termekid"])){

    $termekid = $_GET["termekid"];

    $sql = "SELECT * FROM termekek WHERE id='$termekid'";
}

$result = mysqli_query($con, $sql);

while($row = mysqli_fetch_array($result)){

    $id = $row["id"];
    $termekkep = $row["termekkep"];
    $termeknev = $row["termeknev"];
    $termekar = $row["termekar"];
    $cikkszam = $row["cikkszam"];
    $keszlet = $row["keszlet"];
    $rovidleiras = $row["rovidleiras"];
    $hosszuleiras = $row["hosszuleiras"];
    $ajanlott_eletkor = $row["ajanlott_eletkor"];
    $megjelenes = $row["megjelenes"];
    $termekkep2 = $row["termekkep2"];
    $termekkep3 = $row["termekkep3"];
    $tul1 = $row["tul1"];
    $tul2 = $row["tul2"];
    $tul3 = $row["tul3"];
    $tul4 = $row["tul4"];
    $tul5 = $row["tul5"];
    $tul6 = $row["tul6"];

    $kategoria = $row["kategoria"];


    $sql2 = "SELECT katnev FROM kategoriak INNER JOIN termekek ON kategoriak.katsorrend=termekek.kategoria WHERE termekek.kategoria=$kategoria";
    $result2 = mysqli_query($con, $sql2);
    
    while($row = mysqli_fetch_array($result2)){
    

        $katnev = $row["katnev"];

    
    }
    ?>
<!-- termék -->
    <div class="container bg-light mt-5 p-5">
        <div class="row">
            <div class="col-sm-4">
                <img class="img-fluid img-thumbnail mx-auto d-block" src='<?php echo "$termekkep"; ?>' alt='' title='' />
            </div>
            <div class="col-sm-6">
                <h2 style="font-weight:700;" class="text-center mt-3"><?php echo "$termeknev"; ?></h2>
                <span class="badge badge-pill badge-primary"><?php echo "$katnev"; ?></span>
                <hr>
                <table class="table table-striped bg-light">
                    <tr>
                        <td width="10%"><i class="fas fa-info-circle"></i></td>
                        <td width="50%">Készletinformáció</td>
                        <td width="40%"><?php echo "$keszlet"; ?> db raktáron</td>
                    </tr>
                    <tr>
                        <td width="10%"><i class="fas fa-calendar-day"></i></td>
                        <td width="50%">Megjelenés dátuma:</td>
                        <td width="40%"><?php echo "$megjelenes"; ?></td>
                    </tr>
                    <tr>
                        <td width="10%"><i class="fas fa-check"></i></td>
                        <td width="50%">Ajánlott életkor</td>
                        <td width="40%"><?php echo "$ajanlott_eletkor"; ?></td>
                    </tr>
                    <tr>
                        <td width="10%"><i class="fas fa-bars"></i></td>
                        <td width="50%">Rövid ismertető</td>
                        <td width="40%"><?php echo "$rovidleiras"; ?></td>
                    </tr>
                </table>
            </div>
            <div id="termekinfo" class="col-sm-2">



                <h2 style="font-weight: 800;" class="mt-3"><?php echo number_format($termekar,0,".",".") ?><small class="ml-2" style="font-weight: 700;">Ft</small></h2><sup style="text-align: right;">Bruttó ár</sup>
                <br>
                <button id="kosarbabele" class='btn btn-success btn-lg btn-block my-3 text-light'><a href='kosarmuvelet.php?id=<?php echo "$id"; ?>&action=add'>Kosárba</a></button>
                <button name="kedvenc" id="kedvencekhez"><i class="fas fa-heart"></i></button>
                <p class="text-center text-danger"> Kívánságlista</p>                

                <ul>
                    <li><i class="fas fa-truck"></i> Kedvező házhoz szállítás</li>
                    <li><i class="fas fa-user-check"></i> Személyes átvételre lehetőség</li>
                    <li><i class="fab fa-cc-paypal"></i> Online átutalás</li>
                    <li><i class="far fa-credit-card"></i> Bankkártyás fizetési lehetőség</li>
                </ul>
            </div>
        </div>
    </div>


<!-- termékhez bővebb bemutató -->

    <div class="container bg-light p-5 mb-5">
        <div class="row">
            <div class="col-sm-4">
                <h4 class="my-3 text-center"><?php echo "$termeknev"; ?> tartalma:</h4>
                <ul>
                    <li class="pupi my-3"><i class="fas fa-splotch mr-2"></i><?php echo "$tul1"; ?></li>
                    <li class="pupi my-3"><i class="fas fa-splotch mr-2"></i><?php echo "$tul2"; ?></li>
                    <li class="pupi my-3"><i class="fas fa-splotch mr-2"></i><?php echo "$tul3"; ?></li>
                    <li class="pupi my-3"><i class="fas fa-splotch mr-2"></i><?php echo "$tul4"; ?></li>
                    <li class="pupi my-3"><i class="fas fa-splotch mr-2"></i><?php echo "$tul5"; ?></li>
                    <li class="pupi my-3"><i class="fas fa-splotch mr-2"></i><?php echo "$tul6"; ?></li>
                </ul>
            </div>
            <div class="col-sm-8" >
                <h2 class="my-3 text-center"><?php echo "$termeknev"; ?> ismertető</h2>
                <img class="img-fluid img-thumbnail my-3 mx-auto d-block" src="<?php echo "$termekkep2"; ?>" alt="">
                <p class="my-3"><?php echo "$hosszuleiras"; ?></p>
                <img class="img-fluid img-thumbnail my-3 mx-auto d-block" src="<?php echo "$termekkep3"; ?>" alt="">
            </div>
        </div>
    </div>
<?php
}

?>
<?php require "footer.php"; ?>
