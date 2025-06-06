package com.example.masterclassdemo.servlet;

import com.example.masterclassdemo.dao.UserDAO;
import com.example.masterclassdemo.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "loginServlet", value = "/login")
public class LoginServlet extends HttpServlet {
    private UserDAO userDAO;
    
    public void init() {
        userDAO = new UserDAO();
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Forward to the login page
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get form data
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        // Validate form data
        if (email == null || password == null || email.isEmpty() || password.isEmpty()) {
            request.setAttribute("errorMessage", "Email and password are required");
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }
        
        // Check if user exists
        User user = userDAO.getUserByEmail(email);
        
        if (user != null && user.getPassword().equals(password)) {
            // Login successful, create session
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            
            // Redirect to dashboard or home page
            response.sendRedirect("index.jsp");
        } else {
            // Login failed
            request.setAttribute("errorMessage", "Invalid email or password");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}