<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Users - AWS Modernisation Masterclass</title>
    <link rel="stylesheet" href="css/aws-styles.css">
</head>
<body>
    <div class="aws-header">
        <h1>AWS Modernisation Masterclass</h1>
    </div>
    
    <div class="aws-container">
        <h2>Registered Users</h2>
        
        <table style="width: 100%; border-collapse: collapse; margin-top: 20px;">
            <thead>
                <tr style="background-color: var(--aws-squid-ink); color: white;">
                    <th style="padding: 10px; text-align: left;">ID</th>
                    <th style="padding: 10px; text-align: left;">First Name</th>
                    <th style="padding: 10px; text-align: left;">Last Name</th>
                    <th style="padding: 10px; text-align: left;">Email</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="user" items="${users}">
                    <tr style="border-bottom: 1px solid var(--aws-gray-medium);">
                        <td style="padding: 10px;"><c:out value="${user.id}" /></td>
                        <td style="padding: 10px;"><c:out value="${user.firstName}" /></td>
                        <td style="padding: 10px;"><c:out value="${user.lastName}" /></td>
                        <td style="padding: 10px;"><c:out value="${user.email}" /></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        
        <p><a href="index.jsp" class="aws-link">Back to Home</a></p>
    </div>
    
    <div class="aws-footer">
        <p>&copy; 2023 AWS Modernisation Masterclass</p>
    </div>
</body>
</html>