<?php require("./db.php");
$setters = new Setters();
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>University of California, Berkeley</title>
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

  .btn-success {
  background-color: #28a745;
  border-color: #28a745;
  }

  .btn-success:hover {
  background-color: #218838;
  border-color: #1e7e34;
  }
</style>
<body>
  <header class="bg-light py-3">
    <div class="container">
        <div class="d-flex justify-content-between align-items-center">
            <a class="navbar-brand" href="#">University Faculties</a>
            <?php require("./nav.php"); ?>
        </div>
    </div>
  </header>

  <div class="container my-5">
    <div class="row">
      <div class="col-md-12">
        <div class="hero-image">
          <img src="https://via.placeholder.com/1200x500" class="img-fluid" alt="UC Berkeley">
          <div class="hero-text">
            <h1>Discover the world of UC Berkeley</h1>
            <div class="input-group mb-3">
              <input type="text" class="form-control" placeholder="Search for programs, departments, people, and more" aria-label="Search" aria-describedby="button-addon2">
              <button class="btn btn-primary" type="button" id="button-addon2">Search</button>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="row row-cols-1 row-cols-md-5 g-4 mt-5">
    <?php
    $setters->query = "SELECT * FROM faculty";
    $faculties = $setters->fetch_all();
    foreach ($faculties as $faculty) {
      ?> 
      <div class="col-md-3">
        <a href="f_details.php?faculty_id=<?php echo $faculty["faculty_id"]?>" style="text-decoration: none;">
          <div class="card h-100">
            <img src="<?php echo $faculty["image"] ?>" class="card-img-top" alt="College of Letters & Science">
            <div class="card-body">
              <h5 class="card-title"><?php echo $faculty["name"] ?></h5>
              <p class="card-text"><?php echo $faculty["description"] ?></p>
            </div>
          </div>
        </a>
      </div>
      
    <?php
    }
  ?>
      
    </div>

  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>