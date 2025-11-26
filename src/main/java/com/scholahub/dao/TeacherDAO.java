package com.scholahub.dao;

import com.scholahub.model.User;
import com.scholahub.util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class TeacherDAO {

    public int createTeacher(User teacher) {

        String sql = "INSERT INTO users (firstName, lastName, phoneNumber, userName, password, role, profileImage, department, subjectsTeach, qualifications) "
                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {

            ps.setString(1, teacher.getFirstName());
            ps.setString(2, teacher.getLastName());
            ps.setString(3, teacher.getPhoneNumber());
            ps.setString(4, teacher.getUserName());
            ps.setString(5, teacher.getPassword());
            ps.setString(6, teacher.getRole().name());
            ps.setString(7, teacher.getProfileImage());
            ps.setString(8, teacher.getDepartment());
            ps.setString(9, teacher.getSubjectsTeach());
            ps.setString(10, teacher.getQualifications());

            ps.executeUpdate();

            ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) {
                return rs.getInt(1);  // Return userID
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1;
    }
}
