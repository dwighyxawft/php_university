
<?php 
require("./db.php");
$setters = new Setters();
if(!isset($_GET["course_id"])){
  echo $setters->redirect("about.php");
}else{
  $course_id = $_GET["course_id"];
}
$setters->query = "SELECT * FROM courses WHERE course_id='$course_id'";
$course = $setters->fetch_assoc();
$department_id = $course["department_id"];
$staff_id = $course["staff_id"];
$setters->query = "SELECT * FROM department WHERE department_id='$department_id'";
$department = $setters->fetch_assoc();
$setters->query = "SELECT * FROM staff WHERE staff_id='$staff_id'";
$staff = $setters->fetch_assoc();
$setters->query = "SELECT * FROM staff WHERE department_id='$department_id' AND role='H.O.D'";
$head = $setters->fetch_assoc();
$setters->query = "SELECT * FROM materials WHERE staff_id='$staff_id' AND course_id='$course_id'";
$materials = $setters->fetch_all();

?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>University Website</title>
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <script src="js/jquery-3.5.1.min.js"></script>
  <script src="js/popper2.js"></script>
  <script src="js/bootstrap.min.js"></script></head>
  <style>
    body {
      font-family: Arial, sans-serif;
    }

    .navbar {
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    .hero-image {
      position: relative;
    }

    .hero-text {
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      text-align: center;
      color: white;
    }

    .card-img-top {
      height: 200px;
      object-fit: cover;
    }

  </style>
<body>
  <header class="bg-light py-3">
    <div class="container">
        <div class="d-flex justify-content-between align-items-center">
            <a class="navbar-brand" href="#">University Course</a>
            <?php require("./nav.php"); ?>
        </div>
    </div>
  </header>

  <div class="container my-5">
    <div class="row">
      <div class="col-md-12">
        <div class="hero-image">
          <img src="<?php echo $course["image"];?>" class="img-fluid" alt="<?php echo $course["code"];?>">
          <div class="hero-text">
            <h1><?php echo $course["name"];?></h1>
            <p><?php echo $course["description"];?></p>
            <p>Learn about the diverse courses, research opportunities, and our dedicated faculty.</p>
          </div>
        </div>
      </div>
    </div>

    <div class="row mt-5">
      <div class="col-md-4">
        <h5>Departmental Facts</h5>
        <p>#<?php echo $department["fee"];?>.00 per semester</p>
        <p><?php echo $department["student"];?> undergraduates</p>
      </div>
      <div class="col-md-8">
        <div class="row row-cols-1 row-cols-md-2 g-4">
          <div class="col">
            <div class="card h-100">
              <img src="<?php echo $department["image"];?>" class="card-img-top" alt="<?php echo $department["name"];?>">
              <div class="card-body">
                <h5 class="card-title"><?php echo $department["name"];?></h5>
                <p class="card-text"><?php echo $department["description"];?></p>
              </div>
            </div>
          </div>
          <div class="col">
            <div class="card h-100">
              <img src="<?php echo $head["image"];?>" class="card-img-top" alt="<?php echo $head["name"];?>">
              <div class="card-body">
                <h5 class="card-title"><?php echo $head["name"];?></h5>
                <p class="card-text"><?php echo $head["bio"];?></p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="row mt-5">
      <div class="col-md-6">
        <h5>Materials</h5>
        <div class="row row-cols-1 row-cols-md-2 g-4">
          <?php foreach($materials as $material){ ?>
            <div class="col">
              <div class="card h-100">
                <img src="<?php echo $material["thumbnail"];?>" class="card-img-top" alt="<?php echo $material["title"];?>">
                <div class="card-body">
                  <h5 class="card-title"><?php echo $material["title"];?></h5>
                  <a download="<?php echo $material["file_path"];?>" class="btn btn-primary">Download</a>
                </div>
              </div>
            </div>
          <?php } ?>
        </div>
      </div>
      <div class="col-md-6">
        <h5>Enrollment</h5>
        <p class="display-4"><?php echo $department["student"];?></p>
        <p>Students enrolled</p>
        <h5 class="mt-4"><?php echo $course["name"];?></h5>
        <p><?php echo $course["description"];?></p>
      </div>
    </div>

    <div class="row mt-5">
      <div class="col-md-12">
        <h5>Lecturer In Charge</h5>
        <div class="card mb-3">
          <div class="row g-0">
            <div class="col-md-2">
              <img src="<?php echo $staff["image"];?>" class="img-fluid rounded-start" alt="<?php echo $staff["name"];?>">
            </div>
            <div class="col-md-10">
              <div class="card-body">
                <h5 class="card-title"><?php echo $staff["name"];?></h5>
                <p class="card-text"><?php echo $staff["role"];?></p>
                <a href="s_details.php?staff_id=<?php echo $staff["staff_id"];?>" class="btn btn-primary">View Profile</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

