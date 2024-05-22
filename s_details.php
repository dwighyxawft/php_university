<?php
    require("./db.php");
    $setters = new Setters();
    if(!isset($_GET["staff_id"])){
        echo $setters->redirect("about.php");
    }else{
        $staff_id = $_GET["staff_id"];
    }
    $setters->query = "SELECT * FROM staff WHERE staff_id='$staff_id'";
    $staff = $setters->fetch_assoc();
    $qualification = explode(",", $staff["qualification"]);
    $department_id = $staff["department_id"];
    $setters->query = "SELECT * FROM department WHERE department_id='$department_id'";
    $department = $setters->fetch_assoc();
    $faculty_id = $department["faculty_id"];
    $setters->query = "SELECT * FROM courses WHERE staff_id='$staff_id'";
    $courses = $setters->fetch_all();
    $setters->query = "SELECT * FROM faculty WHERE ='$faculty_id'";
    $faculty = $setters->fetch_assoc();
    $setters->query = "SELECT * FROM publication WHERE staff_id='$staff_id'";
    $publications = $setters->fetch_all();
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Faculty Profile</title>
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <script src="js/jquery-3.5.1.min.js"></script>
  <script src="js/popper2.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <style>
    .profile-header {
      display: flex;
      align-items: center;
      padding: 20px 0;
    }
    .profile-header img {
      border-radius: 50%;
      margin-right: 20px;
    }
    .profile-header .info {
      line-height: 1.5;
    }
    .profile-header .info h1 {
      margin: 0;
      font-size: 24px;
    }
    .profile-header .info .details {
      color: #666;
    }
    .links {
      list-style: none;
      padding: 0;
    }
    .links li {
      display: flex;
      justify-content: space-between;
      padding: 10px 0;
      border-bottom: 1px solid #e9ecef;
    }
    .links li:last-child {
      border-bottom: none;
    }
    .links a {
      color: #000;
      text-decoration: none;
    }
    .publications,
    .qualifications {
      padding: 20px 0;
    }
    .publications h3,
    .qualifications h3 {
      margin-bottom: 20px;
    }
    .list-item {
      display: flex;
      align-items: center;
      margin-bottom: 10px;
    }
    .list-item .icon {
      margin-right: 10px;
    }
  </style>
</head>
<body>
  <header class="bg-light py-3">
    <div class="container">
      <div class="d-flex justify-content-between align-items-center">
        <a class="navbar-brand" href="#">University</a>
        <nav>
          <ul class="nav">
            <li class="nav-item"><a class="nav-link" href="courses.php?staff_id=<?php echo $staff_id;?>">Courses</a></li>
            <li class="nav-item"><a class="nav-link" href="contact.php">Contact</a></li>
            <li class="nav-item"><a class="nav-link" href="p_details.php?staff_id=<?php echo $staff_id;?>">Publications</a></li>
          </ul>
        </nav>
      </div>
    </div>
  </header>

  <section class="container">
    <div class="profile-header">
      <img src="<?php echo $staff["image"];?>" alt="<?php echo $staff["name"];?>" width="150" height="150">
      <div class="info">
        <h1><?php echo $staff["name"];?></h1>
        <p class="details"><?php echo $staff["role"];?> | <?php echo $department["name"];?> | <?php echo $faculty["name"];?></p>
        <p class="details"><?php echo $staff["bio"];?></p>
      </div>
    </div>

    <ul class="links">
      <li>
        <span>Courses Taught</span>
        <span><?php echo count($courses);?></span>
      </li>
      <li>
        <span>Publications</span>
        <span><?php echo count($publications);?></span>
      </li>
      <li>
        <span>Qualifications</span>
        <span><?php echo $qualification[0];?></span>
      </li>
      <li>
        <span>Age</span>
        <span><?php echo $staff["age"];?> years</span>
      </li>
      <li>
        <span>Gender</span>
        <span><?php echo $staff["gender"];?></span>
      </li>
    </ul>

    <p>Extended staff biography and other relevant details.</p>

    <div class="publications">
      <h3>Recent Publications</h3>
      <div class="list-item">
        <div class="icon">
          <i class="bi bi-file-earmark-text"></i>
        </div>
        <div><?php echo $publication[0]["title"];?></div>
        <div class="ms-auto">
          <a href="<?php echo $publication[0]["file"];?>" download="<?php echo $publication[0]["file"];?>"><i class="bi bi-link"></i></a>
        </div>
      </div>
      <div class="list-item">
        <div class="icon">
          <i class="bi bi-file-earmark-text"></i>
        </div>
        <div><?php echo $publication[1]["title"];?></div>
        <div class="ms-auto">
          <a href="<?php echo $publication[1]["file"];?>" download="<?php echo $publication[1]["file"];?>"><i class="bi bi-link"></i></a>
        </div>
      </div>
    </div>

    <div class="qualifications">
      <h3>Qualifications</h3>
      <?php foreach($qualification as $quality){ ?>
        <div class="list-item">
          <div class="icon">
            <i class="bi bi-award"></i>
          </div>
          <div><?php echo $quality;?></div>
        </div>
      <?php } ?>
      
    </div>
  </section>

  <footer class="bg-light py-3 text-center">
    <div class="container">
      <p class="mb-0">&copy; University</p>
    </div>
  </footer>
</body>
</html>
