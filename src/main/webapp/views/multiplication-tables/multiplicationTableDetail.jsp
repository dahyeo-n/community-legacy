<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.sample.multiplication.table.domain.MultiplicationTable" %>
<%@ page import="com.sample.multiplication.table.domain.MultiplicationTableRow" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Multiplication Table</title>
  <link rel="stylesheet" href="../../css/common/layout.css">
  <link rel="stylesheet" href="../../css/pages/multiplicationTableDetail.css">
  <%
    MultiplicationTable multiplicationTable = (MultiplicationTable) request.getAttribute("multiplicationTable");
    if (multiplicationTable == null) {
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
        <%
          if (multiplicationTable != null) {
        %> 
          <h2>Multiply by <%= multiplicationTable.getNumber() %></h2>
          <ul>
            <%
              for (MultiplicationTableRow row : multiplicationTable.getRows()) {
            %>
                <li><%= row.getMultiplier() %> × <%= row.getMultiplicand() %> = <%= row.getProduct() %></li>
            <%
              }
            %>
          </ul>
        <%
          }
        %>
      </div>
    </div>

    <div class="navigation-links">
      <a href="<%= request.getContextPath() %>/multiplication-tables/selectMultiplicationTableView.do" class="back-btn">← Choose Another Number</a>
      <a href="<%= request.getContextPath() %>/mainView.do" class="home-btn">🏠 Back to Home</a>
    </div>
  </div>
</body>
</html>