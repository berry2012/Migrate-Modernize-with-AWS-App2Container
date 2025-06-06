package com.example.masterclassdemo.servlet;

import com.example.masterclassdemo.dao.UserDAO;
import com.example.masterclassdemo.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "registerServlet", value = "/register")
public class RegisterServlet extends HttpServlet {
    private UserDAO userDAO;
    
    public void init() {
        userDAO = new UserDAO();
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Forward to the registration page
        request.getRequestDispatcher("register.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get form data
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        
        // Validate form data
        if (firstName == null || lastName == null || email == null || password == null || confirmPassword == null ||
            firstName.isEmpty() || lastName.isEmpty() || email.isEmpty() || password.isEmpty() || confirmPassword.isEmpty()) {
            request.setAttribute("errorMessage", "All fields are required");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }
        
        // Check if passwords match
        if (!password.equals(confirmPassword)) {
            request.setAttribute("errorMessage", "Passwords do not match");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }
        
        // Check if user already exists
        User existingUser = userDAO.getUserByEmail(email);
        if (existingUser != null) {
            request.setAttribute("errorMessage", "Email already registered");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }
        
        // Create new user
        User user = new User(firstName, lastName, email, password);
        
        // Save user to database
        boolean result = userDAO.insertUser(user);
        
        if (result) {
            // Registration successful, redirect to login page
            response.sendRedirect("login.jsp");
        } else {
            // Registration failed
            request.setAttribute("errorMessage", "Registration failed. Please try again.");
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }
    }
}