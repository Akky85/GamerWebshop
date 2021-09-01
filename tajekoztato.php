<?php require "header.php" ?>

<?php  require "menu.php";  ?>

    <?php

        $con = mysqli_connect(host,user,pwd,dbname);
        mysqli_query($con, "SET NAMES utf8");

        $sql = "SELECT * FROM tajekoztato";

        $result = mysqli_query($con, $sql);

        while($row = mysqli_fetch_array($result)){

            $cim = $row["cim"];
            $content = $row["content"];

            echo "
        
            <div  class='container'>
                <div class='row justify-conternt-center'>
                    <div class='col-sm-12 text-center bg-light m-5 p-5'>
                        <h2 class='mb-3 my-3'>".$cim."</h2>
                        <hr id='vasarlo_tajekoztato'>
                        <p>".$content."</p>
                        <hr id='vasarlo_tajekoztato'>
                        <p>".$content."</p>
                        <hr id='vasarlo_tajekoztato'>
                    </div>
                </div>
            </div>
            ";
        }   
    ?>


</body>
</html>