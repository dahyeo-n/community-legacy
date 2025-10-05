<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  String numberParam = request.getParameter("number");
  int number = 2;
  boolean isValidNumber = true;

  if(numberParam != null && !numberParam.isEmpty()) {
    try {
      int inputNumber = Integer.parseInt(numberParam);
      if(inputNumber >= 2 && inputNumber <= 9) {
        number = inputNumber;
      } else {
        isValidNumber = false;
      }
    } catch (NumberFormatException e) {
      isValidNumber = false;
    }
  } else {
    isValidNumber = false;
  }
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Multiplication Table</title>
  <link rel="stylesheet" href="../../css/common/layout.css">
  <link rel="stylesheet" href="../../css/pages/multiplicationTableDetail.css">
  <%
    if(!isValidNumber) {
  %>
    <script>
      alert("Invalid value! Please enter a number between 2 and 9.");
      window.location.href="<%= request.getContextPath() %>/multiplication-tables/selectMultiplicationTableView.do";
    </script>
  <%
    }
  %>
</head>

<body>
  <div class="container show-table-page">
    <h1>Multiplication Table</h1>
    <div class="table-container">
      <div class="single-table">
        <h2>Multiply by <%= number %></h2>
        <ul>
          <%
            for(int i = 1; i <= 9; i++) {
              int result = number * i;
          %>
            <li><%= number %> × <%= i %> = <%= result %></li>
          <%
            }
          %>
        </ul>
      </div>
    </div>

    <div class="navigation-links">
      <a href="<%= request.getContextPath() %>/multiplication-tables/selectMultiplicationTableView.do" class="back-btn">← Choose Another Number</a>
      <a href="<%= request.getContextPath() %>/mainView.do" class="home-btn">🏠 Back to Home</a>
    </div>
  </div>
</body>
</html>