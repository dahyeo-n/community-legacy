<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
</div>