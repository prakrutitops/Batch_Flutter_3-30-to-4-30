<?php

    include('connect.php');

    $email=$_REQUEST["email"];

    $sql="select * from test123 where email='$email'";

    $r = mysqli_query($con,$sql);
    $response = array();

    while($row = mysqli_fetch_array($r))
    {
       
        $value["otp"]=$row["otp"];


        array_push($response,$value);

    }
     echo json_encode($response);
     mysqli_close($con);


?>
