<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Community Legacy</title>
    <link rel="stylesheet" href="./css/index.css">
    <link rel="stylesheet" href="./css/pages/multiplication-tables.css">
  </head>

  <body>
    <!-- <div class="container">
      <h1>🏘️ Community Legacy</h1>
      <div class="welcome">
        <p>Welcome to Sample Community Site using Spring Legacy!</p>
        <p>Current Time: <%= new java.util.Date() %></p>
      </div>
    </div> -->
    <jsp:include page="views/multiplication-tables/multiplication-tables.jsp"/>
  </body>
</html>