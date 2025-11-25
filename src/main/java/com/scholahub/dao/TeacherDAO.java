package com.scholahub.dao;

import com.scholahub.model.Teacher;
import com.scholahub.model.User;
import com.scholahub.util.DBConnection;

import java.sql.*;

public class TeacherDAO {

    public int addTeacher(User user, Teacher teacher) {

        String insertUserSQL =
                "INSERT INTO users (firstName, lastName, phoneNumber, userName, password, role) " +
                        "VALUES (?, ?, ?, ?, ?, ?)";

        String insertTeacherSQL =
                "INSERT INTO teachers (userID, department, subjects,profileImage, qualifications) " +
                        "VALUES (?, ?, ?, ?,?)";

        try (Connection conn = DBConnection.getConnection()) {

            // Insert user + get generated userID
            PreparedStatement userStmt =
                    conn.prepareStatement(insertUserSQL, Statement.RETURN_GENERATED_KEYS);

            userStmt.setString(1, user.getFirstName());
            userStmt.setString(2, user.getLastName());
            userStmt.setString(3, user.getPhoneNumber());
            userStmt.setString(4, user.getUserName());
            userStmt.setString(5, user.getPassword());
            userStmt.setString(6, user.getRole().toString());

            int rows = userStmt.executeUpdate();
            if (rows == 0) return 0; // user insert failed

            ResultSet rs = userStmt.getGeneratedKeys();
            int userID = 0;

            if (rs.next()) {
                userID = rs.getInt(1);
            }

            // Insert teacher row
            PreparedStatement teacherStmt =
                    conn.prepareStatement(insertTeacherSQL);

            teacherStmt.setInt(1, userID);
            teacherStmt.setString(2,teacher.getDepartment());
            teacherStmt.setString(3, teacher.getSubject());
            teacherStmt.setString(4, teacher.getProfileImage());
            teacherStmt.setString(5, teacher.getQualifications());

            teacherStmt.executeUpdate();

            return userID; // success

        } catch (Exception e) {
            System.out.println("ERROR in TeacherDAO:");
            e.printStackTrace();
        }


        return 0;
    }
}
