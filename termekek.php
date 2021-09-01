<?php require "header.php"; ?>
<?php require "menu.php"; ?>
<div>
 
<div class='container my-3'>
        <div class="row text-center">
             <hr id="termekekvonal" class="my-3">  
            <div class="col-sm-12">
            <div class="icon_bar">    
                <a href="?icon_bar=price_asc"><i class="fas fa-angle-double-up fa-2x" data-toggle="tooltip" data-placement="right" title="Ár növekvő sorrendben"></i></a>
                <a href="?icon_bar=price_desc"><i class="fas fa-angle-double-down fa-2x" data-toggle="tooltip" data-placement="right" title="Ár csökkenő sorrendben"></i></a>
                <a href="?icon_bar=newest"><i class="fas fa-star fa-2x" data-toggle="tooltip" data-placement="right" title="Legújabb elöl"></i></a>
                <a href="?icon_bar=best"><i class="fas fa-grin-hearts fa-2x" data-toggle="tooltip" data-placement="right" title="Kedvenc"></i></a>
            </div>
            </div>             
        </div>  
    </div>
<div class='container'> 
<div class="row justify-content-center">

<?php  
$con = mysqli_connect(host,user,pwd,dbname);
mysqli_query($con, "SET NAMES utf8"); 


if(isset($_GET["katid"])){

    $katid = $_GET["katid"];

    $sql = "SELECT * FROM termekek WHERE kategoria='$katid'";
}
else if(isset($_GET["icon_bar"])){

    $icon_bar = $_GET["icon_bar"];

    switch($icon_bar){
        case "price_asc":
            $sql = "SELECT * FROM termekek ORDER BY termekar ASC";
        break;

        case "price_desc":
             $sql = "SELECT * FROM termekek ORDER BY termekar DESC";
        break;

        case "newest":
            $sql = "SELECT * FROM termekek ORDER BY id DESC";
        break;

        case "best":
            $sql = "SELECT * FROM termekek INNER JOIN rend_termekek ON termekek.id=rend_termekek.termekid GROUP BY termeknev ORDER BY SUM(db) DESC";
        break;
    }
} 
else{
    $sql = "SELECT * FROM termekek ORDER BY id DESC";
}

$result = mysqli_query($con, $sql);

while($row = mysqli_fetch_array($result)){

    $id = $row["id"];
    $termeknev = $row["termeknev"];
    $termekar = $row["termekar"];
    $termekkep = $row["termekkep"];
    $keszlet = $row["keszlet"];
    $rovidleiras = $row["rovidleiras"];

        echo "
        <div class='col-sm-3'>
            <div class='card my-3' id='termekkartya'>
                <a href='termek.php?termekid=".$id."'> <img  class='p-3 card-img-top' src=".$termekkep." /> </a>

            <div class='card-body text-center'>
            <h5 class='card-title'> ".$termeknev." </h5>

            <div class='card-text'><span class='badge badge-pill badge-secondary'>Raktáron:  ".$keszlet." db</span></div>
                    <div class='card-text'><p>".$rovidleiras."</p></div>
                    <div class='card-text'><h4>".number_format($termekar,0,".",".")." Ft </h4></div>

                    <a href='kosarmuvelet.php?id=".$id."&action=add'><button class='btn btn-success'>Kosárba</button></a>
                    

                </div>
                </div>
            </div>
        
        ";

     }  
 
     
?>


            </div>
        </div>
    </div>

</body>
</html>