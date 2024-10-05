<?php


    include('connect.php');

    $fname = $_POST["fname"];
    $email = $_POST["email"];
    $pass = $_POST["password"];

    if($fname=="" && $email=="" && $pass=="")
    {
        echo '0';
    }
    else
    {
        $sql = "insert into signup(fname,email,password) values ('$fname','$email','$pass')";
        mysqli_query($con,$sql);

        echo "inserted succesfully";

    }





?>
