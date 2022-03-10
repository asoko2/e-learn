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
    $phone_number = mysqli_real_escape_string($conn, $_POST['phone_number']);
    $password = mysqli_real_escape_string($conn, $_POST['password']);
    $hashed_pass = password_hash($password, PASSWORD_BCRYPT);
    // var_dump($password);

    $register = mysqli_query($conn, "INSERT INTO users (login, password, level_user) VALUES ( '" . $login . "','" . $hashed_pass . "','" . $_POST['level'] . "' )");

    if ($_POST['level'] == 2) {
        if ($_POST['tipeguru'] == 1) {
            $table = 'user_id, teacher_name, teacher_address, nip, phone_number, class_id';
        } else {
            $table = 'user_id, teacher_name, teacher_address,email, phone_number, class_id';
        }

        //get registered id
        $result = mysqli_query($conn, "SELECT id FROM users WHERE login = " . $login);
        $row = mysqli_fetch_array($result, MYSQLI_ASSOC);

        mysqli_query($conn, "INSERT INTO teachers (" . $table . ") VALUES ('" . $row['id'] . "', '" . $name . "', '" . $address . "' , '" . $login . "', '" . $phone_number . "', '" . $class_id . "'");
    } else {
        $result = mysqli_query($conn, "SELECT id FROM users WHERE login = " . $login);
        $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
        mysqli_query($conn, "INSERT INTO student (user_id, nis, student_name, student_address, phone_number, class_id) VALUES ('" . $row['id'] . "', '" . $login . "', '" . $name . "', '" . $address . "','" . $phone_number . "', '" . $class_id . "' ");
    }

    if (!$register) {
        echo mysqli_error($conn);
    } else {
        header('location: ../register-success.php');
    }
}