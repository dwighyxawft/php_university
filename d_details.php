<?php
    require("./db.php");
    $setters = new Setters();
    if(!isset($_GET["department_id"])){
        echo $setters->redirect("about.php");
    }else{
        $department_id = $_GET["department_id"];
    }
    $setters->query = "SELECT * FROM department WHERE department_id='$department_id'";
    $department = $setters->fetch_assoc();
    $setters->query = "SELECT * FROM staff WHERE department_id='$department_id'";
    $staffs = $setters->fetch_all();
    $staff_count = count($staffs);
    $setters->query = "SELECT * FROM courses WHERE department_id='$department_id'";
    $courses = $setters->fetch_all();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>University Website - <?php echo $department["name"];?></title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/jquery-3.5.1.min.js"></script>
    <script src="js/popper2.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <style>
        .nav-link {
            color: black !important;
        }
        .navbar-brand {
            font-weight: bold;
        }
        .content-section {
            padding: 20px;
        }
        .department-info {
            margin-top: 20px;
        }
        .course-image, .staff-image {
            width: 100px;
            height: 100px;
            object-fit: cover;
        }
        .footer {
            background-color: #f8f9fa;
            padding: 20px;
        }
    </style>
</head>
<body>

<header class="bg-light py-3">
    <div class="container">
        <div class="d-flex justify-content-between align-items-center">
            <a class="navbar-brand" href="#">University Faculty</a>
            <?php require("./nav.php"); ?>
        </div>
    </div>
  </header>
<div class="container content-section">
    <div class="row">
        <div class="col-12">
            <img src="https://via.placeholder.com/1200x400" class="img-fluid" alt="<?php echo $department["name"];?>">
            <h1 class="mt-3"><?php echo $department["name"];?></h1>
        </div>
    </div>
    <div class="row department-info">
        <div class="col-12">
            <h2><?php echo $department["description"];?></h2>
            <p>Learn about the diverse courses, research opportunities, and our dedicated faculty.</p>
            <table class="table">
                <tbody>
                    <tr>
                        <th scope="row">Departmental Fees</th>
                        <td>#<?php echo $department["fees"];?>.00 per semester</td>
                    </tr>
                    <tr>
                        <th scope="row">Number of Students</th>
                        <td><?php echo $department["students"];?> undergraduates</td>
                    </tr>
                    <tr>
                        <th scope="row">Number of Staff</th>
                        <td><?php echo $staff_count;?> departmental members</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div class="row">
        <div class="col-12">
            <h2>Departmental Courses</h2>
            <?php foreach($courses as $course){ ?>
                <div class="row mt-3">
                    <a href="c_details.php?course_id=<?php echo $course["course_id"];?>" style="text-decoration:none;">
                        <div class="col-md-6">
                            <h3><?php echo $course["code"];?>: <?php echo $course["name"];?></h3>
                            <p><?php echo $course["description"];?></p>
                        </div>
                        <div class="col-md-6">
                            <img src="<?php echo $course["image"];?>" class="course-image" alt="<?php echo $course["name"];?>">
                        </div>  
                    </a>
                </div>
            <?php } ?>
        </div>
    </div>
    <div class="row department-info">
        <div class="col-12">
            <h2>Department Staff</h2>
            <div class="row">
                <?php foreach($staffs as $staff){ ?>
                    <div class="col-md-6 d-flex align-items-center">
                        <img src="<?php echo $staff["image"]; ?>" class="staff-image rounded-circle me-3" alt="<?php echo $staff["name"]; ?>">
                        <div>
                            <h4><?php echo $staff["name"]; ?></h4>
                            <p><?php echo $staff["role"]; ?></p>
                            <a href="s_details.php?staff_id=<?php echo $staff["staff_id"]; ?>" class="btn btn-outline-primary">View Profile</a>
                        </div>
                    </div>
                <?php } ?>
            </div>
        </div>
    </div>
</div>
<footer class="footer text-center mt-5">
    <div class="container">
        <p class="mb-1">© 2023 University Website. All rights reserved.</p>
        <a href="#" class="text-decoration-none me-2">Privacy Policy</a>
        <a href="#" class="text-decoration-none me-2">Terms of Service</a>
        <a href="#" class="text-decoration-none me-2">Accessibility</a>
        <a href="#" class="text-decoration-none">Site Map</a>
        <div class="mt-3">
            <a href="#" class="text-decoration-none me-2"><i class="bi bi-facebook"></i></a>
            <a href="#" class="text-decoration-none me-2"><i class="bi bi-twitter"></i></a>
            <a href="#" class="text-decoration-none"><i class="bi bi-linkedin"></i></a>
        </div>
    </div>
</footer>
</body>
</html>