<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Community Legacy</title>
    <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }
    
    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
      min-height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
    }
    
    .container {
      background: white;
      padding: 40px;
      border-radius: 20px;
      box-shadow: 0 20px 40px rgba(0,0,0,0.1);
      text-align: center;
      max-width: 500px;
      width: 90%;
    }
    
    h1 {
      color: #333;
      font-size: 2.5em;
      margin-bottom: 20px;
      font-weight: 300;
    }
    
    .welcome {
      color: #666;
      line-height: 1.6;
    }
    
    .welcome p {
      margin-bottom: 15px;
      font-size: 1.1em;
    }
    
    .welcome p:last-child {
      background: #f8f9fa;
      padding: 10px;
      border-radius: 8px;
      border-left: 4px solid #667eea;
      font-weight: 500;
      color: #495057;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>🏘️ Community Legacy</h1>
    <div class="welcome">
      <p>Welcome to Sample Community Site using Spring Legacy!</p>
      <p>Current Time: <%= new java.util.Date() %></p>
    </div>
  </div>
</body>
</html>