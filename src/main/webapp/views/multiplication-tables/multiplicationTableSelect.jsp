<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Choose a Number - Multiplication Tables</title>
  <link rel="stylesheet" href="../../css/common/layout.css">
  <link rel="stylesheet" href="../../css/common/header.css">
  <link rel="stylesheet" href="../../css/pages/multiplicationTableSelect.css">
</head>

<body>
  <jsp:include page="../common/header.jsp" />

  <main class="select-number-page">
    <h1>🧮 Choose a Number</h1>
    <div class="selection-container">
      <p class="instruction">Select a number to see its multiplication table:</p>
      <div class="number-grid">
        <c:if test="${numbers != null}">
          <c:forEach var="number" items="${numbers}">
            <c:url value="/multiplication-tables/getMultiplicationTableView.do" var="getMultiplicationTableViewUrl">
              <c:param name="number" value="${number}" />
            </c:url>
            <a href="${getMultiplicationTableViewUrl}" class="number-card">
              <div class="number-display"><c:out value="${number}" /></div>
              <div class="number-label">Multiply by <c:out value="${number}" /></div>
            </a>
          </c:forEach>
        </c:if>
      </div>
    </div>

    <div class="back-link">
      <c:url value="/mainView.do" var="mainViewUrl" />
      <a href="${mainViewUrl}" class="home-btn">🏠 Back to Home</a>
    </div>
  </main>
</body>
</html>