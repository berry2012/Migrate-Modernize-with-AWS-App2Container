<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>AWS Modernisation Masterclass</title>
    <link rel="stylesheet" href="css/aws-styles.css">
</head>
<body>
    <div class="aws-header">
        <h1>AWS Modernisation Masterclass</h1>
    </div>
    
    <div class="aws-container">
        <div style="display: flex; justify-content: space-between; align-items: center;">
            <h2>Welcome to the AWS Modernisation Portal</h2>
            
            <c:if test="${empty sessionScope.user}">
                <div>
                    <a href="login" class="aws-button" style="margin-right: 10px;">Login</a>
                    <a href="register" class="aws-button">Register</a>
                </div>
            </c:if>
            
            <c:if test="${not empty sessionScope.user}">
                <div>
                    <span>Welcome, ${sessionScope.user.firstName}!</span>
                    <a href="logout" class="aws-button" style="margin-left: 10px;">Logout</a>
                </div>
            </c:if>
        </div>
        
        <div style="margin-top: 30px; display: flex; flex-wrap: wrap; gap: 20px;">
            <div style="flex: 1; min-width: 300px; background-color: white; padding: 20px; border-radius: 5px; box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);">
                <h3 style="color: var(--aws-squid-ink);">Getting Started with Containerisation</h3>
                <p>Learn how to containerize your applications for better portability and scalability.</p>
                <a href="hello-servlet" class="aws-link">Learn More</a>
            </div>
            
            <div style="flex: 1; min-width: 300px; background-color: white; padding: 20px; border-radius: 5px; box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);">
                <h3 style="color: var(--aws-squid-ink);">AWS Cloud Migration</h3>
                <p>Discover best practices for migrating your applications to the AWS Cloud.</p>
                <a href="#" class="aws-link">Learn More</a>
            </div>
            
            <div style="flex: 1; min-width: 300px; background-color: white; padding: 20px; border-radius: 5px; box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);">
                <h3 style="color: var(--aws-squid-ink);">Modernisation Strategies</h3>
                <p>Explore different strategies for modernizing your legacy applications.</p>
                <a href="#" class="aws-link">Learn More</a>
            </div>
        </div>
        
        <c:if test="${not empty sessionScope.user}">
            <div style="margin-top: 30px;">
                <a href="users" class="aws-button">View All Users</a>
            </div>
        </c:if>
    </div>
    
    <div class="aws-footer">
        <p>&copy; 2025 AWS Modernisation Masterclass</p>
    </div>
</body>
</html>