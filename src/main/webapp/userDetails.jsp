<%@ page import="com.chandu.Model.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Details</title>
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

        h2 {
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }

        p {
            margin-bottom: 10px;
            font-size: 16px;
        }

        .details {
            margin-top: 30px;
        }

        .details h3 {
            color: #333;
            margin-bottom: 10px;
        }

        .details p {
            margin-bottom: 5px;
        }

        .actions {
            text-align: center;
            margin-top: 30px;
        }

        .actions a {
            color: #333;
            text-decoration: none;
            margin-right: 10px;
        }

        .actions a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>User Details</h2>
        <%-- Retrieve user details from session --%>
        <% User user = (User) request.getSession().getAttribute("user"); %>

        <div class="details">
            <h3>Welcome, <%= user.getName() %></h3>
            <p>Email: <%= user.getEmail() %></p>
            <p>Age: <%= user.getAge() %></p>
            <p>Qualification: <%= user.getEducation() %></p>
            <p>Experience: <%= user.getExp() %></p>
            <p>Skills: <%= user.getSkills() %></p>
        </div>

        <div class="actions">
            <a href="update.jsp">Update Details</a>
            <a href="deleteServlet" onclick="if(!confirm('Are you sure to delete the User?')) return false;">Delete User</a>

            <a href="login.jsp">Sign Out</a>
            <a href="index.jsp">Home</a>
        </div>
    </div>
</body>
</html>
