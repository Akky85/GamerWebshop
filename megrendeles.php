<?php require "header.php"; ?>


<div class="container-fluid text-center bg-light my-5 p-5">
    <div class="row justify-content-center">
        <div class="col-sm-12">



    <h2 class="my-5 text-dark">Megrendelés összesítése</h2>

    <table class="table table-striped bg-light" align="center" cellpadding="8" width="90%">
        <tr align="center">
            <th>Termékazonosító</th>
            <th>Termék</th>
            <th>Terméknév</th>
            <th>Bruttó ár</th>
            <th>Darabszám</th>
            <th>Cikkszám</th>
            <th>Érték</th>
        </tr>

        <?php

            $vegosszeg = 0;

            if(isset($_SESSION["cart"])){

                foreach($_SESSION["cart"] as $product_id => $db){

                    $con = mysqli_connect(host,user,pwd,dbname);
                    mysqli_query($con, "SET NAMES utf8");

                    $sql = "SELECT * FROM termekek WHERE id='$product_id'";

                    $result = mysqli_query($con, $sql);

                    while($row = mysqli_fetch_array($result)){

                        $id = $row["id"];
                        $termekkep = $row["termekkep"];
                        $termeknev = $row["termeknev"];
                        $bruttoar = $row["termekar"];
                        $cikkszam = $row["cikkszam"];
                        $ertek = $bruttoar * $db;

                        echo "

                            <tr align='center'>
                                <td>".$id."</td>
                                <td><a href='termek.php?termekid=".$id."'> <img  class='img-fluid img-thumbnail' width='50px' src=".$termekkep." /> </a></td>
                                <td>".$termeknev."</td>
                                <td>".number_format($bruttoar,0,".",".")." Ft </td>
                                <td>".$db."</td>
                                <td>".$cikkszam."</td>
                                <td>".number_format($ertek,0,".",".")." Ft</td>
                            </tr>
                        ";

                        $vegosszeg += $ertek;
                    }

                }
            }

        ?>

        <tr align="right">
            <td colspan="7"> <strong style="font-size: 20px; margin-right: 20px;">Fizetendő végösszeg: <?php echo number_format($vegosszeg,0,".","."); ?> Ft </strong></td>
        </tr>
    </table>
        </div>
        </div>
    </div>

    <?php

        $error="";
        $error2="";

        if(isset($_POST["megrendel"]) && (isset($_POST["check"]) == 1)){

            $vevonev = $_POST["vevonev"];
            $email = $_POST["email"];
            $telefon = $_POST["telefon"];
            $szallitasicim = $_POST["szallitasicim"];
            $szmod = $_POST["szmod"];
            $fizmod = $_POST["fizmod"];

            if(empty($vevonev) || empty($email) || empty($telefon) || empty($szallitasicim)){

                 $error = "Rendelés leadásához minden mező kitöltése kötelező!";
            }
            else{

                $con = mysqli_connect(host,user,pwd,dbname);
                mysqli_query($con, "SET NAMES utf8");

                $sql = "INSERT INTO vevok(vevonev,email,cim,telefon,szallitasicim) VALUES('$vevonev','$email','','$telefon','$szallitasicim')";

                mysqli_query($con, $sql);

                //Megkeresem az utolsó vevőm azonosítóját
                $utolsovevoid = "SELECT id FROM vevok ORDER BY id DESC LIMIT 1";

                //Eltárolom az sql lekérdezésem kimenetét egy változóba
                $result = mysqli_query($con, $utolsovevoid);

                //Tömbösítem az sql lekérdezésem kimenetét
                $get_vevoid = mysqli_fetch_array($result);

                //A végleges vevő id-t eltárolom egy változóba
                $kapottvevoid = $get_vevoid[0];
                
                //Fetöltöm a megfelelő adatok a rendelések táblába
                $sql2 = "INSERT INTO rendelesek(vevoid,szallitas,fizmod,datum,statusz,bruttoosszeg) VALUES('$kapottvevoid', '$szmod', '$fizmod', NOW(), 'függőben', '$vegosszeg')";

                mysqli_query($con, $sql2);

                  //Megkeresem az utolsó rendelésem azonosítóját
                $utolsorendelesid = "SELECT id FROM rendelesek ORDER BY id DESC LIMIT 1";

                //Eltárolom az sql lekérdezésem kimenetét egy változóba
                $result2 = mysqli_query($con, $utolsorendelesid);
                //Tömbösítem az sql lekérdezésem kimenetét
                $get_rendelesid = mysqli_fetch_array($result2);
                //A végleges vevő id-t eltárolom egy változóba
                $kapottrendelesid = $get_rendelesid[0];

                foreach($_SESSION["cart"] as $product_id => $db){

                    //FEltöltöm a megfelelő adatokat a rend_term táblába
                    $sql3 = "INSERT INTO rend_termekek(rendelesid,termekid,db) VALUES('$kapottrendelesid','$product_id', '$db')";

                    mysqli_query($con, $sql3);

                    //Frissítem a termék készletének darabszámát
                    $sql4 = "UPDATE termekek SET keszlet= keszlet - '$db' WHERE id='$product_id'";
                    mysqli_query($con, $sql4);
                }

                echo "<h3 style='text-align:center; color:green'>Rendelésed sikeresen rögzítettük!</h3>";
                unset($_SESSION["cart"]);

                
                //mail($email, "Rendelés visszaigazolása", "Rendelésed sikeresen rögzítettük! Hamarosan küldjük a terméket!");


            }
        }
        else if(isset($_POST["megrendel"]) && (isset($_POST["check"]) == 0)){

            $vevonev = $_POST["vevonev"];
            $email = $_POST["email"];
            $telefon = $_POST["telefon"];
            $szallitasicim = $_POST["szallitasicim"];
            $szmod = $_POST["szmod"];
            $fizmod = $_POST["fizmod"];

            $error2="Vásárlási feltételek elfogadása kötelező!";

            if(empty($vevonev) || empty($email) || empty($telefon) || empty($szallitasicim)){

                 $error = "Rendelés leadásához minden mező kitöltése kötelező!";
            }
        }


    ?>

        <div class="container bg-light p-5">
            <div class="row justify-content-center">
                <div class="col-sm-2"></div>
                <div class="col-sm-8" >
                <form action="" method="post" class="form-group">

                <h4 class="my-3" style="color: red"> <?php  if(!empty($error)){ echo $error;} ?></h4>

                <input type="text" name="vevonev" class="form-control mb-3 mt-5" placeholder="Név...">
                <input type="text" name="email" class="form-control mb-3" placeholder="E-mail cím...">
                <input type="text" name="telefon" class="form-control mb-3" placeholder="Telefonszám...">
                <input type="text" name="szallitasicim" class="form-control mb-3" placeholder="Szállítási cím (irsz,város,utca,házszám)...">

                <select name="szmod" class="form-control mb-3">
                    <option value="gls">Gls futárral</option>
                    <option value="posta-utanvet">Postai utánvéttel</option>
                    <option value="szemelyes">Személyes átvétel</option>
                </select>

                <select name="fizmod" class="form-control mb-5">
                    <option value="online">Online bankkártya</option>
                    <option value="utanvet">Utánvét</option>
                    <option value="atutalas">Átutalás</option>
                </select>

                <h4 class="my-3" style="color: red"> <?php  if(!empty($error2)){ echo $error2;} ?></h4>
                <p class="text-center mt-3"><input type="checkbox" name="check"> <a href="tajezkotato.php">   Elfogadom a vásárlási feltételeket</a></p>
                

                <button type="submit" name="megrendel" class="btn btn-success btn-block my-3">Rendelés leadása</button>
                </form>

                </div>
                <div class="col-sm-2"></div>
            </div>
            <div class="row justify-content-center mt-5">
                <div class="col-sm-3"></div>
                <div class="col-sm-6 text-center">
                    <a  href="index.php"><button class="btn btn-warning mr-5"><i class="fas fa-reply"></i>  Vissza a webshopba!</button></a>
                    <a  href="kosar.php"><button class="btn btn-danger">Vissza a kosába!  <i class="fas fa-share"></i></button></a>
                </div>
                <div class="col-sm-3"></div>
            </div>
        </div>

</body>
</html>