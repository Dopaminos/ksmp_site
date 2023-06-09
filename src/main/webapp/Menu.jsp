<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Меню ресторана</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.1/css/bootstrap.min.css"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"/>
  <link rel="stylesheet" href="css/style.css">
</head>
<body style="background-color: #ffffff6e;">
<header>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
      <a class="navbar-brand" href="#">Гамарджобо</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
              aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item">
            <a class="nav-link" href="index.jsp">Главная</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="Menu.jsp">Меню</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="AboutUs.jsp">О нас</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="Contact.jsp">Контакты</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="Auth.jsp">Авторизация</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="Register.jsp">Регистрация</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
</header>

<section id="menu" style="background-color: #ffffff6e;">
  <div class="container"><br><br>
    <div class="row">
      <div class="col-lg-6">
        <br><br>
        <div class="menu-category">
          <h1>Хачапури</h1>
          <div class="menu-item">
            <div class="menu-item-info">
              <h1>Классическое</h1>
              <img src="img/Хачапури/Хачапури1.jpeg" alt="Хачапури Классическое" style="border: 4px solid #333333"/>
              <h5>Пирог из дрожжевого теста, начиненный сыром. <br>Национальное грузинское блюдо, которое знакомо всем, кто хоть раз побывал в грузинском ресторане или пробовал грузинскую кухню.<br></h5>
            </div>
          </div>
          <div class="menu-item">
            <div class="menu-item-info">
              <br><br>
              <h1>Кубдари</h1>
              <img src="img\Хачапури\Кубдари.jpeg" alt="Кубдари" style="border: 4px solid #333333"/>
              <h5>Традиционный грузинский пирог с рубленым мясом и приправами.</h5>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-6">
        <br><br>
        <div class="menu-category">
          <h1>Блюда с мангала</h1>
          <div class="menu-item">
            <div class="menu-item-info">
              <h5>Кебаб</h5>
              <img src="img\Мангал\Кебаб.jpeg" alt="Кебаб" style="border: 4px solid #333333"/>
              <h5>Сочное маринованое мясо с приправами, нанизанное на шампуры<br>Сделано по традиционным рецептам.</h5>
            </div>
          </div>
          <div class="menu-item">
            <div class="menu-item-info">
              <br><br><br>
              <h1>Генацвале!</h1>
              <img src="img\Мангал\Овощи.jpeg" alt="Овощи" style="border: 4px solid #333333"/>
              <h5>Сбалансированная смесь обжаренных и тушеных овощей.<br>Фирменное блюдо, приготовленное на мангале. </h5>
              <br>
              <br>
              <br>
              <br>
              <br>
              <br>
              <br>
              <br>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<footer class="py-3 bg-dark">
  <div class="container">
    <p class="m-0 text-center text-white">Ресторан грузинской кухни &copy; 2023</p>
  </div>
  <!-- /.container -->
</footer>

<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>
