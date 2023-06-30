package com.chandu.servlet;

import com.chandu.Dao.UserDAO;
import com.chandu.Model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.io.IOException;

@WebServlet("/updateServlet")
public class updateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve the updated details from the form
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        int age = Integer.parseInt(request.getParameter("age"));
        String education = request.getParameter("education");
        int exp = Integer.parseInt(request.getParameter("exp"));
        String skills = request.getParameter("skills");

        // Retrieve the user from the session
        User user = (User) request.getSession().getAttribute("user");
        int userId = Integer.parseInt(request.getParameter("userId"));

        // Update the user object with the new details
        user.setId(userId);

// Update the user object with the new details
        user.setName(name);
        user.setEmail(email);
        user.setAge(age);
        user.setEducation(education);
        user.setExp(exp);
        user.setSkills(skills);

        // Save the updated user details in the database
        UserDAO userDAO = new UserDAO();
        userDAO.updateUser(user);

        // Redirect to the user details page
       response.sendRedirect("userDetails.jsp");
        response.getWriter().println("Updated!!!!!");
    }
}
