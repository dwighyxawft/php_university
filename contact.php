<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>University Contact Us</title>
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <script src="js/jquery-3.5.1.min.js"></script>
  <script src="js/popper2.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <style>
    .form-section {
      padding: 40px 0;
    }
    .social-media-section {
      padding: 20px 0;
    }
    .social-media-item {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 10px;
      border: 1px solid #e9ecef;
      border-radius: 0.25rem;
      margin-bottom: 10px;
    }
    .social-media-item:hover {
      background-color: #f8f9fa;
    }
  </style>
</head>
<body>
<header class="bg-light py-3">
    <div class="container">
        <div class="d-flex justify-content-between align-items-center">
            <a class="navbar-brand" href="#"><img src="images/oou.png" width="100" alt=""></a>
            <?php require("./nav.php"); ?>
        </div>
    </div>
  </header>
  
  <section class="container form-section">
    <h1>Contact Us</h1>
    <p>If you have any questions, please don't hesitate to contact us. You can also reach us on social media.</p>
    <form>
      <div class="mb-3">
        <label for="message" class="form-label">How can we help you?</label>
        <textarea class="form-control" id="message" rows="6" placeholder="How can we help you?"></textarea>
      </div>
      <div class="row">
        <div class="col-md-6 mb-3">
          <label for="firstName" class="form-label">First name</label>
          <input type="text" class="form-control form-control-lg" id="firstName" placeholder="First name">
        </div>
        <div class="col-md-6 mb-3">
          <label for="lastName" class="form-label">Last name</label>
          <input type="text" class="form-control form-control-lg" id="lastName" placeholder="Last name">
        </div>
      </div>
      <div class="row">
        <div class="col-md-6 mb-3">
          <label for="email" class="form-label">Email address</label>
          <input type="email" class="form-control form-control-lg" id="email" placeholder="Email address">
        </div>
        <div class="col-md-6 mb-3">
          <label for="phone" class="form-label">Phone number</label>
          <input type="tel" class="form-control form-control-lg" id="phone" placeholder="Phone number">
        </div>
      </div>
      <button type="submit" class="btn btn-primary">Submit</button>
    </form>
  </section>
  
  <section class="container social-media-section">
    <h2>Social Media</h2>
    <div class="social-media-item">
      <span>Twitter @university</span>
      <a class="btn btn-outline-primary" href="#">Follow</a>
    </div>
    <div class="social-media-item">
      <span>Instagram @university</span>
      <a class="btn btn-outline-primary" href="#">Follow</a>
    </div>
    <div class="social-media-item">
      <span>Facebook @university</span>
      <a class="btn btn-outline-primary" href="#">Like</a>
    </div>
    <div class="social-media-item">
      <span>LinkedIn @university</span>
      <a class="btn btn-outline-primary" href="#">Follow</a>
    </div>
  </section>
  
  <footer class="footer-section bg-light py-4">
    <div class="container text-center">
      <p class="mb-0">&copy; 2023 University. All rights reserved.</p>
    </div>
  </footer>

</body>
</html>
