<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Multiplication Tables</title>
  <link rel="stylesheet" href="../../css/common/layout.css">
  <link rel="stylesheet" href="../../css/common/header.css">
  <link rel="stylesheet" href="../../css/pages/main.css">
</head>

<body>
  <jsp:include page="../common/header.jsp" />

  <main class="main-page">
    <h1>Multiplication</h1>
    <p class="subtitle">Multiplication Tables Learning System</p>

    <div class="menu-container">
      <div class="menu-grid">
        <c:url value="/multiplication-tables/getMultiplicationTableListView.do" var="getMultiplicationTableListViewUrl" />
        <a href="${getMultiplicationTableListViewUrl}" class="menu-card all-tables">
          <div class="card-icon">📊</div>
          <h3>All Tables</h3>
          <p>View all multiplication tables from 2 to 9 at once</p>
          <div class="card-arrow">→</div>
        </a>

        <c:url value="/multiplication-tables/selectMultiplicationTableView.do" var="selectMultiplicationTableViewUrl" />
        <a href="${selectMultiplicationTableViewUrl}" class="menu-card select-number">
          <div class="card-icon">🎯</div>
          <h3>Select Number</h3>
          <p>Choose a specific number to see its multiplication table</p>
          <div class="card-arrow">→</div>
        </a>
      </div>
    </div>

    <div class="welcome-info">
      <p>Welcome to our interactive multiplication table learning system!</p>
      <p>Choose an option above to get started.</p>
    </div>
  </main>
</body>
</html>