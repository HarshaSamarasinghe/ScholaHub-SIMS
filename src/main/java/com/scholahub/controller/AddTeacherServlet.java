package com.scholahub.controller;

import com.scholahub.dao.TeacherDAO;
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
        User admin = (User) request.getSession().getAttribute("loggedInUser");
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
        User teacher = new User();
        teacher.setFirstName(firstName);
        teacher.setLastName(lastName);
        teacher.setPhoneNumber(phone);
        teacher.setUserName(username);
        teacher.setPassword(password);
        teacher.setRole(UserRole.TEACHER);
        teacher.setProfileImage("uploads/" + fileName);
        teacher.setDepartment(department);
        teacher.setSubjectsTeach(subjects);
        teacher.setQualifications(qualification);


        // Insert user + teacher (in DAO)
        TeacherDAO teacherDAO = new TeacherDAO();
        int userID = teacherDAO.createTeacher(teacher);

        if (userID > 0) {
            request.getSession().setAttribute("toast", "Teacher added successfully!");
            response.sendRedirect("Views/Admin/AddTeacher.jsp");
        } else {
            request.getSession().setAttribute("toast", "Something went wrong!");
            response.sendRedirect("Views/Admin/AddTeacher.jsp");
        }

    }
}
