<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.sample.multiplication.table.domain.MultiplicationTable" %>
<%@ page import="com.sample.multiplication.table.domain.MultiplicationTableRow" %>
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
        List<MultiplicationTable> multiplicationTables = (List<MultiplicationTable>) request.getAttribute("multiplicationTables");
        if (multiplicationTables != null) {
          for (MultiplicationTable table : multiplicationTables) {
      %>
            <div class="multiplication-table">
              <h3>Multiply by <%= table.getNumber() %></h3>
              <ul>
                <%
                  for (MultiplicationTableRow row : table.getRows()) {
                %>
                    <li><%= row.getMultiplier() %> x <%= row.getMultiplicand() %> = <%= row.getProduct() %></li>
                <% 
                  }
                %>
              </ul>
            </div>
      <%
          }
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