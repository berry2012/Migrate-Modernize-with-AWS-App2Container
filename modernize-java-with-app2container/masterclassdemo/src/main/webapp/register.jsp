<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Register - AWS Modernisation Masterclass</title>
    <link rel="stylesheet" href="css/aws-styles.css">
</head>
<body>
    <div class="aws-header">
        <h1>AWS Modernisation Masterclass</h1>
    </div>
    
    <div class="aws-container">
        <h2>User Registration</h2>
        
        <div class="aws-form">
            <form action="register" method="post">
                <div class="aws-form-group">
                    <label for="firstName">First Name</label>
                    <input type="text" id="firstName" name="firstName" required>
                </div>
                
                <div class="aws-form-group">
                    <label for="lastName">Last Name</label>
                    <input type="text" id="lastName" name="lastName" required>
                </div>
                
                <div class="aws-form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" required>
                </div>
                
                <div class="aws-form-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" required>
                </div>
                
                <div class="aws-form-group">
                    <label for="confirmPassword">Confirm Password</label>
                    <input type="password" id="confirmPassword" name="confirmPassword" required>
                </div>
                
                <button type="submit" class="aws-button">Register</button>
            </form>
            
            <p>Already have an account? <a href="login.jsp" class="aws-link">Login here</a></p>
        </div>
        
        <p><a href="index.jsp" class="aws-link">Back to Home</a></p>
    </div>
    
    <div class="aws-footer">
        <p>&copy; 2023 AWS Modernisation Masterclass</p>
    </div>
</body>
</html>