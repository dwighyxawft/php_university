<?php
require("./db.php");
$setters = new Setters();

$setters->query = "SELECT * FROM publications";
$pubs = $setters->fetch_all();
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>University of California, San Francisco</title>
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <script src="js/jquery-3.5.1.min.js"></script>
  <script src="js/popper2.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <style>
    .publication-item {
      display: flex;
      align-items: center;
      padding: 0.5rem 1rem;
    }
    .publication-item img {
      width: 32px;
      height: 32px;
      margin-right: 0.5rem;
    }
    .publication-item .btn {
      margin-left: auto;
    }
  </style>
</head>
<body>
<header class="bg-light py-3">
    <div class="container">
        <div class="d-flex justify-content-between align-items-center">
            <a class="navbar-brand" href="#">University Publications</a>
            <?php require("./nav.php"); ?>
        </div>
    </div>
</header>

  <div class="container">
    <h2>Publications</h2>
    <input class="form-control mb-3" type="text" placeholder="Search for a publication">

    <div class="list-group">
      <?php foreach($pubs as $pub){ ?>
        <div class="list-group-item publication-item">
            <img src="<?php echo $pub["image"];?>" alt="Book Icon">
            <?php echo $pub["title"];?>
            <a download="<?php echo $pub["file"];?>" class="btn btn-primary btn-sm">Download PDF</a>
        </div>
      <?php }?>
    </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>