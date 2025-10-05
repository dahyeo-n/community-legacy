<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>All Multiplication Tables</title>
  <link rel="stylesheet" href="../../css/common/layout.css">
  <link rel="stylesheet" href="../../css/pages/multiplicationTableList.css">
</head>

<body>
  <div class="container multiplication-tables-page">
    <h1>🔢 Multiplication Tables</h1>

    <div class="multiplication-tables-container">
      <% 
        for(int dan = 2; dan <= 9; dan++) {
      %>
        <div class="multiplication-table">
          <h3>Multiply by <%= dan %></h3>
          <ul>
            <%
              for(int i = 1; i <= 9; i++) {
                int result = dan * i;
            %>
              <li><%= dan %> x <%= i %> = <%= result %></li>
            <% 
              }
            %>
          </ul>
        </div>
      <%
        }
      %>
    </div>

    <div class="navigation-links">
      <a href="<%= request.getContextPath() %>/multiplication-tables/selectMultiplicationTableView.do" class="back-btn">🎯 Select Individual Number</a>
      <a href="<%= request.getContextPath() %>/mainView.do" class="home-btn">🏠 Back to Home</a>
    </div>
  </div>
</body>
</html>