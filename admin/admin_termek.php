<?php require "admin_header.php"; ?>
<?php

    $error = "";
    $success = "";

    if(isset($_POST["upload"])){

        $target = "../img/".basename($_FILES["file"]["name"]);
        $target2 = "../img/".basename($_FILES["file2"]["name"]);
        $target3 = "../img/".basename($_FILES["file3"]["name"]);

        $termekkep = $_FILES["file"]["name"];
        $termeknev = $_POST["termeknev"];
        $termekar = $_POST["termekar"];
        $kategoria = $_POST["kategoria"];
        $cikkszam = $_POST["cikkszam"];
        $keszlet = $_POST["keszlet"];
        $rovidleiras = $_POST["rovidleiras"];
        $hosszuleiras = $_POST["hosszuleiras"];

        $ajanlott_eletkor = $_POST["ajanlott_eletkor"];
        $megjelenes = $_POST["megjelenes"];
        $termekkep2 = $_FILES["file2"]["name"];
        $termekkep3 = $_FILES["file3"]["name"];
        $tul1 = $_POST["tul1"];
        $tul2 = $_POST["tul2"];
        $tul3 = $_POST["tul3"];
        $tul4 = $_POST["tul4"];
        $tul5 = $_POST["tul5"];
        $tul6 = $_POST["tul6"];

        if(empty($termekkep) || empty($termeknev) || empty($termekar) || empty($cikkszam) || empty($keszlet) || empty($rovidleiras) || empty($megjelenes) || empty($kategoria)){

            $error = "Minden mező kitöltése kötelező!";
        }
        else{

            $con = mysqli_connect(host,user,pwd,dbname);
            mysqli_query($con, "SET NAMES utf8");

            $sql = "INSERT INTO termekek(kategoria, ajanlott_eletkor, termeknev, cikkszam, keszlet, termekar, megjelenes, rovidleiras, hosszuleiras, termekkep, termekkep2, termekkep3, tul1, tul2, tul3, tul4, tul5, tul6) VALUES ('$kategoria', '$ajanlott_eletkor', '$termeknev', '$cikkszam', '$keszlet','$termekar', '$megjelenes', '$rovidleiras', '$hosszuleiras', 'img/$termekkep', 'img/$termekkep2','img/$termekkep3', '$tul1', '$tul2', '$tul3', '$tul4', '$tul5', '$tul6')";

            mysqli_query($con, $sql);

            move_uploaded_file($_FILES["file"]["tmp_name"] , $target);
            move_uploaded_file($_FILES["file2"]["tmp_name"] , $target2);
            move_uploaded_file($_FILES["file3"]["tmp_name"] , $target3);

            $success = "Sikeres termékfeltöltés!";
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
                <h2 class="mb-5 text-center">Termék feltöltés</h2>
                <p class="text-center text-warning">A <i class="fas fa-star"></i> jelölt mezők kitöltése kötelező!</p>

                <label for="">Terméknév <i class="fas fa-star"></i></label>
                <input type="text" name="termeknev" class="form-control mb-3">

                <label for="">Ajánlott életkor <i class="fas fa-star"></i></label>
                <select name="ajanlott_eletkor" class="form-control mb-3">
                    <option value="pegi3">*</option>
                    <option value="pegi3">PEGI 3+</option>
                    <option value="pegi7">PEGI 7+</option>
                    <option value="pegi12">PEGI 12+</option>
                    <option value="pegi16">PEGI 16+</option>
                    <option value="pegi18">PEGI 18+</option>
                </select>

                <label for="">Kategória <i class="fas fa-star"></i></label>
                <select name="kategoria" class="form-control mb-3">
                    <option value="1">PC játékszoftver</option>
                    <option value="2">Playstation játékszoftver</option>
                    <option value="3">XBox játékszoftver</option>
                    <option value="4">Nintendo játékszoftver</option>
                    <option value="5">PSP</option>
                    <option value="6">Hardverek</option>
                    <option value="7">Gamer-stuff</option>
                    <option value="8">Ajándéknak való</option>
                    <option value="9">Könyvek</option>
                </select>

                <label for="">Cikkszám <i class="fas fa-star"></i></label>
                <input type="text" name="cikkszam" class="form-control mb-3">

                <label for="">Készlet <i class="fas fa-star"></i></label>
                <input type="text" name="keszlet" class="form-control mb-3">

                <label for="">Termékár <i class="fas fa-star"></i></label>
                <input type="text" name="termekar" class="form-control mb-3">                

                <label for="">Megjelenés dátuma <i class="fas fa-star"></i></label>
                <input type="date" name="megjelenes" class="form-control mb-3">

                <label for="">Termék rövid leírása <i class="fas fa-star"></i></label>
                <input type="text" name="rovidleiras" class="form-control mb-3">

                <label for="">Termék részletes leírása, cikk</label>
                <textarea name="hosszuleiras" cols="50" rows="10" class="form-control mb-3"></textarea>  

                <label for="">Termékkép ami a fő termékoldalra kerül<i class="fas fa-star"></i></label>
                <input type="file" name="file" class="form-control mb-3 ">

                <label for="">Másik kép a termékből / termékről, a részletes leírás elejére kerül.</label>
                <input type="file" name="file2" class="form-control mb-3 ">

                <label for="">Másik kép a termékből / termékről a részletes leírás végére kerül.</label>
                <input type="file" name="file3" class="form-control mb-3 ">

                <label for="">Termék tartalma, jellemzői dióhéjban</label>
                <input type="text" name="tul1" class="form-control mb-3">
                <input type="text" name="tul2" class="form-control mb-3">
                <input type="text" name="tul3" class="form-control mb-3">
                <input type="text" name="tul4" class="form-control mb-3">
                <input type="text" name="tul5" class="form-control mb-3">
                <input type="text" name="tul6" class="form-control mb-3">

                <button type="submit" name="upload" class="btn btn-primary form-control">Feltöltés</button>
            </form>
            </div>
            <div class="col-sm-2"></div>
        </div>
    </div>
</body>
</html>