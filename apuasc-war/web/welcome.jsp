<%-- 
    Document   : welcome
    Created on : 26 Mar 2026, 2:28:12 pm
    Author     : anson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String username = (String) session.getAttribute("user");

    // ❗ If not logged in → go back to login
    if(username == null){
        response.sendRedirect("login.jsp");
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>

    <style>
        body {
            background: #121212;
            color: white;
            font-family: Arial;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .box {
            background: #1e1e1e;
            padding: 40px;
            border-radius: 15px;
            text-align: center;
            box-shadow: 0 0 20px #00c6ff;
        }

        h1 {
            color: #00c6ff;
        }
    </style>
</head>

<body>

<div class="box">
    <h1>🎉 Welcome</h1>
    <h2>Hello, <%= username %>!</h2>
</div>

</body>
</html>