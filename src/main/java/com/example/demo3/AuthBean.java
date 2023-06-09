package com.example.demo3;

public class AuthBean {
       private String nickname;
       private String email;
       private String login;
       private String password;

       public void setNickname(String nickname) {
              this.nickname = nickname;
       }

       public String getNickname() {
              return nickname;
       }
       public String getEmail() {
              return email;
       }

       public void setEmail(String email) {
              this.email = email;
       }

       public String getLogin() {
              return login;
       }

       public void setLogin(String login) {
              this.login = login;
       }

       public String getPassword() {
              return password;
       }

       public void setPassword(String password) {
              this.password = password;
       }

       public String getEnteredData() {
              StringBuilder builder = new StringBuilder();
              builder.append("Nickname: ").append(nickname).append("<br/>");
              builder.append("Email: ").append(email).append("<br/>");
              builder.append("Login: ").append(login).append("<br/>");
              builder.append("Password: ").append(password).append("<br/>");
              return builder.toString();
       }
}
