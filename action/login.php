<?php
include('../config/db.php');
session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    //GET login and password
    $login = mysqli_real_escape_string($conn, $_POST['login']);
    $password = mysqli_real_escape_string($conn, $_POST['password']);

    $sql = "SELECT * FROM users where login = '$login'";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
    // var_dump($row['password']);

    //check if result = 1
    if (mysqli_num_rows($result) == 1) {
        //verify password
        // var_dump('error');
        if (password_verify($password, $row['password'])) {
            // session_register('username');
            $_SESSION['login_user'] = $login;

            //get user detail
            if ($row['level_user'] == 1) {
                $result = mysqli_query($conn, "SELECT * FROM admin where user_id = " . $row['id']);
                $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
                $_SESSION['name'] = $row['admin_name'];
            } elseif ($row['level_user'] == 2) {
                $result = mysqli_query($conn, "SELECT * FROM teachers where user_id = " . $row['id']);
                $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
                $_SESSION['name'] = $row['teacher_name'];
            } else {
                $result = mysqli_query($conn, "SELECT * FROM student where user_id = " . $row['id']);
                $survey = mysqli_query($conn, "SELECT * FROM survey_result where user_id = " . $row['id']);
                // var_dump($result);
                if ($survey) {
                    $_SESSION['survey_taken'] = true;
                } else {
                    $_SESSION['survey_taken'] = false;
                }
                $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
                $_SESSION['name'] = $row['student_name'];
            }
            header("location: ../index.php");
        } else {
            $_SESSION['error_sign_in'] = "Username atau Password salah";
            header("location: ../sign-in.php");
        }
    } else {
        $_SESSION['error_sign_in'] = "Username";
        header("location: ../sign-in.php");
    }
}