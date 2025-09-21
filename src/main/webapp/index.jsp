<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Community Legacy</title>
  <link rel="stylesheet" href="./css/index.css">
</head>

<body>
  <div class="container">
    <h1>🏘️ Community Legacy</h1>
    <div class="welcome">
      <p>Welcome to Sample Community Site using Spring Legacy!</p>
      <!-- <%= %>를 넣으면 Java 문법을 넣을 수 있음 (=은 값을 출력할 수 있음) -->
      <p>Current Time: <%= new java.util.Date() %></p>
    </div>
  </div>
</body>
</html>