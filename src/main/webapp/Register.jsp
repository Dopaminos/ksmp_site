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
    <h1 class="text-center">Регистрация</h1>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <section>
        <h2 class="text-center">Форма регистрации</h2>
        <form>
            <div class="form-group" >
                <label for="nicknameInput">Никнейм:</label>
                <input type="text" style="width: 200px; text-align:center; margin-left: auto; margin-right: auto;" class="form-control" id="nicknameInput" name="nickname" required="true"
                       value="<%= registerBean.getNickname() %>"/>
            </div>
            <div class="form-group">
                <label for="loginInput">Логин:</label>
                <input type="text" style="width: 200px; text-align:center; margin-left: auto; margin-right: auto;" class="form-control" id="loginInput" name="login" required="true" pattern="[A-Za-z0-9]+" title="Только английские символы и цифры" value="<%= registerBean.getLogin() %>"/>
            </div>
            <div class="form-group">
                <label for="emailInput">Email:</label>
                <input type="email" style="width: 200px; text-align:center; margin-left: auto; margin-right: auto;" class="form-control" id="emailInput" name="email" required="true" pattern="[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}" title="Введите действительный адрес электронной почты" value="<%= registerBean.getEmail() %>"/>
            </div>
            <div class="form-group">
                <label for="passwordInput">Пароль:</label>
                <input type="password" style="width: 200px; text-align:center; margin-left: auto; margin-right: auto;" class="form-control" id="passwordInput" name="password" required="true" minlength="8" title="Минимум 8 символов" value="<%= registerBean.getPassword() %>"/>
            </div>
            <br>
            <input type="button" value="Зарегистрироваться" class="btn btn-primary" onclick="updateValues()" />
            <div>
                <h2>Введенные данные:</h2>
                <p>Никнейм: <span id="nickname"></span></p>
                <p>Логин: <span id="login"></span></p>
                <p>Емаил: <span id="email"></span></p>
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

<!-- Bootstrap JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.1/js/bootstrap.bundle.min.js"></script>
<script>
    // Function to update the values in the <div> element
    function updateValues() {
        document.getElementById("nickname").textContent = document.getElementById("nicknameInput").value;
        document.getElementById("login").textContent = document.getElementById("loginInput").value;
        document.getElementById("email").textContent = document.getElementById("emailInput").value;
        document.getElementById("password").textContent = document.getElementById("passwordInput").value;
        validateEmail();
        validateLogin();
        validatePassword();
    }

</script>

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

    function validateEmail() {
        var email = document.getElementById("emailInput").value;
        // Проверка формата email
        var emailPattern = /^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$/;
        if (!emailPattern.test(email)) {
            alert("Введите действительный адрес электронной почты.");
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

</body>
</html>