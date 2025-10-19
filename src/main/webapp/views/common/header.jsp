<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header>
  <div class="header-container">
    <div class="logo">
      <h1>Community Legacy</h1>
    </div>
    <nav class="main-nav">
      <c:url value="/mainView.do" var="mainViewUrl" />
      <a href="${mainViewUrl}" class="nav-link">Home</a>
      <c:url value="/multiplication-tables/getMultiplicationTableListView.do" var="getMultiplicationTableListViewUrl" />
      <a href="${getMultiplicationTableListViewUrl}" class="nav-link">All Tables</a>
      <c:url value="/multiplication-tables/selectMultiplicationTableView.do" var="selectMultiplicationTableViewUrl" />
      <a href="${selectMultiplicationTableViewUrl}" class="nav-link">Select Number</a>
    </nav>
  </div>
</header>