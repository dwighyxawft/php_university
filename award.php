<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>University Website</title>
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <script src="js/jquery-3.5.1.min.js"></script>
  <script src="js/popper2.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <style>
    /* Custom styles */
    .navbar-nav .nav-link {
      color: #333;
      font-weight: bold;
      margin-right: 20px;
    }
    .navbar-nav .nav-link:hover {
      color: #666;
    }
    .award-winners img {
      max-width: 100%;
      height: auto;
    }
  </style>
</head>
<body>
    <header class="bg-light py-3">
        <div class="container">
            <div class="d-flex justify-content-between align-items-center">
                <a class="navbar-brand" href="#">University Awards</a>
                <?php require("./nav.php"); ?>
            </div>
        </div>
      </header>

  <div class="container my-5">
    <div class="row">
      <div class="col-md-6">
        <img src="images/award.png" style="height: auto; width: 100%;" alt="Awards & Recognition" class="img-fluid">
      </div>
      <div class="col-md-6">
        <h2 class="mt-3">Awards & Recognition</h2>
        <p>Celebrating the outstanding achievements of our faculty and staff.</p>
        <a href="#" class="btn btn-primary">See Past Awards</a>
      </div>
    </div>
    <div class="row mt-3">
        <h2>Our Values</h2>
        <div class="row">
          <div class="col-md-3">
            <div class="border rounded">
              <i class="bi bi-lightbulb-fill display-4"></i>
              <h5 style="font-weight: lighter;" class="py-1 ps-2">Innovation</h5>
            </div>
          </div>
          <div class="col-md-3">
            <div class="border rounded">
              <i class="bi bi-person-fill display-4"></i>
              <h5 style="font-weight: lighter;" class="py-1 ps-2">Equity</h5>
            </div>
          </div>
          <div class="col-md-3">
            <div class="border rounded">
              <i class="bi bi-chat-left-text-fill display-4"></i>
              <h5 style="font-weight: lighter;" class="py-1 ps-2">Engagement</h5>
            </div>
          </div>
          <div class="col-md-3">
            <div class="border rounded">
              <i class="bi bi-star-fill display-4"></i>
              <h5 style="font-weight: lighter;" class="py-1 ps-2">Excellence</h5>
            </div>
          </div>
        </div>
    </div>
    <div class="row mt-5">
      <h2>Award Winners</h2>
      <div class="col-md-3">
        <img src="images/award1.png" alt="Professor Mark Scott AO">
        <h5>Professor Mark Scott AO</h5>
        <p>Vice-Chancellor and Principal</p>
      </div>
      <div class="col-md-3">
        <img src="images/award2.png" alt="Professor Pip Pattison">
        <h5>Professor Pip Pattison</h5>
        <p>Deputy Vice-Chancellor (Education)</p>
      </div>
      <div class="col-md-3">
        <img src="images/award3.png" alt="Professor Duncan Ivison">
        <h5>Professor Duncan Ivison</h5>
        <p>Deputy Vice-Chancellor (Research)</p>
      </div>
      <div class="col-md-3">
        <img src="images/award1.png" alt="Professor Stephen Garton">
        <h5>Professor Stephen Garton</h5>
        <p>Provost and Deputy Vice-Chancellor</p>
      </div>
    </div>
  </div>
</body>
</html>