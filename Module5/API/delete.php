<?php


    include('connect.php');

    $id=$_POST["id"];
    
    $sql = "delete from test_api where id='$id'";
    mysqli_query($con,$sql);
    





?>
