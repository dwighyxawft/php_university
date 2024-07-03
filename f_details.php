<?php
require("./db.php");
$setters = new Setters();
if(!isset($_GET["faculty_id"])){
  echo $setters->redirect("faculty.php");
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>University Website</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="styles.css">
</head>
<style>
    body {
    font-family: Arial, sans-serif;
    }

    .navbar {
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    .card-img-top {
    height: 200px;
    object-fit: cover;
    }

    .rounded-circle {
    width: 300px;
    height: 300px;
    }
</style>
<body>
  <header class="bg-light py-3">
    <div class="container">
        <div class="d-flex justify-content-between align-items-center">
            <a class="navbar-brand" href="#"><img src="images/oou.png" width="100" alt=""></a>
            <?php require("./nav.php"); ?>
        </div>
    </div>
  </header>

  <?php
    $faculty_id = $_GET["faculty_id"];
    $setters->query = "SELECT * FROM faculty WHERE faculty_id='$faculty_id'";
    $faculty = $setters->fetch_assoc();
  ?>
  <div class="container my-5">
    <div class="row">
      <div class="col-md-4">
        <img src="https://via.placeholder.com/300x300" class="img-fluid rounded-circle mb-3" alt="Faculty Picture">
        <h3><?php echo $faculty["name"];?></h3>
        <p><?php echo $faculty["description"];?></p>
        <p>Faculty Meta Information</p>

        <div class="card mt-3 border-0">
          <img src="<?php echo $faculty["dean_image"]?>" alt="" class="card-img-top">
          <h5 class="text-center pt-2"><?php echo $faculty["dean_name"]?></h5>
          <h6 class="text-center"><strong><?php echo $faculty["dean_role"]?></strong></h6>
        </div>
      </div>
      <div class="col-md-8">
        <h2>Departments</h2>
        <div class="row row-cols-1 row-cols-md-5 g-4">
        <?php
          $setters->query = "SELECT * FROM department WHERE faculty_id='$faculty_id'";
          $departments = $setters->fetch_all();
          foreach($departments as $department){
        ?>
          <div class="col-md-4">
            <a href="d_details.php?department_id=<?php echo $department["department_id"]?>" style="text-decoration: none;">
              <div class="card h-100">
                <img src="<?php echo $department["image"]?>" class="card-img-top" alt="Department of Biology">
                <div class="card-body">
                  <h5 class="card-title"><?php echo $department["name"]?></h5>
                  <p class="card-text"><?php echo $department["description"]?></p>
                </div>
              </div>
            </a>
          </div>
        <?php } ?>
        </div>
      </div>
    </div>

    <div class="row mt-5">
      <div class="col-md-3">
        <div class="card h-100">
          <div class="card-body">
            <h5 class="card-title"><i class="bi bi-book me-2"></i> Research Opportunities</h5>
            <p class="card-text">Find out about available research projects</p>
          </div>
        </div>
      </div>
      <div class="col-md-3">
        <div class="card h-100">
          <div class="card-body">
            <h5 class="card-title"><i class="bi bi-people me-2"></i> Student Life</h5>
            <p class="card-text">Learn about campus life and activities</p>
          </div>
        </div>
      </div>
      <div class="col-md-3">
        <div class="card h-100">
          <div class="card-body">
            <h5 class="card-title"><i class="bi bi-award me-2"></i> Alumni Network</h5>
            <p class="card-text">Connect with our distinguished alumni</p>
          </div>
        </div>
      </div>
      <div class="col-md-3">
        <div class="card h-100">
          <div class="card-body">
            <h5 class="card-title"><i class="bi bi-calendar-event me-2"></i> Upcoming Events</h5>
            <p class="card-text">Don't miss our latest events</p>
          </div>
        </div>
      </div>
    </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
</body>
</html>