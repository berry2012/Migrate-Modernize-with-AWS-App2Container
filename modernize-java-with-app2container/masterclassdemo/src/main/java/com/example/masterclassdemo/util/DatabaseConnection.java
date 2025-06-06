package com.example.masterclassdemo.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    private static final String DEFAULT_URL = "jdbc:mysql://localhost:3306/masterclassdb";
    private static final String DEFAULT_USER = "root";
    private static final String DEFAULT_PASSWORD = "password";

    private static final String URL = System.getenv("DB_URL") != null ?
            System.getenv("DB_URL") : DEFAULT_URL;
    private static final String USER = System.getenv("DB_USERNAME") != null ?
            System.getenv("DB_USERNAME") : DEFAULT_USER;
    private static final String PASSWORD = System.getenv("DB_PASSWORD") != null ?
            System.getenv("DB_PASSWORD") : DEFAULT_PASSWORD;

    public static Connection getConnection() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}





