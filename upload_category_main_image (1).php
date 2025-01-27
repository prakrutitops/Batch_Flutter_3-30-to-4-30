<?php
    include 'connect.php';

    $upload_path = 'images/';

    $upload_url = 'https://'.$_SERVER['SERVER_NAME'] ."/Sujal/" . $upload_path;

   // $name = $_REQUEST['category_name'];
    $category_name = $_REQUEST['category_name'];

    $fileinfo = pathinfo($_FILES["profile_pic"]["category_name"]);

    $extension = $fileinfo["extension"];

    $random = 'image_' . rand(1000,9999);

    $file_url = $upload_url . $random . '.' . $extension;

    $file_path = $upload_path . $random . '.'. $extension;

    $profile_pic = "https://prakrutitech.buzz/Sujal/";

    move_uploaded_file($_FILES["profile_pic"]["tmp_name"],$file_path);

    $insert = "INSERT INTO product_main_category (category_name,category_img) VALUES ('$category_name','$profile_pic$file_path')";
    $result=mysqli_query($con,$insert);
?>
