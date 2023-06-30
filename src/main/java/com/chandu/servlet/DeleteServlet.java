package com.chandu.servlet;

import com.chandu.Dao.UserDAO;
import com.chandu.Model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/deleteServlet")
public class DeleteServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve the user from the session
        User user = (User) request.getSession().getAttribute("user");

        // Delete the user from the database
        UserDAO userDAO = new UserDAO();
        userDAO.deleteUser(user);

        // Invalidate the session and redirect to the login page
        request.getSession().invalidate();
        response.sendRedirect("login.jsp");
    }
}
