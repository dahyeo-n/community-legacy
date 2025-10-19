<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Multiplication Table</title>
  <link rel="stylesheet" href="../../css/common/layout.css">
  <link rel="stylesheet" href="../../css/common/header.css">
  <link rel="stylesheet" href="../../css/pages/multiplicationTableDetail.css">
  <c:if test="${multiplicationTable == null}">
    <script>
      alert("Invalid value! Please enter a number between 2 and 9.");
      <c:url value="/multiplication-tables/selectMultiplicationTableView.do" var="selectMultiplicationTableViewUrl" />
      window.location.href="${selectMultiplicationTableViewUrl}";
    </script>
  </c:if>
</head>

<body>
  <jsp:include page="../common/header.jsp" />

  <main class="show-table-page">
    <h1>Multiplication Table</h1>
    <div class="table-container">
      <div class="single-table">
        <c:if test="${multiplicationTable != null}">
          <h2>Multiply by <c:out value="${multiplicationTable.number}" /></h2>
          <ul>
            <c:forEach var="row" items="${multiplicationTable.rows}">
              <li><c:out value="${row.multiplier} x ${row.multiplicand} = ${row.product}" /></li>
            </c:forEach>
          </ul>
        </c:if>
      </div>
    </div>

    <div class="navigation-links">
      <c:url value="/multiplication-tables/selectMultiplicationTableView.do" var="selectMultiplicationTableViewUrl" />
      <a href="${selectMultiplicationTableViewUrl}" class="back-btn">← Choose Another Number</a>
      <c:url value="/mainView.do" var="mainViewUrl" />
      <a href="${mainViewUrl}" class="home-btn">🏠 Back to Home</a>      
    </div>
  </main>
</body>
</html>