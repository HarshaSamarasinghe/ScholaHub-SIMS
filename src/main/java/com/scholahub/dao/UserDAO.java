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
        user.setStudentID(rs.getInt("studentID"));
        user.setTeacherID(rs.getInt("teacherID"));
        user.setAdminID(rs.getInt("adminID"));

        return user;
    }
}