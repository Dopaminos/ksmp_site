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
    <title>Регистрация</title>
    <style>
        .form-register {
            max-width: 400px;
            width: 100%;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 5px;
        }
    </style>
</head>
<body>
<form class="form-register" id="registerForm" action="" method="post">
    <h1 class="display-4" style="color: #000000;">Регистрация</h1>
    <p class="lead">Пожалуйста, заполните регистрационную форму</p>
    <div class="form-group">
        <input type="text" class="form-control" id="nicknameInput" name="nickname" placeholder="Никнейм" required="true" value="<%= registerBean.getNickname() %>" />
    </div>
    <div class="form-group">
        <input type="text" class="form-control" id="loginInput" name="login" placeholder="Логин" required="true" value="<%= registerBean.getLogin() %>" />
    </div>
    <div class="form-group">
        <input type="email" class="form-control" id="emailInput" name="email" placeholder="Email" required="true" value="<%= registerBean.getEmail() %>" />
    </div>
    <div class="form-group">
        <input type="password" class="form-control" id="passwordInput" name="password" placeholder="Пароль" required="true" value="<%= registerBean.getPassword() %>" />
    </div>
    <input type="button" value="Зарегистрироваться" class="btn btn-primary" onclick="updateValues()" />
</form>

<div>
    <h2>Введенные данные:</h2>
    <p>Никнейм: <span id="nickname"></span></p>
    <p>Логин: <span id="login"></span></p>
    <p>Email: <span id="email"></span></p>
    <p>Пароль: <span id="password"></span></p>
</div>

<script>
    // Function to update the values in the <div> element
    function updateValues() {
        document.getElementById("nickname").textContent = document.getElementById("nicknameInput").value;
        document.getElementById("login").textContent = document.getElementById("loginInput").value;
        document.getElementById("email").textContent = document.getElementById("emailInput").value;
        document.getElementById("password").textContent = document.getElementById("passwordInput").value;
    }
</script>
</body>
</html>
