package com.t2308e.thithuchanh.helper;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    private static final String URL = "jdbc:mysql://localhost:3306/player_evaluation"; // ✅ your current DB
    private static final String USER = "root";
    private static final String PASSWORD = ""; // default for XAMPP

    public static Connection getConnection() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            System.out.println("MySQL JDBC Driver not found: " + e.getMessage());
        }

        return DriverManager.getConnection(URL, USER, PASSWORD);
    }

    public static void testConnection() {
        try (Connection connection = getConnection()) {
            if (connection != null) {
                System.out.println("Connected successfully to player_evaluation!");
            }
        } catch (SQLException e) {
            System.out.println("Connection failed: " + e.getMessage());
        }
    }

    public static void main(String[] args) {
        testConnection();
    }
}