<?php require("./db.php");
$setters = new Setters();

?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>University Website</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
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
                <a class="navbar-brand" href="#"><img src="images/oou.png" width="100" alt=""></a>
                <?php require("./nav.php"); ?>
            </div>
        </div>
      </header>
    <?php
    
    ?>
  <div class="container my-5">
    <div class="row">
      <div class="col-md-8">
        <img src="https://via.placeholder.com/800x400" class="img-fluid" alt="University News">
      </div>
      <div class="col-md-4">
        <h2>Latest University News</h2>
        <p>Stay informed with the latest updates and stories from our campus.</p>
        <div class="input-group mb-3">
          <input type="text" class="form-control" placeholder="Search news..." aria-label="Search news..." aria-describedby="button-addon2">
          <button class="btn btn-success" type="button" id="button-addon2">Search</button>
        </div>
      </div>
    </div>

    <div class="row row-cols-1 row-cols-md-3 g-4 mt-3">
      <?php
      $setters->query = "SELECT * FROM news";
      $news_count = $setters->total_rows();
      if(isset($_GET["start"])){
        $start = $_GET["start"];
        $setters->query = "SELECT * FROM news LIMIT 12 OFFSET $start";
      }else{
        $setters->query = "SELECT * FROM news LIMIT 12";
      }
      $all_news = $setters->fetch_all();
      foreach($all_news as $news){
      ?>
      <div class="col">
        <div class="card h-100">
          <img src="<?php echo $news["image"];?>" class="card-img-top" alt="News Article Image">
          <div class="card-body">
            <h5 class="card-title"><?php echo $news["title"];?></h5>
            <p class="card-text">Summary of the news article</p>
            <a href="n_detail.php?news_id=<?php echo $news["news_id"];?>" class="btn btn-success">Read More</a>
          </div>
        </div>
      </div>
    <?php } ?>
    </div>

    <nav aria-label="Page navigation">
      <ul class="pagination justify-content-center mt-5">
        <?php
          $render = ceil($news_count/12);
          for($i=1; $i<=$render; $i++){ ?>
            <li class="page-item"><a class="page-link" href="news.php?start=<?php echo $i; ?>">1</a></li>
        <?php } ?>
      </ul>
    </nav>
  </div>

</body>
</html>