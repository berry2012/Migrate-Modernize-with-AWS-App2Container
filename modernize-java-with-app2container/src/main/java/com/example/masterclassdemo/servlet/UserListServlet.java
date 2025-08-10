package com.example.masterclassdemo.servlet;

import com.example.masterclassdemo.dao.UserDAO;
import com.example.masterclassdemo.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "userListServlet", value = "/users")
public class UserListServlet extends HttpServlet {
    private UserDAO userDAO;
    
    public void init() {
        userDAO = new UserDAO();
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get all users from the database
        List<User> users = userDAO.getAllUsers();
        
        // Set users as request attribute
        request.setAttribute("users", users);
        
        // Forward to the users.jsp page
        request.getRequestDispatcher("users.jsp").forward(request, response);
    }
}