<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>All Multiplication Tables</title>
  <link rel="stylesheet" href="../../css/common/layout.css" />
  <link rel="stylesheet" href="../../css/common/header.css">
  <link rel="stylesheet" href="../../css/pages/multiplicationTableList.css" />
</head>

<body>
  <jsp:include page="../common/header.jsp" />

  <main class="multiplication-tables-page">
    <h1>🔢 Multiplication Tables</h1>

    <div class="multiplication-tables-container">
      <c:if test="${multiplicationTables != null}">
        <c:forEach var="table" items="${multiplicationTables}">
          <div class="multiplication-table">
            <h3>Multiply by <c:out value="${table.number}" /></h3>
            <ul>
              <c:forEach var="row" items="${table.rows}">
                <li><c:out value="${row.multiplier} x ${row.multiplicand} = ${row.product}" /></li>
              </c:forEach>
            </ul>
          </div>
        </c:forEach>
      </c:if>
    </div>

    <div class="navigation-links">
      <c:url value="/multiplication-tables/selectMultiplicationTableView.do" var="selectMultiplicationTableViewUrl" />
      <a href="${selectMultiplicationTableViewUrl}" class="back-btn">🎯 Select Individual Number</a>
      <c:url value="/mainView.do" var="mainViewUrl" />
      <a href="${mainViewUrl}" class="home-btn">🏠 Back to Home</a>
    </div>
  </main>
</body>
</html>
