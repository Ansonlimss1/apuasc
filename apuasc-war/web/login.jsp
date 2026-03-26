<%-- 
    Document   : login
    Created on : 26 Mar 2026, 12:05:15 pm
    Author     : anson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Dark Login</title>

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #0f2027, #203a43, #2c5364);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .login-box {
            width: 320px;
            padding: 30px;
            background: rgba(0, 0, 0, 0.75);
            border-radius: 15px;
            box-shadow: 0 0 20px rgba(0, 255, 255, 0.3);
            backdrop-filter: blur(10px);
            color: white;
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #00ffff;
        }

        label {
            font-size: 14px;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 8px 0 15px 0;
            border: none;
            border-radius: 8px;
            outline: none;
            background: #1e1e1e;
            color: white;
        }

        input::placeholder {
            color: #aaa;
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 8px;
            background: linear-gradient(90deg, #00c6ff, #0072ff);
            color: white;
            font-weight: bold;
            cursor: pointer;
            transition: 0.3s;
        }

        input[type="submit"]:hover {
            transform: scale(1.05);
            box-shadow: 0 0 10px #00c6ff;
        }

        .login-box:hover {
            box-shadow: 0 0 25px rgba(0, 255, 255, 0.6);
        }
    </style>
</head>

<body>

<div class="login-box">
    <h2>🔐 Login</h2>

    <form action="loginProcess.jsp" method="post">
        <label>Username</label>
        <input type="text" name="username" placeholder="Enter username" required>

        <label>Password</label>
        <input type="password" name="password" placeholder="Enter password" required>

        <input type="submit" value="Login">
    </form>
</div>

</body>
</html>