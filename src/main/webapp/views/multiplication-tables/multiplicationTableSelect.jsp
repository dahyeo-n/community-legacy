<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Choose a Number - Multiplication Tables</title>
    <link rel="stylesheet" href="../../css/common/layout.css">
    <link rel="stylesheet" href="../../css/pages/multiplicationTableSelect.css">
  </head>

  <body>
    <div class="container select-number-page">
      <h1>🧮 Choose a Number</h1>
      <div class="selection-container">
        <p class="instruction">Select a number to see its multiplication table:</p>
        <div class="number-grid">
          <%
            List<Integer> numbers = (List<Integer>) request.getAttribute("numbers");
            if (numbers != null) {
              for (int number : numbers) {
          %>
                <a href="<%= request.getContextPath() %>/multiplication-tables/getMultiplicationTableView.do?number=<%= number %>" class="number-card">
                  <div class="number-display"><%= number %></div>
                  <div class="number-label">Multiply by <%= number %></div>
                </a>
          <%
              }
            }
          %>
        </div>
      </div>

      <div class="back-link">
        <a href="<%= request.getContextPath() %>/mainView.do">← Back to Home</a>
      </div>
    </div>
  </body>
</html>