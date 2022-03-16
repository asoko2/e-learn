<?php
if ($_SERVER['REQUEST_METHOD'] == 'GET' && realpath(__FILE__) == realpath($_SERVER['SCRIPT_FILENAME'])) {
    header('HTTP/1.0 403 Forbidden', TRUE, 403);
    die(header('location: ../index.php'));
}


include('../config/db.php');
session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $ketertarikan = array(
        '1' => $_POST['question1'],
        '2' => $_POST['question2'],
        '3' => $_POST['question3'],
        '4' => $_POST['question4'],
        '5' => $_POST['question5'],
    );
    $keterlibatan = array(
        '6' => $_POST['question6'],
        '7' => $_POST['question7'],
        '8' => $_POST['question8'],
        '9' => $_POST['question9'],
        '10' => $_POST['question10'],
    );
    $ktt = 0;
    $ktl = 0;

    //Mengambil data ketertarikan
    foreach ($ketertarikan as $k) {
        $ktt += $k;
    }

    //Mengambil data keterlibatan
    foreach ($keterlibatan as $k) {
        $ktl += $k;
    }

    //Menentukan level ketertarikan
    if ($ktt == 0 || $ktt == 1) {
        $levelktt = 1;
    } elseif ($ktt == 2 || $ktt == 3) {
        $levelktt = 2;
    } else {
        $levelktt = 3;
    }

    //Menentukan level keterlibatan
    if ($ktl == 0 || $ktl == 1) {
        $levelktl = 1;
    } elseif ($ktl == 2 || $ktl == 3) {
        $levelktl = 2;
    } else {
        $levelktl = 3;
    }

    if ($levelktl == 1 && $levelktt == 1) {
        $level = 1;
    } elseif ($levelktt == 3 && $levelktl == 3) {
        $level = 3;
    } elseif ($levelktt == 1 && $levelktl == 2) {
        $level = 2;
    } elseif ($levelktt == 1 && $levelktl == 3) {
        $level = 2;
    } elseif ($levelktt == 2 && $levelktl == 1) {
        $level = 2;
    } elseif ($levelktt == 2 && $levelktl == 2) {
        $level = 2;
    } elseif ($levelktt == 2 && $levelktl == 3) {
        $level = 3;
    } elseif ($levelktt == 3 && $levelktl == 1) {
        $level = 2;
    } else {
        $level = 3;
    }

    $result = mysqli_query($conn, "INSERT INTO survey_result (level_result, student_id) VALUES ('{$level}', '{$_SESSION['student_id']}')");
    if (!$result) {
        echo mysqli_error($conn);
    } else {
        header('location: ../index.php');
    }
}