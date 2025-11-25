package com.scholahub.dao;

import java.sql.*;
import com.scholahub.model.User;
import com.scholahub.model.UserRole;
import com.scholahub.util.DBConnection;

public class UserDAO {

    public User authenticate(String username, String password) {

        String sql = "SELECT * FROM users WHERE userName=? AND password=?";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, username);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                return extractUser(rs);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }

    private User extractUser(ResultSet rs) throws SQLException {

        User user = new User();

        user.setUserID(rs.getInt("userID"));
        user.setFirstName(rs.getString("firstName"));
        user.setLastName(rs.getString("lastName"));
        user.setPhoneNumber(rs.getString("phoneNumber"));
        user.setUserName(rs.getString("userName"));
        user.setPassword(rs.getString("password"));
        user.setRole(UserRole.valueOf(rs.getString("role")));

        return user;
    }

//    public int createUser(String firstName, String lastName, String phone,
//                          String username, String password, UserRole role,
//                          String profileImage) {
//
//        String sql = "INSERT INTO users (firstName, lastName, phoneNumber, userName, password, role, profileImage) "
//                + "VALUES (?, ?, ?, ?, ?, ?, ?)";
//
//        try (Connection con = DBConnection.getConnection();
//             PreparedStatement ps = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
//
//            ps.setString(1, firstName);
//            ps.setString(2, lastName);
//            ps.setString(3, phone);
//            ps.setString(4, username);
//            ps.setString(5, password);
//            ps.setString(6, role.name());
//            ps.setString(7, profileImage);
//
//            ps.executeUpdate();
//
//            ResultSet rs = ps.getGeneratedKeys();
//            if (rs.next()) return rs.getInt(1);
//
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return -1;
//    }

}