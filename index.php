<?php

session_start();

if (!isset($_SESSION['name'])) {
    header('location: sign-in.php');
}
?>

<!doctype html>
<html class="no-js" lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>:: e-Learn:: Education Dashboard </title>
    <link rel="icon" href="favicon.ico" type="image/x-icon"> <!-- Favicon-->
    <!-- plugin css file  -->
    <link rel="stylesheet" href="node_modules/owl.carousel2/dist/assets/owl.carousel.min.css" />
    <!-- project css file  -->
    <link rel="stylesheet" href="assets/css/e-learn.style.min.css">
</head>

<body>

    <div id="elearn-layout" class="theme-purple">
        <!-- sidebar -->
        <?php include('layout/sidebar.php'); ?>

        <!-- main body area -->
        <div class="main px-lg-4 px-md-4">

            <!-- Body: Header -->
            <?php include('layout/header.php'); ?>

            <!-- Body: Body -->
            <div class="body d-flex py-lg-3 py-md-2">
                <div class="container-xxl">
                    <div class="row clearfix g-3">
                        <div class="col-lg-8 col-md-12 flex-column">
                            <div class="row row-deck g-3">
                                <div class="col-12 col-xl-12 col-lg-12">
                                    <div class="card mb-3 color-bg-200">
                                        <div class="card-body">
                                            <div class="row align-items-center">
                                                <div class="col-12 col-lg-5 order-lg-2">
                                                    <div class="text-center p-4">
                                                        <img src="assets/images/study.svg" alt="..."
                                                            class="img-fluid set-md-img">
                                                    </div>
                                                </div>
                                                <div class="col-12 col-lg-7 order-lg-1">
                                                    <h3 class=" mb-3">Welcome back, <span class="fw-bold">
                                                            <?php echo $_SESSION['name']; ?>
                                                        </span>
                                                    </h3>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card mb-3 color-bg-200">
                                <div class="card-header py-3">
                                    <h6 class="mb-0 fw-bold ">Time Spending on Learning</h6>
                                </div>
                                <div class="card-body">
                                    <div id="apex-basic-column"></div>
                                </div>
                            </div>
                            <!-- <div class="mb-3">
                                <div class="card-header py-3 px-0 no-bg border-0 bg-transparent">
                                    <h6 class="mb-0 fw-bold ">Other Courses </h6>
                                    <span class="text-muted">some other courses to join now </span>
                                </div>
                                <div class="row row-deck">
                                    <div class="col-md-12">
                                        <div class="owl-carousel owl-theme owl-carouseltwo">
                                            <div class="item">
                                                <div class="card">
                                                    <div class="card-body">
                                                        <div class="d-flex align-items-center justify-content-between">
                                                            <div class="lesson_name">
                                                                <h6 class="mb-0 fw-bold  fs-6  mb-2">Environmental
                                                                    Engineering</h6>
                                                            </div>
                                                            <div class="btn-group dropup">
                                                                <a href="#" class="nav-link py-2 px-3 text-muted"
                                                                    data-bs-toggle="dropdown" aria-expanded="false"><i
                                                                        class="fa fa-ellipsis-v"></i></a>
                                                                <ul
                                                                    class="dropdown-menu border-0 shadow dropdown-menu-end">
                                                                    <li><a class="dropdown-item" href="#">Edit</a></li>
                                                                    <li><a class="dropdown-item" href="#">Share</a></li>
                                                                    <li><a class="dropdown-item" href="#">Delete</a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="d-flex align-items-center">
                                                            <div class="avatar"><img class="avatar rounded-circle"
                                                                    src="assets/images/xs/avatar12.jpg" alt=""></div>
                                                            <div class="flex-fill ms-2 text-truncate">
                                                                <div class="">Diane Fisher</div>
                                                            </div>
                                                            <a href="courses.html" class="btn btn-primary btn-sm"
                                                                alt="join">Join Now</a>
                                                        </div>
                                                        <div class="dividers-block"></div>
                                                        <div class="row g-2">
                                                            <div class="col-6">
                                                                <div class="d-flex align-items-center">
                                                                    <i class="icofont-files-stack "></i>
                                                                    <span class="ms-2">15 Lessons</span>
                                                                </div>
                                                            </div>
                                                            <div class="col-6">
                                                                <div class="d-flex align-items-center">
                                                                    <i class="icofont-ui-timer "></i>
                                                                    <span class="ms-2">3 Month</span>
                                                                </div>
                                                            </div>
                                                            <div class="col-6">
                                                                <div class="d-flex align-items-center">
                                                                    <i class="icofont-group-students "></i>
                                                                    <span class="ms-2">320 Students</span>
                                                                </div>
                                                            </div>
                                                            <div class="col-6">
                                                                <div class="d-flex align-items-center">
                                                                    <i class="icofont-ui-rating "></i>
                                                                    <span class="ms-2">4.5</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="dividers-block"></div>
                                                        <div
                                                            class="d-flex align-items-center justify-content-between mb-2">
                                                            <h4 class="small fw-bold mb-0">Students Join</h4>
                                                            <span class="small">Student Bench 400</span>
                                                        </div>
                                                        <div class="progress" style="height: 8px;">
                                                            <div class="progress-bar bg-secondary" role="progressbar"
                                                                style="width: 25%" aria-valuenow="15" aria-valuemin="0"
                                                                aria-valuemax="100"></div>
                                                            <div class="progress-bar bg-secondary ms-1"
                                                                role="progressbar" style="width: 25%" aria-valuenow="30"
                                                                aria-valuemin="0" aria-valuemax="100"></div>
                                                            <div class="progress-bar bg-secondary ms-1"
                                                                role="progressbar" style="width: 28%" aria-valuenow="20"
                                                                aria-valuemin="0" aria-valuemax="100"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="item">
                                                <div class="card">
                                                    <div class="card-body">
                                                        <div class="d-flex align-items-center justify-content-between">
                                                            <div class="lesson_name">
                                                                <h6 class="mb-0 fw-bold  fs-6  mb-2">Farm Management
                                                                </h6>
                                                            </div>
                                                            <div class="btn-group dropup">
                                                                <a href="#" class="nav-link py-2 px-3 text-muted"
                                                                    data-bs-toggle="dropdown" aria-expanded="false"><i
                                                                        class="fa fa-ellipsis-v"></i></a>
                                                                <ul
                                                                    class="dropdown-menu border-0 shadow dropdown-menu-end">
                                                                    <li><a class="dropdown-item" href="#">Edit</a></li>
                                                                    <li><a class="dropdown-item" href="#">Share</a></li>
                                                                    <li><a class="dropdown-item" href="#">Delete</a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="d-flex align-items-center">
                                                            <div class="avatar"><img class="avatar rounded-circle"
                                                                    src="assets/images/xs/avatar10.jpg" alt=""></div>
                                                            <div class="flex-fill ms-2 text-truncate">
                                                                <div class="">Andrea Gill</div>
                                                            </div>
                                                            <a href="courses.html" class="btn btn-primary btn-sm"
                                                                alt="join">Join Now</a>
                                                        </div>
                                                        <div class="dividers-block"></div>
                                                        <div class="row g-2">
                                                            <div class="col-6">
                                                                <div class="d-flex align-items-center">
                                                                    <i class="icofont-files-stack "></i>
                                                                    <span class="ms-2">52 Lessons</span>
                                                                </div>
                                                            </div>
                                                            <div class="col-6">
                                                                <div class="d-flex align-items-center">
                                                                    <i class="icofont-ui-timer "></i>
                                                                    <span class="ms-2">4 Month</span>
                                                                </div>
                                                            </div>
                                                            <div class="col-6">
                                                                <div class="d-flex align-items-center">
                                                                    <i class="icofont-group-students "></i>
                                                                    <span class="ms-2">120 Students</span>
                                                                </div>
                                                            </div>
                                                            <div class="col-6">
                                                                <div class="d-flex align-items-center">
                                                                    <i class="icofont-ui-rating "></i>
                                                                    <span class="ms-2">4</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="dividers-block"></div>
                                                        <div
                                                            class="d-flex align-items-center justify-content-between mb-2">
                                                            <h4 class="small fw-bold mb-0">Students Join</h4>
                                                            <span class="small">Student Bench 150</span>
                                                        </div>
                                                        <div class="progress" style="height: 8px;">
                                                            <div class="progress-bar bg-secondary" role="progressbar"
                                                                style="width: 25%" aria-valuenow="15" aria-valuemin="0"
                                                                aria-valuemax="100"></div>
                                                            <div class="progress-bar bg-secondary ms-1"
                                                                role="progressbar" style="width: 25%" aria-valuenow="30"
                                                                aria-valuemin="0" aria-valuemax="100"></div>
                                                            <div class="progress-bar bg-secondary ms-1"
                                                                role="progressbar" style="width: 28%" aria-valuenow="20"
                                                                aria-valuemin="0" aria-valuemax="100"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="item">
                                                <div class="card">
                                                    <div class="card-body">
                                                        <div class="d-flex align-items-center justify-content-between">
                                                            <div class="lesson_name">
                                                                <h6 class="mb-0 fw-bold  fs-6  mb-2">Oil & Gas
                                                                    Operations</h6>
                                                            </div>
                                                            <div class="btn-group dropup">
                                                                <a href="#" class="nav-link py-2 px-3 text-muted"
                                                                    data-bs-toggle="dropdown" aria-expanded="false"><i
                                                                        class="fa fa-ellipsis-v"></i></a>
                                                                <ul
                                                                    class="dropdown-menu border-0 shadow dropdown-menu-end">
                                                                    <li><a class="dropdown-item" href="#">Edit</a></li>
                                                                    <li><a class="dropdown-item" href="#">Share</a></li>
                                                                    <li><a class="dropdown-item" href="#">Delete</a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="d-flex align-items-center">
                                                            <div class="avatar"><img class="avatar rounded-circle"
                                                                    src="assets/images/xs/avatar5.jpg" alt=""></div>
                                                            <div class="flex-fill ms-2 text-truncate">
                                                                <div class="">Andrea Gill</div>
                                                            </div>
                                                            <a href="courses.html" class="btn btn-primary btn-sm"
                                                                alt="join">Join Now</a>
                                                        </div>
                                                        <div class="dividers-block"></div>
                                                        <div class="row g-2">
                                                            <div class="col-6">
                                                                <div class="d-flex align-items-center">
                                                                    <i class="icofont-files-stack "></i>
                                                                    <span class="ms-2">52 Lessons</span>
                                                                </div>
                                                            </div>
                                                            <div class="col-6">
                                                                <div class="d-flex align-items-center">
                                                                    <i class="icofont-ui-timer "></i>
                                                                    <span class="ms-2">2 Month</span>
                                                                </div>
                                                            </div>
                                                            <div class="col-6">
                                                                <div class="d-flex align-items-center">
                                                                    <i class="icofont-group-students "></i>
                                                                    <span class="ms-2">220 Students</span>
                                                                </div>
                                                            </div>
                                                            <div class="col-6">
                                                                <div class="d-flex align-items-center">
                                                                    <i class="icofont-ui-rating "></i>
                                                                    <span class="ms-2">4.5</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="dividers-block"></div>
                                                        <div
                                                            class="d-flex align-items-center justify-content-between mb-2">
                                                            <h4 class="small fw-bold mb-0">Students Join</h4>
                                                            <span class="small">Student Bench 350</span>
                                                        </div>
                                                        <div class="progress" style="height: 8px;">
                                                            <div class="progress-bar bg-secondary" role="progressbar"
                                                                style="width: 25%" aria-valuenow="15" aria-valuemin="0"
                                                                aria-valuemax="100"></div>
                                                            <div class="progress-bar bg-secondary ms-1"
                                                                role="progressbar" style="width: 25%" aria-valuenow="30"
                                                                aria-valuemin="0" aria-valuemax="100"></div>
                                                            <div class="progress-bar bg-secondary ms-1"
                                                                role="progressbar" style="width: 28%" aria-valuenow="20"
                                                                aria-valuemin="0" aria-valuemax="100"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="item">
                                                <div class="card">
                                                    <div class="card-body">
                                                        <div class="d-flex align-items-center justify-content-between">
                                                            <div class="lesson_name">
                                                                <h6 class="mb-0 fw-bold  fs-6  mb-2">Telecommunications
                                                                </h6>
                                                            </div>
                                                            <div class="btn-group dropup">
                                                                <a href="#" class="nav-link py-2 px-3 text-muted"
                                                                    data-bs-toggle="dropdown" aria-expanded="false"><i
                                                                        class="fa fa-ellipsis-v"></i></a>
                                                                <ul
                                                                    class="dropdown-menu border-0 shadow dropdown-menu-end">
                                                                    <li><a class="dropdown-item" href="#">Edit</a></li>
                                                                    <li><a class="dropdown-item" href="#">Share</a></li>
                                                                    <li><a class="dropdown-item" href="#">Delete</a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="d-flex align-items-center">
                                                            <div class="avatar"><img class="avatar rounded-circle"
                                                                    src="assets/images/xs/avatar3.jpg" alt=""></div>
                                                            <div class="flex-fill ms-2 text-truncate">
                                                                <div class="">Karen Clark</div>
                                                            </div>
                                                            <a href="courses.html" class="btn btn-primary btn-sm"
                                                                alt="join">Join Now</a>
                                                        </div>
                                                        <div class="dividers-block"></div>
                                                        <div class="row g-2">
                                                            <div class="col-6">
                                                                <div class="d-flex align-items-center">
                                                                    <i class="icofont-files-stack "></i>
                                                                    <span class="ms-2">12 Lessons</span>
                                                                </div>
                                                            </div>
                                                            <div class="col-6">
                                                                <div class="d-flex align-items-center">
                                                                    <i class="icofont-ui-timer "></i>
                                                                    <span class="ms-2">28 Days</span>
                                                                </div>
                                                            </div>
                                                            <div class="col-6">
                                                                <div class="d-flex align-items-center">
                                                                    <i class="icofont-group-students "></i>
                                                                    <span class="ms-2">78 Students</span>
                                                                </div>
                                                            </div>
                                                            <div class="col-6">
                                                                <div class="d-flex align-items-center">
                                                                    <i class="icofont-ui-rating "></i>
                                                                    <span class="ms-2">4.5</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="dividers-block"></div>
                                                        <div
                                                            class="d-flex align-items-center justify-content-between mb-2">
                                                            <h4 class="small fw-bold mb-0">Students Join</h4>
                                                            <span class="small">Student Bench 100</span>
                                                        </div>
                                                        <div class="progress" style="height: 8px;">
                                                            <div class="progress-bar bg-secondary" role="progressbar"
                                                                style="width: 25%" aria-valuenow="15" aria-valuemin="0"
                                                                aria-valuemax="100"></div>
                                                            <div class="progress-bar bg-secondary ms-1"
                                                                role="progressbar" style="width: 25%" aria-valuenow="30"
                                                                aria-valuemin="0" aria-valuemax="100"></div>
                                                            <div class="progress-bar bg-secondary ms-1"
                                                                role="progressbar" style="width: 28%" aria-valuenow="20"
                                                                aria-valuemin="0" aria-valuemax="100"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="item">
                                                <div class="card">
                                                    <div class="card-body">
                                                        <div class="d-flex align-items-center justify-content-between">
                                                            <div class="lesson_name">
                                                                <h6 class="mb-0 fw-bold  fs-6  mb-2">Power and Energy
                                                                    Engineering</h6>
                                                            </div>
                                                            <div class="btn-group dropup">
                                                                <a href="#" class="nav-link py-2 px-3 text-muted"
                                                                    data-bs-toggle="dropdown" aria-expanded="false"><i
                                                                        class="fa fa-ellipsis-v"></i></a>
                                                                <ul
                                                                    class="dropdown-menu border-0 shadow dropdown-menu-end">
                                                                    <li><a class="dropdown-item" href="#">Edit</a></li>
                                                                    <li><a class="dropdown-item" href="#">Share</a></li>
                                                                    <li><a class="dropdown-item" href="#">Delete</a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="d-flex align-items-center">
                                                            <div class="avatar"><img class="avatar rounded-circle"
                                                                    src="assets/images/xs/avatar3.jpg" alt=""></div>
                                                            <div class="flex-fill ms-2 text-truncate">
                                                                <div class="">Karen Clark</div>
                                                            </div>
                                                            <a href="courses.html" class="btn btn-primary btn-sm"
                                                                alt="join">Join Now</a>
                                                        </div>
                                                        <div class="dividers-block"></div>
                                                        <div class="row g-2">
                                                            <div class="col-6">
                                                                <div class="d-flex align-items-center">
                                                                    <i class="icofont-files-stack "></i>
                                                                    <span class="ms-2">52 Lessons</span>
                                                                </div>
                                                            </div>
                                                            <div class="col-6">
                                                                <div class="d-flex align-items-center">
                                                                    <i class="icofont-ui-timer "></i>
                                                                    <span class="ms-2">2 Month</span>
                                                                </div>
                                                            </div>
                                                            <div class="col-6">
                                                                <div class="d-flex align-items-center">
                                                                    <i class="icofont-group-students "></i>
                                                                    <span class="ms-2">88 Students</span>
                                                                </div>
                                                            </div>
                                                            <div class="col-6">
                                                                <div class="d-flex align-items-center">
                                                                    <i class="icofont-ui-rating "></i>
                                                                    <span class="ms-2">4</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="dividers-block"></div>
                                                        <div
                                                            class="d-flex align-items-center justify-content-between mb-2">
                                                            <h4 class="small fw-bold mb-0">Students Join</h4>
                                                            <span class="small">Student Bench 100</span>
                                                        </div>
                                                        <div class="progress" style="height: 8px;">
                                                            <div class="progress-bar bg-secondary" role="progressbar"
                                                                style="width: 25%" aria-valuenow="15" aria-valuemin="0"
                                                                aria-valuemax="100"></div>
                                                            <div class="progress-bar bg-secondary ms-1"
                                                                role="progressbar" style="width: 25%" aria-valuenow="30"
                                                                aria-valuemin="0" aria-valuemax="100"></div>
                                                            <div class="progress-bar bg-secondary ms-1"
                                                                role="progressbar" style="width: 32%" aria-valuenow="20"
                                                                aria-valuemin="0" aria-valuemax="100"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div> -->
                        </div>
                        <div class="col-lg-4 col-md-12">
                            <div class="card mb-3 color-bg-200">
                                <div class="card-body">
                                    <div class="daily_practice">
                                        <h6 class="mb-3 fw-bold ">Daily Practice</h6>
                                        <div class="row g-2">
                                            <div class="col-12 col-sm-6 col-md-6 col-lg-12 col-xl-6">
                                                <div class="card bg-lightblue ">
                                                    <div class="card-body">
                                                        <h6 class="fw-bold mb-0 color-defult color-defult">Online
                                                            Talking</h6>
                                                        <small class="color-defult">#Listening</small>
                                                        <div
                                                            class="duration d-flex align-items-center justify-content-between pt-5">
                                                            <span class="fw-bold color-defult">20Min</span>
                                                            <span class="fw-bold color-careys-pink"><i
                                                                    class="icofont-listening fs-2"></i></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-12 col-sm-6 col-md-6 col-lg-12 col-xl-6">
                                                <div class="card bg-lightgreen ">
                                                    <div class="card-body">
                                                        <h6 class="fw-bold mb-0 color-defult"> Lesson 3</h6>
                                                        <small class="color-defult">#Video Call</small>
                                                        <div
                                                            class="duration d-flex align-items-center justify-content-between pt-5">
                                                            <span class="fw-bold color-defult">15Min</span>
                                                            <span class="fw-bold color-careys-pink"><i
                                                                    class="icofont-video-cam fs-2"></i></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="dividers-block"></div>
                                    <div class="team_members">
                                        <h6 class="mb-3 fw-bold ">Your College Mates</h6>
                                        <div class="owl-carousel owl-theme owl-carouselone">
                                            <div class="item text-center">
                                                <img src="assets/images/sm/avatar3.jpg" alt=""
                                                    class="rounded-3 img-thumbnail shadow-sm">
                                                <h6 class="mb-0 rounded-3">Peter Bower</h6>
                                            </div>
                                            <div class="item text-center">
                                                <img src="assets/images/sm/avatar5.jpg" alt=""
                                                    class="rounded-3 img-thumbnail shadow-sm">
                                                <h6 class="mb-0 rounded-3">Joshu Turn</h6>
                                            </div>
                                            <div class="item text-center">
                                                <img src="assets/images/sm/avatar8.jpg" alt=""
                                                    class="rounded-3 img-thumbnail shadow-sm">
                                                <h6 class="mb-0 rounded-3">Ryan Bell</h6>
                                            </div>
                                            <div class="item text-center">
                                                <img src="assets/images/sm/avatar9.jpg" alt=""
                                                    class="rounded-3 img-thumbnail shadow-sm">
                                                <h6 class="mb-0 rounded-3">Sean Jones</h6>
                                            </div>
                                            <div class="item text-center">
                                                <img src="assets/images/sm/avatar11.jpg" alt=""
                                                    class="rounded-3 img-thumbnail shadow-sm">
                                                <h6 class="mb-0 rounded-3">Max Morg</h6>
                                            </div>
                                            <div class="item text-center">
                                                <img src="assets/images/sm/avatar10.jpg" alt=""
                                                    class="rounded-3 img-thumbnail shadow-sm">
                                                <h6 class="mb-0 rounded-3">Colin Rees</h6>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="dividers-block"></div>
                                    <div class="upcoming-lessons">
                                        <h6 class="mb-3 fw-bold ">Upcoming-Lessons</h6>
                                        <div class="card line-lightblue mb-3">
                                            <div class="card-body">
                                                <div class="d-flex align-items-center justify-content-between">
                                                    <div class="lesson_name">
                                                        <h6 class="mb-0 fw-bold ">Civil Law</h6>
                                                        <small class="text-muted">Thu 15, 4 PM to 6 PM</small>
                                                    </div>
                                                    <div class="btn-group dropup">
                                                        <a href="#" class="nav-link py-2 px-3 text-muted"
                                                            data-bs-toggle="dropdown" aria-expanded="false"><i
                                                                class="fa fa-ellipsis-v"></i></a>
                                                        <ul class="dropdown-menu border-0 shadow dropdown-menu-end">
                                                            <li><a class="dropdown-item" href="#">Edit</a></li>
                                                            <li><a class="dropdown-item" href="#">Share</a></li>
                                                            <li><a class="dropdown-item" href="#">Delete</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="d-flex align-items-center justify-content-between mt-5">
                                                    <div class="avatar-list avatar-list-stacked">
                                                        <img class="avatar rounded-circle"
                                                            src="assets/images/xs/avatar2.jpg" alt="">
                                                        <img class="avatar rounded-circle"
                                                            src="assets/images/xs/avatar1.jpg" alt="">
                                                        <img class="avatar rounded-circle"
                                                            src="assets/images/xs/avatar3.jpg" alt="">
                                                        <img class="avatar rounded-circle"
                                                            src="assets/images/xs/avatar4.jpg" alt="">
                                                    </div>
                                                    <div class="add_lession_person avatar-list">
                                                        <span class="avatar rounded-circle text-center pointer"
                                                            data-bs-toggle="modal" data-bs-target="#addUser"><i
                                                                class="icofont-ui-add"></i></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card line-lightgreen">
                                            <div class="card-body">
                                                <div class="d-flex align-items-center justify-content-between">
                                                    <div class="lesson_name">
                                                        <h6 class="mb-0 fw-bold ">Arts and Design</h6>
                                                        <small class="text-muted">Thu 15, 2 PM to 4 PM</small>
                                                    </div>
                                                    <div class="btn-group dropup">
                                                        <a href="#" class="nav-link py-2 px-3 text-muted"
                                                            data-bs-toggle="dropdown" aria-expanded="false"><i
                                                                class="fa fa-ellipsis-v"></i></a>
                                                        <ul class="dropdown-menu border-0 shadow dropdown-menu-end">
                                                            <li><a class="dropdown-item" href="#">Edit</a></li>
                                                            <li><a class="dropdown-item" href="#">Share</a></li>
                                                            <li><a class="dropdown-item" href="#">Delete</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="d-flex align-items-center justify-content-between mt-5">
                                                    <div class="avatar-list avatar-list-stacked">
                                                        <img class="avatar rounded-circle"
                                                            src="assets/images/xs/avatar7.jpg" alt="">
                                                        <img class="avatar rounded-circle"
                                                            src="assets/images/xs/avatar8.jpg" alt="">
                                                        <img class="avatar rounded-circle"
                                                            src="assets/images/xs/avatar9.jpg" alt="">
                                                        <img class="avatar rounded-circle"
                                                            src="assets/images/xs/avatar10.jpg" alt="">
                                                    </div>
                                                    <div class="add_lession_person avatar-list">
                                                        <span class="avatar rounded-circle text-center pointer"
                                                            data-bs-toggle="modal" data-bs-target="#addUser"><i
                                                                class="icofont-ui-add"></i></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div><!-- Row End -->
                </div>
            </div>

            <!-- Modal Members-->
            <div class="modal fade" id="addUser" tabindex="-1" aria-labelledby="addUserLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title  fw-bold" id="addUserLabel">Invite Friend's</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <div class="inviteby_email">
                                <div class="input-group mb-3">
                                    <input type="text" class="form-control" placeholder="Members Invite"
                                        aria-label="Recipient's username" aria-describedby="button-addon2">
                                    <button class="btn btn-dark" type="button" id="button-addon2">Members
                                        Invite</button>
                                </div>
                            </div>
                            <div class="members_list">
                                <h6 class="fw-bold ">Members of e-Learn</h6>
                                <ul class="list-unstyled list-group list-group-custom list-group-flush mb-0">
                                    <li class="list-group-item py-3 text-center text-md-start">
                                        <div class="d-flex align-items-center flex-column flex-sm-column flex-md-row">
                                            <div class="no-thumbnail mb-2 mb-md-0">
                                                <img class="avatar lg rounded-circle" src="assets/images/xs/avatar2.jpg"
                                                    alt="">
                                            </div>
                                            <div class="flex-fill ms-3 text-truncate">
                                                <h6 class="mb-0  fw-bold">Rachel Carr(you)</h6>
                                                <span class="text-muted">rachel.carr@gmail.com</span>
                                            </div>
                                            <div class="members-action">
                                                <span class="members-role ">Admin</span>
                                                <div class="btn-group">
                                                    <button type="button" class="btn bg-transparent dropdown-toggle"
                                                        data-bs-toggle="dropdown" aria-expanded="false">
                                                        <i class="icofont-ui-settings  fs-6"></i>
                                                    </button>
                                                    <ul class="dropdown-menu dropdown-menu-end">
                                                        <li><a class="dropdown-item" href="#"><i
                                                                    class="icofont-ui-password fs-6 me-2"></i>ResetPassword</a>
                                                        </li>
                                                        <li><a class="dropdown-item" href="#"><i
                                                                    class="icofont-chart-line fs-6 me-2"></i>ActivityReport</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list-group-item py-3 text-center text-md-start">
                                        <div class="d-flex align-items-center flex-column flex-sm-column flex-md-row">
                                            <div class="no-thumbnail mb-2 mb-md-0">
                                                <img class="avatar lg rounded-circle" src="assets/images/xs/avatar3.jpg"
                                                    alt="">
                                            </div>
                                            <div class="flex-fill ms-3 text-truncate">
                                                <h6 class="mb-0  fw-bold">Lucas Baker<a href="#"
                                                        class="link-secondary ms-2">(Resend invitation)</a></h6>
                                                <span class="text-muted">lucas.baker@gmail.com</span>
                                            </div>
                                            <div class="members-action">
                                                <div class="btn-group">
                                                    <button type="button" class="btn bg-transparent dropdown-toggle"
                                                        data-bs-toggle="dropdown" aria-expanded="false">
                                                        Members
                                                    </button>
                                                    <ul class="dropdown-menu dropdown-menu-end">
                                                        <li>
                                                            <a class="dropdown-item" href="#">
                                                                <i class="icofont-check-circled"></i>
                                                                Member
                                                                <span>Can view, edit, delete, comment on and save
                                                                    files</span>
                                                            </a>

                                                        </li>
                                                        <li>
                                                            <a class="dropdown-item" href="#">
                                                                <i class="fs-6 p-2 me-1"></i>
                                                                Admin
                                                                <span>Member, but can invite and manage team
                                                                    members</span>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="btn-group">
                                                    <button type="button" class="btn bg-transparent dropdown-toggle"
                                                        data-bs-toggle="dropdown" aria-expanded="false">
                                                        <i class="icofont-ui-settings  fs-6"></i>
                                                    </button>
                                                    <ul class="dropdown-menu dropdown-menu-end">
                                                        <li><a class="dropdown-item" href="#"><i
                                                                    class="icofont-delete-alt fs-6 me-2"></i>Delete
                                                                Member</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="list-group-item py-3 text-center text-md-start">
                                        <div class="d-flex align-items-center flex-column flex-sm-column flex-md-row">
                                            <div class="no-thumbnail mb-2 mb-md-0">
                                                <img class="avatar lg rounded-circle" src="assets/images/xs/avatar8.jpg"
                                                    alt="">
                                            </div>
                                            <div class="flex-fill ms-3 text-truncate">
                                                <h6 class="mb-0  fw-bold">Una Coleman</h6>
                                                <span class="text-muted">una.coleman@gmail.com</span>
                                            </div>
                                            <div class="members-action">
                                                <div class="btn-group">
                                                    <button type="button" class="btn bg-transparent dropdown-toggle"
                                                        data-bs-toggle="dropdown" aria-expanded="false">
                                                        Members
                                                    </button>
                                                    <ul class="dropdown-menu dropdown-menu-end">
                                                        <li>
                                                            <a class="dropdown-item" href="#">
                                                                <i class="icofont-check-circled"></i>
                                                                Member
                                                                <span>Can view, edit, delete, comment on and save
                                                                    files</span>
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a class="dropdown-item" href="#">
                                                                <i class="fs-6 p-2 me-1"></i>
                                                                Admin
                                                                <span>Member, but can invite and manage team
                                                                    members</span>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="btn-group">
                                                    <div class="btn-group">
                                                        <button type="button" class="btn bg-transparent dropdown-toggle"
                                                            data-bs-toggle="dropdown" aria-expanded="false">
                                                            <i class="icofont-ui-settings  fs-6"></i>
                                                        </button>
                                                        <ul class="dropdown-menu dropdown-menu-end">
                                                            <li><a class="dropdown-item" href="#"><i
                                                                        class="icofont-ui-password fs-6 me-2"></i>ResetPassword</a>
                                                            </li>
                                                            <li><a class="dropdown-item" href="#"><i
                                                                        class="icofont-chart-line fs-6 me-2"></i>ActivityReport</a>
                                                            </li>
                                                            <li><a class="dropdown-item" href="#"><i
                                                                        class="icofont-delete-alt fs-6 me-2"></i>Suspend
                                                                    member</a></li>
                                                            <li><a class="dropdown-item" href="#"><i
                                                                        class="icofont-not-allowed fs-6 me-2"></i>Delete
                                                                    Member</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery Core Js -->
    <script src="assets/bundles/libscripts.bundle.js"></script>

    <!-- Plugin Js-->
    <script src="node_modules/owl.carousel2/dist/owl.carousel.min.js"></script>
    <script src="assets/bundles/apexcharts.bundle.js"></script>

    <!-- Jquery Page Js -->
    <script src="js/template.js"></script>
    <script src="js/page/elearn-index.js"></script>
</body>

</html>