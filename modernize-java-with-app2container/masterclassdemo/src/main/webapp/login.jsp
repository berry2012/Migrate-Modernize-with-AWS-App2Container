<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login - AWS Modernisation Masterclass</title>
    <link rel="stylesheet" href="css/aws-styles.css">
</head>
<body>
    <div class="aws-header">
        <h1>AWS Modernisation Masterclass</h1>
    </div>
    
    <div class="aws-container">
        <h2>User Login</h2>
        
        <div class="aws-form">
            <form action="login" method="post">
                <div class="aws-form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" required>
                </div>
                
                <div class="aws-form-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" required>
                </div>
                
                <button type="submit" class="aws-button">Login</button>
            </form>
            
            <p>Don't have an account? <a href="register.jsp" class="aws-link">Register here</a></p>
        </div>
        
        <p><a href="index.jsp" class="aws-link">Back to Home</a></p>
    </div>
    
    <div class="aws-footer">
        <p>&copy; 2023 AWS Modernisation Masterclass</p>
    </div>
</body>
</html>