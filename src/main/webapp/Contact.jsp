<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Contacts</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.1/css/bootstrap.min.css"/>
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"/>
  <!-- Custom CSS -->
  <link rel="stylesheet" href="css/style.css">
</head>
<body style="background-color: #ffffff6e">
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
</header>
<main class="text-center" style="background-color: #ffffff6e;">
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <h1 class="text-center">Contacts</h1>
  <section>
    <h2 class="text-center">Contact information</h2>
    <ul class="text-center">
      <li>Address: Street, City, Country</li>
      <li>Phone: +1234567890</li>
      <li>Email: example@mail.com</li>
    </ul>
  </section>
  <section>
    <h2 class="text-center">Feedback</h2>
    <form>
      <label for="name">Name:</label>
      <input type="text" id="name" name="name" required>
      <br>
      <label for="phone">Phone:</label>
      <input type="tel" id="phone" name="phone" required>
      <br>
      <label for="message">Message:</label>
      <textarea id="message" name="message" required>

            </textarea>
      <br>
      <button id="btn" type="submit" class="btn btn-primary">Отправить</button>
      <br>
      <br>
      <br>
      <br>
      <br>
    </form>
  </section>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
</main>
<footer class="py-3 bg-dark">
  <div class="container">
    <p class="m-0 text-center text-white">Ресторан грузинской кухни &copy; 2023</p>
  </div>
  <!-- /.container -->
</footer>
<!-- Bootstrap JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.1/js/bootstrap.bundle.min.js"></script>
<script>
  document.getElementById("btn").addEventListener("click", function() {
    alert("Спасибо, мы вам перезвоним!");
  });
</script>
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
