<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.chandu.Model.User" %>>
    <title>Login</title>

<% User user = (User) request.getSession().getAttribute("user"); %>

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
            max-width: 600px;
            margin: 0 auto;
            padding: 40px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            font-weight: bold;
            margin-bottom: 10px;
        }

        input[type="text"],
        input[type="email"] {
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            margin-bottom: 10px;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            border: none;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        footer {
            margin-top: 20px;
            text-align: center;
        }
    </style>
</head>

<body>
    <div class="container">
        <h1>Update Your Credentials</h1>
        <form action="updateServlet" method="post">
            <label for="name">Name:</label>
            <input type="text" name="name" value="<%=user.getName()%>" required>
            <label for="email">Email:</label>
            <input type="email" name="email" value="<%=user.getEmail()%>" required>
            <label for="age">Age:</label>
            <input type="text" name="age" value="<%=user.getAge()%>" required>
            <label for="education">Qualification:</label>
            <input type="text" name="education" value="<%=user.getEducation()%>" required>
            <label for="exp">Experience:</label>
            <input type="text" name="exp" value="<%=user.getExp()%>" required>
            <label for="skills">Skills:</label>
            <input type="text" name="skills" value="<%=user.getSkills()%>" required>

            <input type="submit" value="UPDATE">
            <input type="hidden" name="userId" value="<%=user.getId()%>">
        </form>

        <footer>
            <p>&copy; 2023 Himachandu World. All rights reserved.</p>
        </footer>
    </div>
</body>
</html>
