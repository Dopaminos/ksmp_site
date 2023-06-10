<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%@page import="javax.naming.*" pageEncoding="UTF-8" %>

<%
  // Retrieve account information from the database
  String login = "login";
  String password = "password";
  String nickname = "nickname";
  String email = "email";

  try {
    // Establish a connection to the database
    Context context = new InitialContext();
    DataSource dataSource = (DataSource) context.lookup("java:comp/env/jdbc/postgres:5432");
    Connection connection = dataSource.getConnection();

    // Retrieve account information based on the logged-in user or a session variable
    String username = ""; // Replace with the username or session variable for the logged-in user
    PreparedStatement statement = connection.prepareStatement("SELECT login, password, nickname, email FROM usermanagement WHERE login = ?");
    statement.setString(1, username);
    ResultSet resultSet = statement.executeQuery();

    if (resultSet.next()) {
      login = resultSet.getString("login");
      password = resultSet.getString("password");
      nickname = resultSet.getString("nickname");
      email = resultSet.getString("email");
    }

    resultSet.close();
    statement.close();
    connection.close();
  } catch (Exception e) {
    e.printStackTrace();
  }
%>

<!DOCTYPE html>
<html>
<head>
  <title>Личный кабинет</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.1/css/bootstrap.min.css"/>
</head>
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
            <a class="nav-link" href="Accounts.jsp" style="color: #ffffff">Личный кабинет</a>
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
<body>
<div class="container">
  <h1 class="text-center">Личный кабинет</h1>
  <div class="row justify-content-center">
    <div class="col-md-6">
      <table class="table table-bordered">
        <tbody>
        <tr>
          <th scope="row">Логин:</th>
          <td><%= login %></td>
        </tr>
        <tr>
          <th scope="row">Пароль:</th>
          <td><%= password %></td>
        </tr>
        <tr>
          <th scope="row">Никнейм:</th>
          <td><%= nickname %></td>
        </tr>
        <tr>
          <th scope="row">Емейл:</th>
          <td><%= email %></td>
        </tr>
        </tbody>
      </table>
      <form method="post" action="DeleteAccount.jsp">
        <input type="submit" value="Удалить аккаунт" class="btn btn-danger">

      </form>
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
    </div>
  </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.1/js/bootstrap.bundle.min.js"></script>
</body>
<footer class="py-3 bg-dark">
  <div class="container">
    <p class="m-0 text-center text-white">Ресторан грузинской кухни &copy; 2023</p>
  </div>
  <!-- /.container -->
</footer>
</html>
