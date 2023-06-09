<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Georgian Kitchen</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.1/css/bootstrap.min.css"/>
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"/>
  <!-- Custom CSS -->
  <link rel="stylesheet" href="css/style.css">
</head>
<style>


  /* Стили для темного навбара */
  .navbar-dark {
    background-color: #ffffff; /* Белый цвет навбара */
  }

</style>


<body class="body-bg">
<!-- Navigation Bar -->
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
          <a class="nav-link" href="index.jsp" style="color: #ffffff">Главная</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Menu.jsp" style="color: #ffffff">Меню</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="AboutUs.jsp" style="color: #ffffff">О нас</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Contact.jsp" style="color: #ffffff">Контакты</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Auth.jsp" style="color: #ffffff">Авторизация</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Register.jsp" style="color: #ffffff">Регистрация</a>
        </li>
        <li class="nav-item">
          <button class="nav-link btn btn-primary" onclick="toggleColor()">Сменить цвет</button>
        </li>
      </ul>
    </div>
  </div>
</nav>
<!-- Jumbotron -->
<div class="jumbotron jumbotron-fluid jumbotron-bg">
  <div class="container"><br>
    <h1 class="display-4">Ресторан грузинской кухни</h1>
    <p class="lead">Лучший среди существующих на всей территории СНГ</p>
    <p></p>
    <hr class="my-4">
    <p>Мы приглашаем Вас насладиться великолепным вкусом грузинской кухни в нашем ресторане. Мы предлагаем широкий выбор блюд, приготовленных по традиционным рецептам, которые не оставят равнодушными ни одного гурмана.</p>
    <p>Наша команда профессиональных поваров уделяет большое внимание качеству продуктов и приготовлению блюд, чтобы каждый гость получил удовольствие от своего заказа. Мы также предлагаем широкий выбор напитков, включая лучшие сорта грузинского вина.</p>
    <p>Наш уютный зал с прекрасным интерьером и удобными мебелью создаст неповторимую атмосферу для проведения романтического ужина, деловой встречи или семейного праздника. Мы также предоставляем услуги кейтеринга на любые мероприятия, будь то свадьба, корпоративное мероприятие или день рождения.</p>
    <a class="btn btn-primary btn-lg" href="Contact.jsp" role="button">Забронировать столик</a><br></br>
  </div>
</div>
<!-- End of Jumbotron -->
<!-- Main Content -->
<div class="background-container">
  <div class="container">
    <div class="row">
      <div class="col-lg-8">
        <h2>Наше меню</h2>
        <p>Мы предлагаем не большой, но отличный выбор блюд приготовленных по традиционным грузинским рецептам:</p>
        <ul>
          <li>Хачапури</li>
          <li>Блюда с мангала</li>
        </ul>
        <p>Мы также предлагаем широкий выбор десертов и напитков, включая лучшие сорта грузинского вина. Наше меню регулярно обновляется, чтобы удовлетворить запросы наших гостей.</p>
        <h2>О нашем ресторане</h2>
        <p>Мы открылись в 2005 году и с тех пор зарекомендовали себя как один из лучших ресторанов грузинской кухни на всей территории СНГ. Наша команда профессионалов работает над тем, чтобы каждый гость получил незабываемые впечатления от нашей кухни и обслуживания.</p>
        <p>Мы уделяем большое внимание качеству продуктов и приготовлению блюд. Мы используем только свежие ингредиенты, а многие из них мы заказываем из Грузии, чтобы сохранить традиционный вкус и аромат грузинской кухни.</p>
        <p>Мы рады предложить нашим гостям уютный зал с прекрасным интерьером и удобными мебелью. В нашем ресторане вы сможете провести романтический ужин, деловую встречу или семейный праздник. Мы также предоставляем услуги кейтеринга на любые мероприятия.</p>
        <h2>Контакты</h2>
        <p>Наш ресторан находится по адресу: ул. Большая Тульская, д. 3</p>
        <p>Вы можете забронировать столик заранее, позвонив нам по телефону: +7 (495) 123-45-67</p>
        <p>Мы открыты ежедневно с 11:00 до 23:00. Ждем вас в гости!</p>
      </div>
      <div class="col-lg-4">
        <h2>Мы в социальных сетях</h2>
        <p>Подписывайтесь на нашу страницу в Facebook и следите за нашими новостями и акциями:</p>
        <div class="fb-page" data-href="https://www.facebook.com/georgianrestaurant" data-tabs="timeline" data-width="" data-height="300" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true">
          <blockquote cite="https://www.facebook.com/georgianrestaurant" class="fb-xfbml-parse-ignore">
            <a href="https://www.facebook.com/georgianrestaurant">Ресторан грузинской кухни</a>
          </blockquote>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- End of Main Content -->
<!-- Footer -->
<footer class="py-3 bg-dark">
  <div class="container">
    <p class="m-0 text-center text-white">Ресторан грузинской кухни &copy; 2023</p>
  </div>
  <!-- /.container -->
</footer>
<!-- End of Footer -->
<!-- Bootstrap core JavaScript -->

<script>
  var isDarkMode = true; // Variable to track the current color scheme
  var excludeElements = document.querySelectorAll('.navbar, footer');

  function toggleColor() {
    var body = document.querySelector('body');
    var allTextElements = document.querySelectorAll('body *');

    // Toggle the color scheme
    isDarkMode = !isDarkMode;

    if (isDarkMode) {
      // Apply dark mode styles
      body.style.backgroundColor = '#333333';
      excludeElements.forEach(function (element) {
        element.style.color = ''; // Reset the color of excluded elements
      });

      allTextElements.forEach(function (element) {
        if (!isDescendantOf(element, excludeElements)) {
          element.style.color = '#ffffff';
        }
      });
    } else {
      // Apply light mode styles
      body.style.backgroundColor = '#ffffff';
      excludeElements.forEach(function (element) {
        element.style.color = ''; // Reset the color of excluded elements
      });

      allTextElements.forEach(function (element) {
        if (!isDescendantOf(element, excludeElements)) {
          element.style.color = '#000000';
        }
      });
    }
  }

  // Helper function to check if an element is a descendant of any element in a list
  function isDescendantOf(element, elements) {
    for (var i = 0; i < elements.length; i++) {
      if (elements[i].contains(element)) {
        return true;
      }
    }
    return false;
  }

</script>


</body>
</html>