<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Registration</title>
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
        input[type="email"],
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
        <h1>User Registration</h1>
        <form action="servlet" method="post">
            <label for="name">Username:</label>
            <input type="text" name="name" id="name" required>

            <label for="age">Age:</label>
            <input type="text" name="age" id="age" required>

            <label for="edu">Qualification:</label>
            <input type="text" name="edu" id="edu" required>

            <label for="exp">Experience (years):</label>
            <input type="text" name="exp" id="exp" required>

            <label for="skills">Skills:</label>
            <input type="text" name="skills" id="skills" required>

            <label for="email">Email:</label>
            <input type="email" name="email" id="email" required>

            <label for="pswd">Set Password:</label>
            <input type="password" name="pswd" id="pswd" required>

            <input type="submit" value="Register">
        </form>

        <div class="links">
            <a href="login.jsp">Login</a> |
            <a href="index.jsp">Home</a>
        </div>
    </div>

</body>
</html>