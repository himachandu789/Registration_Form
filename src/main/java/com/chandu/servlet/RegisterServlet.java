package com.chandu.servlet;

import com.chandu.Dao.UserDAO;
import com.chandu.Model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/servlet")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       String username = request.getParameter("name");
       int Age = Integer.parseInt(request.getParameter("age"));
       String qualification = request.getParameter("edu");
       int experience = Integer.parseInt(request.getParameter("exp"));
       String skils = request.getParameter("skills");
       String email = request.getParameter("email");
       String password = request.getParameter("pswd");

       User user = new User(username,Age,qualification,experience,skils,email,password);


        UserDAO userDAO = new UserDAO();
        userDAO.addUser(user);


        //response.getWriter().println("Servlet Working");
        request.getRequestDispatcher("sucess.jsp").forward(request,response);

    }
}