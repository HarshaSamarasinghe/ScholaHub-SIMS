package com.scholahub.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/scholahubdb";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "#Harsha1234";

    // Load driver only once
    static {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // Return database connection
    public static Connection getConnection() {
        Connection connection = null;

        try {
            connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return connection;
    }
}