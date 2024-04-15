package com.hotelreservation.javabeansClass;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connectivity {
    public static String url = "jdbc:mysql://localhost:3306/hotel_reservation";
    public static String user = "root";
    public static String password = "Dharini_544";

    public static Connection getConnection() {
        Connection connect = null;
        try {
            connect = DriverManager.getConnection(url, user, password);
        } catch (SQLException ex) {
            ex.fillInStackTrace();
        }
        return connect;
    }
}
