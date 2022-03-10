<?php
include('../config/db.php');
session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    //GET DATA
    if ($_POST['level'] == 2) {
        if ($_POST['tipeguru'] == 1) {
            $login = mysqli_real_escape_string($conn, $_POST['nip']);
        } else {
            $login = mysqli_real_escape_string($conn, $_POST['email']);
        }
    } else {
        $login = mysqli_real_escape_string($conn, $_POST['nis']);
    }
    $name = mysqli_real_escape_string($conn, $_POST['name']);
    $address = mysqli_real_escape_string($conn, $_POST['address']);
    $class_id = mysqli_real_escape_string($conn, $_POST['class_id']);
    $password = password_hash(mysqli_real_escape_string($conn, $_POST['class_id']), PASSWORD_BCRYPT);
    var_dump($password);

    $register = mysqli_query($conn, "INSERT INTO users (login, password, level_user) VALUES ( '" . $login . "','" . $password . "','" . $_POST['level'] . "' )");
    if (!$register) {
        echo mysqli_error($conn);
    } else {
        header('location: ../register-success.php');
    }
}