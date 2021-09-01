

<div class='container'> 
<div class="row justify-content-center">

<?php  
$con = mysqli_connect(host,user,pwd,dbname);
mysqli_query($con, "SET NAMES utf8"); 

$sql = "SELECT * FROM hirek ORDER BY id DESC";


$result = mysqli_query($con, $sql);

while($row = mysqli_fetch_array($result)){

    $id = $row["id"];
    $h1cim = $row["h1cim"];
    $datum = $row["datum"];
    $h2cim1 = $row["h2cim1"];
    $kep1 = $row["kep1"];


        echo "
        <div class='col-sm-4'>
            <div class='card my-3' id='termekkartya'>
                <a href='hir.php?hirid=".$id."'> <img  class='p-3 card-img-top' src=".$kep1." /> </a>

            <div class='card-body text-center'>
            <h5 class='card-title'> ".$h1cim." </h5>



                    <div class='card-text'><h6>".$h2cim1."</h6></div>

                    <div class='card-text mb-3'><small> Közzététel: ".$datum."</small></div>
                    

                </div>
                </div>
            </div>
        
        ";

     }  
 
     
?>

            </div>
        </div>


