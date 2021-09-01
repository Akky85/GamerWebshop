<?php require "header.php"; ?>
<?php require "menu.php"; ?>
<?php

$con = mysqli_connect(host,user,pwd,dbname);
mysqli_query($con, "SET NAMES utf8");

if(isset($_GET["hirid"])){

    $hirid = $_GET["hirid"];

    $sql = "SELECT * FROM hirek WHERE id='$hirid'";
}

$result = mysqli_query($con, $sql);

while($row = mysqli_fetch_array($result)){

    $id = $row["id"];
    $h1cim = $row["h1cim"];
    $datum = $row["datum"];
    $h2cim1 = $row["h2cim1"];
    $h2cim2 = $row["h2cim2"];
    $h2cim3 = $row["h2cim3"];
    $bekezdes1 = $row["bekezdes1"];
    $bekezdes2 = $row["bekezdes2"];
    $bekezdes3 = $row["bekezdes3"];
    $bekezdes4 = $row["bekezdes4"];
    $bekezdes5 = $row["bekezdes5"];
    $bekezdes6 = $row["bekezdes6"];
    $quote1 = $row["quote1"];
    $quote2 = $row["quote2"];
    $videocim = $row["videocim"];
    $video = $row["video"];
    $kep1 = $row["kep1"];
    $kep2 = $row["kep2"];
    $kep3 = $row["kep3"];
    $cimke1 = $row["cimke1"];
    $cimke2 = $row["cimke2"];
    $cimke3 = $row["cimke3"];
    $cimke4 = $row["cimke4"];
    $cimke5 = $row["cimke5"];

    ?>
<!-- hír -->
<h1 class="text-center text-light mt-5">Aktuális hírek</h1>  
    <div class="container bg-light my-5 p-5">
        <div class="row">
            <div class="col-sm-9">
                <img class="img-fluid img-thumbnail mx-auto d-block" src='<?php echo "$kep1"; ?>' alt='' title='' />

                <h2 style="font-weight:700;" class="mt-3"><?php echo "$h1cim"; ?></h2>
                <code class="text-dark"><?php echo "$datum  "; ?></code>
                <hr>
                <h3 class="my-2"><strong><?php echo "$h2cim1"; ?></strong></h3>
                <p class="my-2"><?php echo "$bekezdes1"; ?></p>
                <p class="my-2"><?php echo "$bekezdes2"; ?></p>
                <img class="img-fluid img-thumbnail mx-auto d-block my-3" src="<?php echo "$kep2"; ?>" alt="">
                <h3 class="my-2"><strong><?php echo "$h2cim2"; ?></strong></h3>
                <p class="my-2"><?php echo "$bekezdes3"; ?></p>
                <div style="border-left: 4px solid red; padding-left: 20px;"><q style="font-size:larger;" class="my-3"><?php echo "   ".$quote1; ?></q></div>
                <p class="my-1"><?php echo "$bekezdes4"; ?></p>
                <img class="img-fluid img-thumbnail mx-auto d-block my-3" src="<?php echo "$kep3"; ?>" alt="">
                <h3 class="my-3"><strong><?php echo "$h2cim3"; ?></strong></h3>                
                <p class="my-2"><?php echo "$bekezdes5"; ?></p>
                <div style="border-left: 4px solid red; padding-left: 20px;"><q style="font-size:larger;" class="my-3"><?php echo "   ".$quote2; ?></q></div>
                <p class="my-2"><?php echo "$bekezdes6"; ?></p>
                <h3 class="my-2"><strong><?php echo "$videocim"; ?></strong></h3>
                <iframe width="750" height="500" src="<?php echo "$video"; ?>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                <br>
                <code class="text-dark"><?php echo "       ".$cimke1."       ".$cimke2."       ".$cimke3."       ".$cimke4."       ".$cimke5; ?></code>
                <br>
                <a href="index.php"><button type="submit" class="btn btn-warning my-5 text-center">Vissza a főoldalra</button></a>
            </div>
           

<?php
}
?> 

    <div class="col-sm-3 bg-secondary">
        <h4 class="text-light text-center py-3">TOP 5 kedvenc</h4>
<?php 

    $con = mysqli_connect(host,user,pwd,dbname);
    mysqli_query($con, "SET NAMES utf8"); 

    $sql = "SELECT * FROM termekek INNER JOIN rend_termekek ON termekek.id=rend_termekek.termekid GROUP BY termeknev ORDER BY SUM(db) DESC LIMIT 5";


    $result = mysqli_query($con, $sql);

    while($row = mysqli_fetch_array($result)){

    $id = $row["id"];
    $termeknev = $row["termeknev"];
    $termekar = $row["termekar"];
    $termekkep = $row["termekkep"];
    $kategoria = $row["kategoria"];
    $rovidleiras = $row["rovidleiras"];
    

    $sql2 = "SELECT katnev FROM kategoriak INNER JOIN termekek ON kategoriak.katsorrend=termekek.kategoria WHERE termekek.kategoria=$kategoria";
    $result2 = mysqli_query($con, $sql2);
    
    while($row = mysqli_fetch_array($result2)){
    

        $katnev = $row["katnev"];

    
    }


        echo "

            <div class='card my-3' id='termekkartyatop5'>
                <a href='termek.php?termekid=".$id."'> <img class='card-img-top' src=".$termekkep." /> </a>

            <div class='card-body text-center'>
            <h5 class='card-title'> ".$termeknev." </h5>

                    <div class='card-text'><span class='badge badge-pill badge-primary'> ".$katnev."</span></div>
                    <div class='card-text'><p>".$rovidleiras."</p></div>
                    <div class='card-text'><h4>".number_format($termekar,0,".",".")." Ft </h4></div>

                    <a href='kosarmuvelet.php?id=".$id."&action=add'><button class='btn btn-success btn-sm'>Kosárba</button></a>
                    

                </div>
                </div>

        
        ";
}


?>

            </div>
        </div>
    </div>


<?php require "footer.php"; ?>
