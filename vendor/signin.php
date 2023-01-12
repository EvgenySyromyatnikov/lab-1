<?php
session_start();
require_once 'connect.php';
$Email = $_POST['Email'];
    $password = md5($_POST['password']);
    $check_user = mysqli_query($connect, "SELECT * FROM `users1` WHERE `Email` = '$Email' AND `password` = '$password'");
    if (mysqli_num_rows($check_user) > 0) {

        $user = mysqli_fetch_assoc($check_user);

        $_SESSION['user'] = [
            "id" => $user['id'],
            "Full_name" => $user['Full_name'],
        ];
        header('Location: ../profile/prof.php');
    } else {
        $_SESSION['message'] = 'Не верный логин или пароль';
        header('Location: ../index.php');
    }
    ?>
