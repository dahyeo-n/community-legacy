<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Choose a Number - Multiplication Tables</title>
    <link rel="stylesheet" href="../../css/common/layout.css">
    <link rel="stylesheet" href="../../css/pages/select-number.css">
  </head>

  <body>
    <div class="container select-number-page">
      <h1>🧮 Choose a Number</h1>

      <div class="selection-container">
        <p class="instruction">Select a number to see its multiplication table:</p>

        <div class="number-grid">
          <%
            for(int i = 2; i <= 9; i++) {
          %>
            <a href="./show-multiplication-table.jsp?number=<%= i %>" class="number-card">
              <div class="number-display"><%= i %></div>
              <div class="number-label">Multiply by <%= i %></div>
            </a>
          <%
            }
          %>
        </div>
      </div>

      <div class="back-link">
        <a href="../main/main.jsp">← Back to Home</a>
      </div>
    </div>
  </body>
</html>