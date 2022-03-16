<div class="sidebar px-4 py-4 py-md-4 me-0 sidebar-mini">
    <div class="d-flex flex-column h-100">
        <a href="index.html" class="mb-0 brand-icon">
            <span class="logo-icon">
                <svg width="35" height="35" fill="currentColor" class="bi bi-app-indicator" viewBox="0 0 16 16">
                    <path
                        d="M5.5 2A3.5 3.5 0 0 0 2 5.5v5A3.5 3.5 0 0 0 5.5 14h5a3.5 3.5 0 0 0 3.5-3.5V8a.5.5 0 0 1 1 0v2.5a4.5 4.5 0 0 1-4.5 4.5h-5A4.5 4.5 0 0 1 1 10.5v-5A4.5 4.5 0 0 1 5.5 1H8a.5.5 0 0 1 0 1H5.5z" />
                    <path d="M16 3a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
                </svg>
            </span>
            <span class="logo-text">e-Learn</span>
        </a>
        <!-- Menu: main ul -->
        <ul class="menu-list flex-grow-1 mt-3">
            <li><a class="m-link active" href="index.html"><i class="icofont-ui-home"></i><span>Dashboard</span></a>
            </li>
            <li><a class="m-link" href="classes.html"><i class="icofont-read-book-alt"></i> <span>Classes</span></a>
            </li>
            <?php if ($_SESSION['level_user'] == 1 || $_SESSION['level_user'] == 2) { ?>

            <li><a class="m-link" href="students.html"><i class="icofont-group-students"></i> <span>Students</span></a>
                <?php } ?>
            </li>

            <?php if ($_SESSION['level_user'] == 1) { ?>
            <li class="collapsed"><a class="m-link" data-bs-toggle="collapse" data-bs-target="#menu-Teachers"
                    href="#"><i class="icofont-teacher"></i><span>Teachers</span><span
                        class="arrow icofont-dotted-down ms-auto text-end fs-5"></span></a>
                <ul class="sub-menu collapse" id="menu-Teachers">
                    <li><a class="ms-link" href="all-teachers.html"><span>Teachers</span></a></li>
                    <li><a class="ms-link" href="teachers-info.html"><span>Teachers Profile</span></a></li>
                </ul>
            </li>
            <?php } ?>
            <li class="collapsed"><a class="m-link" data-bs-toggle="collapse" data-bs-target="#corses-Components"
                    href="#"><i class="icofont-certificate"></i> <span>Materi</span><span
                        class="arrow icofont-dotted-down ms-auto text-end fs-5"></span></a>
                <!-- <ul class="sub-menu collapse" id="corses-Components">
                    <li><a class="ms-link" href="courses.html"><span>Courses</span></a></li>
                    <li><a class="ms-link" href="purchase.html"><span>Course Purchase</span></a></li>
                </ul> -->
            </li>
            <!-- <li><a class="m-link" href="chat.html"><i class="icofont-ui-text-chat"></i> <span>Massages</span></a></li>
            <li><a class="m-link" href="reviews.html"><i class="icofont-match-review"></i> <span>Reviews</span></a></li>
            <li><a class="m-link" href="file-storage/index.html"><i class="icofont-cloud-upload"></i> <span>File
                        Cloud</span></a></li> -->
            <!-- <li><a class="m-link" href="ui-elements/ui-alerts.html"><i class="icofont-paint"></i> <span>UI
                        Components</span></a></li> -->
        </ul>
        <!-- Theme: Switch Theme -->
        <!-- <ul class="list-unstyled mb-0">
            <li class="d-flex align-items-center justify-content-center">
                <div class="form-check form-switch theme-switch">
                    <input class="form-check-input" type="checkbox" id="theme-switch">
                    <label class="form-check-label" for="theme-switch">Enable Dark Mode!</label>
                </div>
            </li>
        </ul> -->
        <!-- Menu: menu collepce btn -->
        <button type="button" class="btn btn-link sidebar-mini-btn text-light">
            <span class="ms-2"><i class="icofont-bubble-right"></i></span>
        </button>
    </div>
</div>