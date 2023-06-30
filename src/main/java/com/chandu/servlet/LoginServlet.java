package com.chandu.servlet;
import com.chandu.Dao.UserDAO;
import com.chandu.Model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.query.Query;

import java.io.IOException;
@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("passwd");

        // Perform authentication logic here
        if (authenticate(username, password)) {
            // If authentication succeeds, store user details in session
            User user = getUserDetails(username); // Retrieve user details from database or other source
            request.getSession().setAttribute("user", user);









            // Redirect to user details page
           response.sendRedirect("userDetails.jsp");
        } else {
            // If authentication fails, redirect back to login page
            response.sendRedirect("login.jsp");
        }
    }


    private boolean authenticate(String username, String password) {
        // Implement your authentication logic here
        Session session = null;
        try {
            session = UserDAO.getSessionFactory().openSession();
            Query<User> query = session.createQuery("FROM User WHERE Name = :username AND Password = :password");
            query.setParameter("username", username);
            query.setParameter("password", password);
            User user = query.uniqueResult();
            return user != null;
        } finally {
            if (session != null) {
                session.close();
            }
        }
    }

    private User getUserDetails(String username) {
        // Retrieve user details from database based on username
        Session session = null;
        try {
            session = UserDAO.getSessionFactory().openSession();
            Query<User> query = session.createQuery("FROM User WHERE Name = :username");
            query.setParameter("username", username);
            User user = query.uniqueResult();
            return user;
        } finally {
            if (session != null) {
                session.close();
            }
        }
    }
}