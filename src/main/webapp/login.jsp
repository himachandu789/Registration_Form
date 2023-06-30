<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            text-align: center;
        }

        h1 {
            color: #333;
        }

        form {
            margin-top: 20px;
            text-align: left;
        }

        label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 3px;
            margin-bottom: 15px;
        }

        input[type="submit"] {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #555;
        }

        .links {
            margin-top: 20px;
        }

        .links a {
            margin-right: 10px;
            text-decoration: none;
        }
    </style>
</head>

<body>
    <div class="container">
        <h1>Enter your login credentials</h1>
        <form action="loginServlet" method="post">
            <label for="username">Username:</label>
            <input type="text" name="username" id="username" required>

            <label for="passwd">Password:</label>
            <input type="password" name="passwd" id="passwd" required>

            <input type="submit" value="Login">
        </form>

        <div class="links">
            <a href="register.jsp">Register</a> |
            <a href="index.jsp">Home</a>
        </div>
    </div>

</body>
</html>
