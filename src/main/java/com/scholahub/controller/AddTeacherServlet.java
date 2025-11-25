//package com.scholahub.controller;
//
//import com.scholahub.dao.UserDAO;
//import com.scholahub.dao.TeacherDAO;
//import com.scholahub.model.User;
//import com.scholahub.model.UserRole;
//import com.scholahub.model.Teacher;
//
//import jakarta.servlet.annotation.MultipartConfig;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.*;
//import jakarta.servlet.ServletException;
//import java.io.File;
//import java.io.IOException;
//
//@WebServlet("/addTeacher")
//@MultipartConfig
//public class AddTeacherServlet extends HttpServlet {
//
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//
//        // Admin check
//        User admin = (User) request.getSession().getAttribute("user");
//        if (admin == null || admin.getRole() != UserRole.ADMIN) {
//            response.sendRedirect("unauthorized.jsp");
//            return;
//        }
//
//        String firstName = request.getParameter("firstName");
//        String lastName = request.getParameter("lastName");
//        String phone = request.getParameter("phone");
//        String userName = request.getParameter("username");
//        String password = request.getParameter("password");
//        String department = request.getParameter("department");
//        String subject = request.getParameter("subject");
//        String qualifications = request.getParameter("qualifications");
//        String joinedDate = request.getParameter("joinedDate");
//
//        Part filePart = request.getPart("profileImage");
//        String fileName = System.currentTimeMillis() + "_" + filePart.getSubmittedFileName();
//        String uploadPath = request.getServletContext().getRealPath("uploads");
//
//        File uploadDir = new File(uploadPath);
//        if (!uploadDir.exists()) uploadDir.mkdirs();
//
//        filePart.write(uploadPath + File.separator + fileName);
//
//        // Insert user first
//        UserDAO userDAO = new UserDAO();
//        int newUserId = userDAO.createUser(
//                firstName, lastName, phone, userName, password, UserRole.TEACHER, fileName
//        );
//
//        // Insert teacher record
//        Teacher teacher = new Teacher(newUserId, department, subject, fileName, qualifications, joinedDate);
//        TeacherDAO teacherDAO = new TeacherDAO();
//        teacherDAO.addTeacher(teacher);
//
//        response.sendRedirect("successful.jsp");
//    }
//}


package com.scholahub.controller;

import com.scholahub.dao.TeacherDAO;
import com.scholahub.model.Teacher;
import com.scholahub.model.User;
import com.scholahub.model.UserRole;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import jakarta.servlet.ServletException;
import java.io.File;
import java.io.IOException;

@WebServlet("/addTeacher")
@MultipartConfig
public class AddTeacherServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Admin authentication check
        User admin = (User) request.getSession().getAttribute("user");
        if (admin == null || admin.getRole() != UserRole.ADMIN) {
            response.sendRedirect("unauthorized.jsp");
            return;
        }

        // ----- User fields -----
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String phone = request.getParameter("phone");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // ----- Teacher fields -----
        String subjects = request.getParameter("subject");
        String department = request.getParameter("department");
        String qualification = request.getParameter("qualifications");

        // ======== Profile Image Upload =========
        Part filePart = request.getPart("profileImage");
        String fileName = System.currentTimeMillis() + "_" + filePart.getSubmittedFileName();

        String uploadPath = request.getServletContext().getRealPath("uploads");
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) uploadDir.mkdirs();

        filePart.write(uploadPath + File.separator + fileName);

        // -------- Create User object --------
        User user = new User();
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setPhoneNumber(phone);
        user.setUserName(username);
        user.setPassword(password);
        user.setRole(UserRole.TEACHER);

        // -------- Teacher object --------
        Teacher teacher = new Teacher();
        teacher.setSubject(subjects);
        teacher.setDepartment(department);
        teacher.setQualifications(qualification);
        teacher.setProfileImage("uploads/" + fileName);

        // Insert user + teacher (in DAO)
        TeacherDAO teacherDAO = new TeacherDAO();
        int userID = teacherDAO.addTeacher(user, teacher);

        if (userID > 0) {
            response.sendRedirect("successful.jsp");
        } else {
            response.sendRedirect("error.jsp");
        }
    }
}
