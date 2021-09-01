<?php require "header.php"; 
      require "menu.php";?>


<div class="container-fluid p-5 my-5 bg-light">
    <div class="row justify-content-center">
        <div class="col-sm-12">
            <table class="table table-striped text-center bg-light">
                <tr>
                    <th>Azonosító</th>
                    <th>Termék</th>
                    <th>Terméknév</th>
                    <th>Brutto ár</th>
                    <th>Darabszám</th>
                    <th>Cikkszám</th>
                    <th>Érték</th>
                    <th><a href="kosarmuvelet.php?action=empty"><i class="fas fa-trash-alt"></i></a></th>
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

                        $product_id = $row["id"];
                        $termekkep = $row["termekkep"];
                        $termeknev = $row["termeknev"];
                        $cikkszam = $row["cikkszam"];
                        $bruttoar = $row["termekar"];
                        $ertek = $bruttoar * $db;


                        echo "
                        
                            <tr align='center'>
                                <td>".$product_id."</td>
                                <td><a href='termek.php?termekid=".$product_id."'> <img width='60px' height='60px' src=".$termekkep." /> </a></td>
                                <td>".$termeknev."</td>
                                <td>".number_format($bruttoar,0,".",".")." Ft</td>
                                <td>".$db."</td>
                                <td>".$cikkszam."</td>
                                <td>".number_format($ertek,0,".",".")." Ft</td>
                                <td>
                                    <a href='kosarmuvelet.php?id=".$product_id."&action=add'><i class='fas fa-plus'></i></a>
                                    <a href='kosarmuvelet.php?id=".$product_id."&action=remove'><i class='fas fa-minus'></i></a>
                                </td>
                               
                            </tr>
                        
                        ";

                        $vegosszeg += $ertek;
                    }


                }
            }
            else{

                echo "<h2 align='center'>A kosár üres!</h2>";
            }
        ?>
        <tr>

            <td style="font-size: 20px;" align="right" colspan="8"><strong> Fizetendő végösszeg: </strong> <?php  echo number_format($vegosszeg,0,".",".");  ?> Ft </td>

        </tr>
   </table>
   


   <?php

            if($_SESSION["logged"]){
    ?>
    <a class="rendeles_gomb" href="megrendeles.php">Megrendelem</a>

        <?php
            }
            else{

    ?>
    <a class="rendeles_gomb" href="login.php">Rendelés leadásához kérjük jelentkezzen be!</a>
    <?php
            }
    ?>
</div>
</div>
</div>


</body>
</html>