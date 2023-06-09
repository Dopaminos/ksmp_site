<%@page import="com.example.demo3.RegisterBean" pageEncoding="utf-8" %>
<%! RegisterBean registerBean; %>

<%
  // Create or retrieve the RegisterBean object
  if (registerBean == null) {
    registerBean = new RegisterBean();
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
        </ul>
      </div>
    </div>
  </nav>
</header>

<!-- Содержимое страницы -->
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
  <br>
  <br>
  <br>
  <h1 class="text-center">Авторизация</h1>
  <section>
    <h2 class="text-center">Вход в систему</h2>
    <form>
      <div class="form-group" >
        <label for="loginInput">Логин:</label>
        <input type="text" style="width: 200px; text-align:center; margin-left: auto; margin-right: auto;" class="form-control" id="loginInput" name="login" required="true"
               value="<%= registerBean.getLogin() %>"/>
      </div>
      <div class="form-group">
        <label for="passwordInput">Пароль:</label>
        <input type="password" style="width: 200px; text-align:center; margin-left: auto; margin-right: auto;" class="form-control" id="passwordInput" name="password" required="true"
               value="<%= registerBean.getPassword() %>"/>
      </div>
      <br>
      <button type="submit" class="btn btn-primary">Войти</button>
    </form>
  </section>
  <div class="brchiki))" style="margin-top: fill"; margin-bottom: fill;> </div>
</main>

<!-- Подвал страницы -->
<footer class="py-3 bg-dark">
  <div class="container">
    <p class="m-0 text-center text-white">Ресторан грузинской кухни &copy; 2023</p>
  </div>
  <!-- /.container -->
</footer>

<!-- Bootstrap JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.1/js/bootstrap.bundle.min.js"></script>

</body>
</html>