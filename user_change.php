<?php require "header.php"; 
      require "menu.php";?>
<?php 



    if(isset($_POST["upload"])){

        $error = "";
        $success = "";

        $user = $_SESSION["user"];

        $con = mysqli_connect(host,user,pwd,dbname);
        mysqli_query($con, "SET NAMES utf8");

        $sql="SELECT id FROM adatok WHERE user='$user'";

        $result=mysqli_query($con, $sql);

        while($row=mysqli_fetch_array($result)){
            $userid=$row["id"];

        }



        $target = "img/".basename($_FILES["file"]["name"]);

        $profilkep = $_FILES["file"]["name"];

        $emailcim = $_POST["email"];
        $lakcim = $_POST["lakcim"];
        $szallitasicim = $_POST["szallitasicim"];
        $telefon = $_POST["telefon"];     
    



        if(empty($emailcim) || empty($telefon) || empty($szallitasicim)){

            $error = "A csillagozott adatokat kötelező megadni!";
        }
        else{

            $con = mysqli_connect(host,user,pwd,dbname);
            mysqli_query($con, "SET NAMES utf8");



            $sql2 = "UPDATE adatok SET email='$emailcim', profilkep='img/$profilkep', lakcim='$lakcim', szallitasicim='$szallitasicim', telefon='$telefon' WHERE id='$userid'";

            mysqli_query($con, $sql2);

            move_uploaded_file($_FILES["file"]["tmp_name"] , $target);

            $success = "Siker!";
        }
    }
    

?>
    <div id="modositos" class="container py-5 my-5"> 

        <div class="row justify-content-center">

            <div class="col-sm-2"><a href="user.php"><button type="submit" class="btn btn-warning ml-5">Vissza</button></a></div>
            <div class="col-sm-8">
            <form enctype="multipart/form-data" action="" method="post" class="form-group text-center bg-light p-5">

                <span class="text-danger d-block mb-3"><?php if(!empty($error)){ echo $error ;}?></span>
                <span class="text-success d-block mb-3"><?php if(!empty($success)){ echo $success;} ?></span>

                <h2 class="mb-5 text-center">Adatok módosítása</h2>
                <p class="text-center text-warning">A <i class="fas fa-star"></i> jelölt mezők kitöltése kötelező!</p>

                <label for="">Email cím <i class="fas fa-star"></i></label>
                <input type="email" name="email" id="" class="form-control mb-3">

                <label for="">Szállítási cím <i class="fas fa-star"></i></label>
                <input type="text" name="szallitasicim" class="form-control mb-3">

                <label for="">Telefonszám <i class="fas fa-star"></i></label>
                <input type="text" name="telefon" class="form-control mb-3">    
                
                <label for="">Lakcím</label>
                <input type="text" name="lakcim" class="form-control mb-3">              

                <label for="">Profilkép<br> <small>Érdemes négyzet alakú képet választani</small></label>
                <input type="file" name="file" class="form-control mb-3 ">


                <button type="submit" name="upload" class="btn btn-primary">Feltöltés</button>
                
            </form>
            
            </div>
            <div class="col-sm-2"></div>
        </div>
    </div>

        </body>
        </html>