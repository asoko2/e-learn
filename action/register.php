<?php
if ($_SERVER['REQUEST_METHOD'] == 'GET' && realpath(__FILE__) == realpath($_SERVER['SCRIPT_FILENAME'])) {
    header('HTTP/1.0 403 Forbidden', TRUE, 403);
    die(header('location: ../index.php'));
}


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

    //get registered id
    var_dump($login);
    $result = mysqli_query($conn, "SELECT id FROM users WHERE login = '{$login}'");
    var_dump($result);
    $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
    var_dump($row);
    if ($_POST['level'] == 2) {
        if ($_POST['tipeguru'] == 1) {
            $sql = "INSERT INTO teachers (user_id, teacher_name, teacher_address, phone_number, class_id, nip) VALUES ('{$row['id']}', '{$name}', '{$address}', '{$phone_number}', '{$class_id}','{$login}')";

            $insert_guru = mysqli_query($conn, $sql);

            if (!$insert_guru) {
                var_dump($row['id']);
                var_dump('error pns');
                echo mysqli_error($conn);
            }
        } else {
            $sql = "INSERT INTO teachers (user_id, teacher_name, teacher_address, phone_number, class_id, email) VALUES ('{$row['id']}', '{$name}', '{$address}', '{$phone_number}', '{$class_id}','{$login}')";

            $insert_guru = mysqli_query($conn, $sql);

            if (!$insert_guru) {
                var_dump('error honorer');
                echo mysqli_error($conn);
            }
        }
    } else {
        // $sql = "INSERT INTO student (user_id, student_name, student_address, phone_number, class_id, nis) VALUES ('{$row['id']}', '{$name}', '{$address}', '{$phone_number}', '{$class_id}','{$login}')";
        $sql = "INSERT INTO student (user_id, nis, student_name, student_address, phone_number, class_id) VALUES('{$row['id']}', '{$login}', '{$name}', '{$address}', '{$phone_number}', '{$class_id}')";
        $insert_guru = mysqli_query($conn, $sql);
        if (!$insert_guru) {
            var_dump('error murid');
            echo mysqli_error($conn);
        }
    }

    if (!$register) {
        echo mysqli_error($conn);
    } else {
        header('location: ../register-success.php');
    }
}