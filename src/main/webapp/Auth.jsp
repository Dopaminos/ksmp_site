<%@page import="com.example.demo3.AuthBean" pageEncoding="utf-8" %>
<%! AuthBean authBean; %>

<%
  // Create or retrieve the RegisterBean object
  if (authBean == null) {
   authBean = new AuthBean();
  }
%>

<!DOCTYPE html>
<html>
<head>
  <title>Авторизация</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.1/css/bootstrap.min.css"/>
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"/>
  <!-- Custom CSS -->
  <link rel="stylesheet" href="css/style.css">
  <style>
    .form-control-sm {
      height: 30px;
      font-size: 14px;
    }</style>
</head>
<body style="background-color: #ffffff6e">

<!-- Навигационная панель -->
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

<!-- Содержимое страницы -->
<main class="text-center" style="background-color: #ffffff6e;">
  <br>
  <br>
  <h1 class="text-center">Авторизация</h1>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <section>
    <h2 class="text-center">Вход в систему</h2>
    <form>
      <div class="form-group">
        <label for="loginInput">Логин:</label>
        <input type="text" style="width: 200px; text-align:center; margin-left: auto; margin-right: auto;" class="form-control" id="loginInput" name="login" required="true" pattern="[A-Za-z0-9]+" title="Только английские символы и цифры" value="<%= authBean.getLogin() %>"/>
      </div>
      <div class="form-group">
        <label for="passwordInput">Пароль:</label>
        <input type="password" style="width: 200px; text-align:center; margin-left: auto; margin-right: auto;" class="form-control" id="passwordInput" name="password" required="true"
               value="<%= authBean.getPassword() %>"/>
      </div>
      <br>
      <input type="button" value="Войти" class="btn btn-primary" onclick="updateValues()" />
      <div>
        <br>
        <h2>Введенные данные:</h2>
        <p>Логин: <span id="login"></span></p>
        <p>Пароль: <span id="password"></span></p>
      </div>
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
      <br>
      <br>
      <br>
      <br>
    </form>
  </section>
</main>
<!-- Подвал страницы -->
<footer class="py-3 bg-dark">
  <div class="container">
    <p class="m-0 text-center text-white">Ресторан грузинской кухни &copy; 2023</p>
  </div>
  <!-- /.container -->
</footer>

<script>
  function validateLogin() {
    var login = document.getElementById("loginInput").value;
    // Проверка наличия только английских символов и цифр
    var loginPattern = /^[A-Za-z0-9]+$/;
    if (!loginPattern.test(login)) {
      alert("Логин должен содержать только английские символы и цифры.");
      return false;
    }
    return true;
  }

  function validatePassword() {
    var password = document.getElementById("passwordInput").value;
    // Проверка минимальной длины пароля
    if (password.length < 8) {
      alert("Пароль должен содержать минимум 8 символов.");
      return false;
    }
    return true;
  }

</script>

<!-- Bootstrap JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.1/js/bootstrap.bundle.min.js"></script>
<script>
  // Function to update the values in the <div> element
  function updateValues() {
    document.getElementById("login").textContent = document.getElementById("loginInput").value;
    document.getElementById("password").textContent = document.getElementById("passwordInput").value;
    validateLogin();
    validatePassword();
  }
</script>
</body>
</html>