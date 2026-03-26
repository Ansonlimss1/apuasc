<%-- 
    Document   : dashboard
    Created on : 26 Mar 2026, 2:34:02 pm
    Author     : anson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String username = (String) session.getAttribute("user");

    if(username == null){
        response.sendRedirect("login.jsp");
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>

    <style>
        body {
            margin: 0;
            font-family: Arial;
            background: #0f2027;
            color: white;
        }

        .header {
            background: #1e1e1e;
            padding: 15px;
            text-align: right;
        }

        .header a {
            color: #00c6ff;
            text-decoration: none;
            margin-left: 20px;
        }

        .content {
            text-align: center;
            margin-top: 100px;
        }

        h1 {
            color: #00c6ff;
        }
    </style>
</head>

<body>

<div class="header">
    Welcome, <%= username %> |
    <a href="logout.jsp">Logout</a>
</div>

<div class="content">
    <h1>🚀 Dashboard</h1>
    <p>You have successfully logged in!</p>
</div>

</body>
</html>