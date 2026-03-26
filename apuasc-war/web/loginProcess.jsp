<%-- 
    Document   : loginprocess
    Created on : 26 Mar 2026, 2:17:36?pm
    Author     : anson
--%>

<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    if("admin".equals(username) && "1234".equals(password)){
        
        session.setAttribute("user", username);

        // ? Go to dashboard instead
        response.sendRedirect(request.getContextPath() + "/dashboard.jsp");

    } else {
%>

<!DOCTYPE html>
<html>
<head>
    <title>Login Failed</title>
    <style>
        body {
            background: #121212;
            color: white;
            font-family: Arial;
            text-align: center;
            margin-top: 100px;
        }

        .box {
            background: #1e1e1e;
            padding: 30px;
            display: inline-block;
            border-radius: 10px;
            box-shadow: 0 0 15px red;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background: red;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }

        a:hover {
            background: darkred;
        }
    </style>
</head>
<body>

<div class="box">
    <h2>? Invalid Username or Password</h2>
    <a href="login.jsp">? Back to Login</a>
</div>

</body>
</html>

<%
    }
%>