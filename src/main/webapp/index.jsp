<%--<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>--%>
<%--<%@ page import="jakarta.servlet.http.HttpSession" %>--%>

<%--<%--%>
<%--    String username = (String) session.getAttribute("username");--%>

<%--    if (username == null) {--%>
<%--        response.sendRedirect("welcome.jsp");--%>
<%--        return;--%>
<%--    }--%>
<%--%>--%>

<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
<%--    <title>Grid Layout with Images</title>--%>
<%--    <style>--%>
<%--        body {--%>
<%--            margin: 0;--%>
<%--            font-family: Arial, sans-serif;--%>
<%--        }--%>

<%--        header {--%>
<%--            background-color: #6a6a6a;--%>
<%--            color: white;--%>
<%--            padding: 10px 20px;--%>
<%--        }--%>

<%--        .navbar {--%>
<%--            display: flex;--%>
<%--            justify-content: space-between;--%>
<%--            align-items: center;--%>
<%--        }--%>

<%--        .logo {--%>
<%--            font-size: 24px;--%>
<%--            font-weight: bold;--%>
<%--        }--%>

<%--        .search-bar {--%>
<%--            flex-grow: 1;--%>
<%--            margin: 0 20px;--%>
<%--        }--%>

<%--        .search-bar input {--%>
<%--            width: 80%;--%>
<%--            padding: 8px;--%>
<%--        }--%>

<%--        .search-bar button {--%>
<%--            padding: 8px 12px;--%>
<%--            background-color: #FF4081;--%>
<%--            border: none;--%>
<%--            color: white;--%>
<%--            cursor: pointer;--%>
<%--        }--%>

<%--        .user-menu a {--%>
<%--            margin-left: 20px;--%>
<%--            color: white;--%>
<%--            text-decoration: none;--%>
<%--        }--%>

<%--        span {--%>
<%--            margin-left: 10px;--%>
<%--        }--%>

<%--        .user-menu a:hover {--%>
<%--            text-decoration: underline;--%>
<%--        }--%>

<%--        .navbar .logout {--%>
<%--            color: #ff4d4d;--%>
<%--        }--%>

<%--        .grid-item img {--%>
<%--            width: 100%;--%>
<%--            height: 100%;--%>
<%--            object-fit: cover;--%>
<%--            display: block;--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>

<%--<!-- Navbar -->--%>
<%--    <header>--%>
<%--        <div class="navbar">--%>
<%--            <div class="logo">Black Market</div>--%>
<%--            <label>Hello<span><%= username %></span>!</label>--%>

<%--            </div>--%>
<%--            <div class="search-bar">--%>
<%--                <input type="text" placeholder="Search...">--%>
<%--                <button>Search</button>--%>
<%--            </div>--%>
<%--            <div class="user-menu">--%>
<%--                <a href="#">Cart</a>--%>
<%--            </div>--%>
<%--            <div class="user">--%>
<%--                <% if (username == null) { %>--%>
<%--                <a class="login" href="login.jsp">Login</a>--%>
<%--                <% } else { %>--%>
<%--                <span><%= username %></span> <a class="logout" href="logout.jsp">Logout</a>--%>
<%--                <% } %>--%>

<%--            </div>--%>

<%--        </div>--%>
<%--    </header>--%>

<%--    <sql:setDataSource var="dataSource"--%>
<%--                       driver="com.mysql.cj.jdbc.Driver"--%>
<%--                       url="jdbc:mysql://localhost:3306/e-commerce?useSSL=false&serverTimezone=UTC"--%>
<%--                       user="root"--%>
<%--                       password="727396980510" />--%>

<%--&lt;%&ndash;    <sql:query dataSource="${dataSource}" var="result">&ndash;%&gt;--%>
<%--&lt;%&ndash;        SELECT id, name FROM products; <!-- Replace with your actual table and column names -->&ndash;%&gt;--%>
<%--&lt;%&ndash;    </sql:query>&ndash;%&gt;--%>


<%--&lt;%&ndash;        <div class="grid-container">&ndash;%&gt;--%>
<%--&lt;%&ndash;            <c:forEach var="row" items="${result.rows}">&ndash;%&gt;--%>
<%--&lt;%&ndash;                <div class="grid-item">&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <p>${row.name}</p>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <img src="image?id=${row.id}" alt="${row.name}" style="max-width: 300px;"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;                </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;            </c:forEach>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </div>&ndash;%&gt;--%>

<%--        <c:if test="${not empty result.rows}">--%>
<%--            <c:forEach var="row" items="${result.rows}">--%>
<%--                <div class="grid-item">--%>
<%--                    <p>${row.name}</p>--%>
<%--                    <img src="image?id=${row.id}" alt="${row.name}" style="max-width: 300px;"/>--%>
<%--                </div>--%>
<%--            </c:forEach>--%>
<%--        </c:if>--%>


<%--&lt;%&ndash;<div class="user">&ndash;%&gt;--%>

<%--&lt;%&ndash;    <a class="logout" href="logout.jsp">Logout</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;</div>&ndash;%&gt;--%>

<%--</body>--%>
<%--</html>--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<%@ page import="jakarta.servlet.http.HttpSession" %>

<%
    String username = (String) session.getAttribute("username");
    // Optional check if username is null
    if (username == null) {
        response.sendRedirect("sign_in_page.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Wallpaper_Site</title>
    <style>
        /* Your styles here */
    </style>
</head>
<body>
<jsp:include page="components/Header.jsp" />
<sql:setDataSource var="dataSource"
                   driver="com.mysql.cj.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/e-commerce?useSSL=false&serverTimezone=UTC"
                   user="root"
                   password="727396980510" />

<%--<sql:query dataSource="${dataSource}" var="result">--%>
<%--&lt;%&ndash;    SELECT id, name FROM images; &ndash;%&gt;--%>
<%--</sql:query>--%>

<div class="grid-container">
    <c:forEach var="row" items="${result.rows}">
        <div class="grid-item">
            <p>${row.name}</p>
            <img src="image?id=${row.id}" alt="${row.name}" style="max-width: 300px;"/>
        </div>
    </c:forEach>
</div>

</body>
</html>
