<%--<%@ taglib prefix="c" uri="jakarta.tags.core" %>--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Login</title>--%>
<%--    <style>--%>
<%--        * {--%>
<%--            margin: 0;--%>
<%--            padding: 0;--%>
<%--            box-sizing: border-box;--%>
<%--        }--%>

<%--        body {--%>
<%--            font-family: Arial, sans-serif;--%>
<%--            display: flex;--%>
<%--            justify-content: center;--%>
<%--            align-items: center;--%>
<%--            min-height: 100vh;--%>
<%--            background-color: #f9f9f9;--%>
<%--        }--%>

<%--        .container {--%>
<%--            display: flex;--%>
<%--            width: 90%;--%>
<%--            max-width: 1200px;--%>
<%--            background-color: #fff;--%>
<%--            border-radius: 15px;--%>
<%--            overflow: hidden;--%>
<%--            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);--%>
<%--        }--%>

<%--        .left-section {--%>
<%--            flex: 1;--%>
<%--            padding: 40px;--%>
<%--            background-color: #fff;--%>
<%--            text-align: left;--%>
<%--            display: flex;--%>
<%--            flex-direction: column;--%>
<%--            justify-content: center;--%>
<%--            align-items: flex-start;--%>
<%--        }--%>

<%--        .logo {--%>
<%--            width: 80px;--%>
<%--            margin-bottom: 20px;--%>
<%--        }--%>

<%--        .email {--%>
<%--            font-size: 1.2rem;--%>
<%--            margin-bottom: 20px;--%>
<%--        }--%>

<%--        .quote {--%>
<%--            font-size: 1rem;--%>
<%--            color: #333;--%>
<%--            margin-bottom: 10px;--%>
<%--        }--%>

<%--        .author {--%>
<%--            font-size: 0.9rem;--%>
<%--            color: #666;--%>
<%--        }--%>

<%--        .right-section {--%>
<%--            flex: 1;--%>
<%--            display: flex;--%>
<%--            justify-content: center;--%>
<%--            align-items: center;--%>
<%--            background-color: #f5f5f5;--%>
<%--            padding: 40px;--%>
<%--        }--%>

<%--        .login-card {--%>
<%--            width: 100%;--%>
<%--            max-width: 400px;--%>
<%--            background-color: #fff;--%>
<%--            padding: 20px;--%>
<%--            border-radius: 10px;--%>
<%--            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);--%>
<%--            position: relative;--%>
<%--        }--%>

<%--        .icon-container {--%>
<%--            position: absolute;--%>
<%--            top: -25px;--%>
<%--            left: 50%;--%>
<%--            transform: translateX(-50%);--%>
<%--            background-color: #000;--%>
<%--            border-radius: 50%;--%>
<%--            width: 50px;--%>
<%--            height: 50px;--%>
<%--            display: flex;--%>
<%--            justify-content: center;--%>
<%--            align-items: center;--%>
<%--        }--%>

<%--        .icon {--%>
<%--            color: #fff;--%>
<%--            font-size: 1.5rem;--%>
<%--        }--%>

<%--        .input-group {--%>
<%--            margin-bottom: 20px;--%>
<%--        }--%>

<%--        .input-group input {--%>
<%--            width: 100%;--%>
<%--            padding: 10px;--%>
<%--            border: 1px solid #ddd;--%>
<%--            border-radius: 5px;--%>
<%--        }--%>

<%--        .forgot-password {--%>
<%--            display: block;--%>
<%--            font-size: 0.8rem;--%>
<%--            color: #007bff;--%>
<%--            text-align: right;--%>
<%--            margin-top: 5px;--%>
<%--            text-decoration: none;--%>
<%--        }--%>

<%--        .forgot-password:hover {--%>
<%--            text-decoration: underline;--%>
<%--        }--%>

<%--        .social-icons {--%>
<%--            display: flex;--%>
<%--            justify-content: space-around;--%>
<%--            margin: 20px 0;--%>
<%--        }--%>

<%--        .social {--%>
<%--            font-size: 1.5rem;--%>
<%--            color: #666;--%>
<%--            cursor: pointer;--%>
<%--        }--%>

<%--        .social:hover {--%>
<%--            color: #000;--%>
<%--        }--%>

<%--        .login-button {--%>
<%--            width: 100%;--%>
<%--            padding: 10px;--%>
<%--            background-color: #000;--%>
<%--            color: #fff;--%>
<%--            border: none;--%>
<%--            border-radius: 50px;--%>
<%--            font-size: 1rem;--%>
<%--            cursor: pointer;--%>
<%--        }--%>
<%--        .signup-button {--%>
<%--            width: 100%;--%>
<%--            padding: 10px;--%>
<%--            background-color: #ffffff;--%>
<%--            color: #fff;--%>
<%--            border: #1e1e1e;--%>
<%--            border-radius: 50px;--%>
<%--            font-size: 1rem;--%>
<%--            cursor: pointer;--%>
<%--        }--%>

<%--        .login-button:hover {--%>
<%--            background-color: #333;--%>
<%--        }--%>
<%--    </style>--%>
<%--    <link--%>
<%--            rel="stylesheet"--%>
<%--            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.0/css/all.min.css"--%>
<%--            integrity="sha512-9xKTRVabjVeZmc+GUW8GgSmcREDunMM+Dt/GrzchfN8tkwHizc5RP4Ok/MXFFy5rIjJjzhndFScTceq5e6GvVQ=="--%>
<%--            crossorigin="anonymous"--%>
<%--            referrerpolicy="no-referrer"--%>
<%--    />--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="container">--%>
<%--    <!-- Left Section -->--%>
<%--    <div class="left-section">--%>
<%--        <p class="email">lms@nmit.edu.mn</p>--%>
<%--        <p class="quote">--%>
<%--            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi,--%>
<%--            nam.--%>
<%--        </p>--%>
<%--        <p class="author">- Lorem ipsum</p>--%>
<%--    </div>--%>

<%--    <!-- Right Section -->--%>
<%--    <div class="right-section">--%>
<%--        <form action="LoginServlet" method="post" class="login-card">--%>
<%--            <div class="icon-container">--%>
<%--                <div class="icon">&#x27A4;</div>--%>
<%--            </div>--%>
<%--            <div class="input-group">--%>
<%--                <input type="text" id="username" name="username" placeholder="Username" required />--%>
<%--            </div>--%>
<%--            <div class="input-group">--%>
<%--                <input type="password" id="password" name="password" placeholder="Password" required />--%>
<%--                <a href="#" class="forgot-password">Forgot password?</a>--%>
<%--            </div>--%>
<%--            <div class="social-icons">--%>
<%--                <span class="social"><i class="fab fa-google"></i></span>--%>
<%--                <span class="social"><i class="fab fa-facebook"></i></span>--%>
<%--                <span class="social"><i class="fab fa-twitter"></i></span>--%>
<%--            </div>--%>
<%--            <button type="submit" class="login-button">Log in</button>--%>
<%--            <p>Don't you have an account? <a href="signup.jsp">Sign Up</a></p>--%>
<%--        </form>--%>
<%--        <c:if test="${param.error != null && param.error == 'PasswordIncorrect'}">--%>
<%--            <p style="color:red;">Incorrect password or username.</p>--%>
<%--        </c:if>--%>
<%--    </div>--%>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>
