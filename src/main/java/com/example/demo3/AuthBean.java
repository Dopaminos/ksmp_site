package com.example.demo3;

public class AuthBean {
       private String login;
       private String password;

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
              builder.append("Login: ").append(login).append("<br/>");
              builder.append("Password: ").append(password).append("<br/>");
              return builder.toString();
       }
}
