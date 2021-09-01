<?php require "admin_header.php"; ?>
<?php

    $error = "";
    $success = "";

    if(isset($_POST["upload"])){

        $target = "../hirek_img/".basename($_FILES["kep1"]["name"]);
        $target2 = "../hirek_img/".basename($_FILES["kep2"]["name"]);
        $target3 = "../hirek_img/".basename($_FILES["kep3"]["name"]);


        $h1cim = $_POST["h1cim"];
        $datum = $_POST["datum"];
        $h2cim1 = $_POST["h2cim1"];
        $h2cim2 = $_POST["h2cim2"];
        $h2cim3 = $_POST["h2cim3"];
        $bekezdes1 = $_POST["bekezdes1"];
        $bekezdes2 = $_POST["bekezdes2"];
        $bekezdes3 = $_POST["bekezdes3"];
        $bekezdes4 = $_POST["bekezdes4"];
        $bekezdes5 = $_POST["bekezdes5"];
        $bekezdes6 = $_POST["bekezdes6"];
        $quote1 = $_POST["quote1"];
        $quote2 = $_POST["quote2"];
        $videocim = $_POST["videocim"];
        $video = $_POST["video"];
        $kep1 = $_FILES["kep1"]["name"];        
        $kep2 = $_FILES["kep2"]["name"];
        $kep3 = $_FILES["kep3"]["name"];
        $cimke1 = $_POST["cimke1"];
        $cimke2 = $_POST["cimke2"];
        $cimke3 = $_POST["cimke3"];
        $cimke4 = $_POST["cimke4"];
        $cimke5 = $_POST["cimke5"];


        if(empty($h1cim) || empty($datum) || empty($h2cim1) || empty($bekezdes1) || empty($bekezdes2) || empty($kep1)){

            $error = "Minden mező kitöltése kötelező!";
        }
        else{

            $con = mysqli_connect(host,user,pwd,dbname);
            mysqli_query($con, "SET NAMES utf8");

            $sql = "INSERT INTO hirek(h1cim, datum, h2cim1, h2cim2, h2cim3, bekezdes1, bekezdes2, bekezdes3, bekezdes4, bekezdes5, bekezdes6, quote1, quote2, videocim, video, kep1, kep2, kep3, cimke1, cimke2, cimke3, cimke4, cimke5) VALUES ('$h1cim', '$datum', '$h2cim1', '$h2cim2', '$h2cim3','$bekezdes1', '$bekezdes2', '$bekezdes3', '$bekezdes4', '$bekezdes5', '$bekezdes6', '$quote1','$quote2','$videocim','$video','hirek_img/$kep1', 'hirek_img/$kep2','hirek_img/$kep3', '$cimke1', '$cimke2', '$cimke3', '$cimke4', '$cimke5')";

            mysqli_query($con, $sql);

            move_uploaded_file($_FILES["kep1"]["tmp_name"] , $target);
            move_uploaded_file($_FILES["kep2"]["tmp_name"] , $target2);
            move_uploaded_file($_FILES["kep3"]["tmp_name"] , $target3);

            $success = "Sikeres hírfeltöltés!";
        }
    }

?>

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-sm-2"></div>
            <div class="col-sm-8">

            <form enctype="multipart/form-data" action="" method="post" class="form-group text-center bg-light p-5">

                <span class="text-danger d-block mb-3"><?php if(!empty($error)){ echo $error ;}?></span>
                <span class="text-success d-block mb-3"><?php if(!empty($success)){ echo $success;} ?></span>
                <img src="../img/logo11.png" width="300px" alt="">
                <h2 class="mb-5 text-center">Hírek - cikkek feltöltés</h2>
                <p class="text-center text-warning">A <i class="fas fa-star"></i> jelölt mezők kitöltése kötelező!</p>

                <label for="">Kép ami a főcím elé kerül<i class="fas fa-star"></i></label>
                <input type="file" name="kep1" class="form-control mb-3 ">

                <label for="">Cikk főcíme <i class="fas fa-star"></i></label>
                <input type="text" name="h1cim" class="form-control mb-3">

                <label for="">Dátum <i class="fas fa-star"></i></label>
                <input type="date" name="datum" class="form-control mb-3">

                <label for="">A cikk alcíme <i class="fas fa-star"></i></label>
                <input type="text" name="h2cim1" class="form-control mb-3">

                <label for="">Első bekezdés <i class="fas fa-star"></i></label>
                <textarea name="bekezdes1" id="" class="form-control mb-3" cols="30" rows="10"></textarea>

                <label for="">Második bekezdés <i class="fas fa-star"></i></label>
                <textarea name="bekezdes2" id="" class="form-control mb-3" cols="30" rows="10"></textarea>

                <label for="">Második alcím</label>
                <input type="text" name="h2cim2" class="form-control mb-3">

                <label for="">Harmadik bekezdés</label>
                <textarea name="bekezdes3" id="" class="form-control mb-3" cols="30" rows="10"></textarea>

                <label for="">Idézet, vagy kiemelendő mondat</label>
                <input type="text" name="quote1" class="form-control mb-3">

                <label for="">Másik kép ami a negyedik bekezdés után jön</label>
                <input type="file" name="kep2" class="form-control mb-3 ">                

                <label for="">Negyedik bekezdés </label>
                <textarea name="bekezdes4" id="" class="form-control mb-3" cols="30" rows="10"></textarea>

                <label for="">Harmadik alcím</label>
                <input type="text" name="h2cim3" class="form-control mb-3">

                <label for="">Ötödik bekezdés</label>
                <textarea name="bekezdes5" id="" class="form-control mb-3" cols="30" rows="10"></textarea>

                <label for="">Másik kép ami a ötödik bekezdés után jön</label>
                <input type="file" name="kep3" class="form-control mb-3 ">

                <label for="">Második idézet, kiemelkedő mondat</label>
                <input type="text" name="quote2" class="form-control mb-3">

                <label for="">hatodik bekezdés</label>
                <textarea name="bekezdes6" id="" class="form-control mb-3" cols="30" rows="10"></textarea>


                <label for="">Videó címe</label>
                <input type="text" name="videocim" class="form-control mb-3">

                <label for="">Videó linkje, ami a cikk végén lesz, a témával kapcsolatos<br><small>A beágyazós linkből kell kiszedni, úgy működik csak.</small></label>
                <input type="text" name="video" class="form-control mb-3 ">

                <label for=""> # címkék a cikk alján, vezérszavak a cikekhez</label>
                <input name="cimke1" type="text" class="form-control mb-3">
                <input name="cimke2" type="text" class="form-control mb-3">
                <input name="cimke3" type="text" class="form-control mb-3">
                <input name="cimke4" type="text" class="form-control mb-3">
                <input name="cimke5" type="text" class="form-control mb-3">

                <button type="submit" name="upload" class="btn btn-primary form-control">Feltöltés</button>

            </form>
            </div>
            <div class="col-sm-2"></div>
        </div>
    </div>