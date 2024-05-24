<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>University</title>
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <script src="js/jquery-3.5.1.min.js"></script>
  <script src="js/popper2.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <style>
    .hero-section {
      background-color: #f8f9fa;
      padding: 60px 0;
      text-align: center;
    }
    .values-section {
      padding: 40px 0;
    }
    .values-section .card {
      margin-bottom: 20px;
    }
    .staff-section {
      padding: 40px 0;
    }
    .staff-section img {
      width: 30%;
      height: auto;
      border-radius: 0.25rem;
    }
  </style>
</head>
<body>
  <header class="bg-light py-3">
    <div class="container">
      <div class="d-flex justify-content-between align-items-center">
        <a class="navbar-brand" href="#">University</a>
        <?php require("./nav.php"); ?>
      </div>
    </div>
  </header>
  
  <section class="hero-section">
    <div class="container">
      <img src="images/about.png" class="img-fluid" alt="Hero Image">
    </div>
  </section>
  
  <section class="container mt-4">
    <h1>About</h1>
    <p>Our purpose is to transform lives through education and research</p>
    <p>The University of Sydney was founded on the principle of giving everyone the opportunity to realise their potential through education and still holds that belief just as strongly today. Currently ranked 4th in the world, and 1st in Australia, for graduate employability*, the University of Sydney is also consistently placed among the top 50 universities in the world**.</p>
  </section>
  
  <section class="values-section bg-light">
    <div class="container">
      <h2 class="text-center">Our values</h2>
      <div class="row text-center">
        <div class="col-md-4">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Innovation</h5>
              <p class="card-text">We are leaders in creating knowledge and translating it into real-world impact.</p>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Equity</h5>
              <p class="card-text">We are committed to fostering a diverse, inclusive and equitable community.</p>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Engagement</h5>
              <p class="card-text">We are dedicated to working with our partners and communities to make a difference.</p>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Integrity</h5>
              <p class="card-text">We act ethically and with accountability, respecting the rights and dignity of all.</p>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Excellence</h5>
              <p class="card-text">We strive for the highest quality in everything we do.</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  
  <section class="staff-section">
    <div class="container">
      <h2 class="text-center">Our people</h2>
      <div class="row align-items-center">
        <div class="col-md-6">
          <h5>Vice-Chancellor and Principal</h5>
          <p><strong>Professor Mark Scott AO</strong></p>
          <p>Professor Mark Scott AO is Vice-Chancellor and Principal of the University of Sydney.</p>
        </div>
        <div class="col-md-6 d-flex justify-content-end">
          <img src="images/about1.png" alt="Professor Mark Scott AO">
        </div>
      </div>
      <div class="row align-items-center mt-4">
        <div class="col-md-6">
          <h5>Deputy Vice-Chancellor (Education)</h5>
          <p><strong>Professor Pip Pattison</strong></p>
          <p>Professor Pip Pattison is Deputy Vice-Chancellor (Education) at the University of Sydney.</p>
        </div>
        <div class="col-md-6 d-flex justify-content-end">
          <img src="images/about2.png" alt="Professor Pip Pattison">
        </div>
      </div>
      <div class="row align-items-center mt-4">
        <div class="col-md-6">
          <h5>Deputy Vice-Chancellor (Research)</h5>
          <p><strong>Professor Duncan Ivison</strong></p>
          <p>Professor Duncan Ivison is Deputy Vice-Chancellor (Research) at the University of Sydney.</p>
        </div>
        <div class="col-md-6 d-flex justify-content-end">
          <img src="images/about3.png" alt="Professor Duncan Ivison">
        </div>
      </div>
      <div class="row align-items-center mt-4">
        <div class="col-md-6">
          <h5>Provost and Deputy Vice-Chancellor</h5>
          <p><strong>Professor Stephen Garton</strong></p>
          <p>Professor Stephen Garton is Provost and Deputy Vice-Chancellor at the University of Sydney.</p>
        </div>
        <div class="col-md-6 d-flex justify-content-end">
          <img src="images/about4.png" alt="Professor Stephen Garton">
        </div>
      </div>
    </div>
  </section>
  
  <footer class="footer-section bg-light py-4">
    <div class="container text-center">
      <p class="mb-0">&copy; 2023 University. All rights reserved.</p>
    </div>
  </footer>
</body>
</html>
