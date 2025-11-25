package com.scholahub.controller;

import com.scholahub.dao.UserDAO;
import com.scholahub.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private UserDAO userDAO;

    @Override
    public void init() {
        userDAO = new UserDAO(); // Initialize DAO once
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Read form inputs
        String username = request.getParameter("userName");
        String password = request.getParameter("password");

        System.out.println("User Name: " + username);
        System.out.println("Password: " + password);

        // Validate using DAO
        User user = userDAO.authenticate(username, password);

        if (user != null) {

            // Login success → create session
            HttpSession session = request.getSession();
            session.setAttribute("loggedInUser", user);
        }
        else {
            // Login failed → show error on login.jsp
            request.setAttribute("errorMessage", "Invalid username or password!");
            request.getRequestDispatcher("/Authentication/Login.jsp").forward(request, response);
            return;
        }



        // Redirect based on role
        switch (user.getRole()) {
            case ADMIN:
                response.sendRedirect("Views/Admin/Dashboard.jsp");
                break;

            case TEACHER:
                response.sendRedirect("Views/Teacher/Dashboard.jsp");
                break;

            case STUDENT:
                response.sendRedirect("Views/Student/Dashboard.jsp");
                break;

            default:
                response.sendRedirect("index.jsp");
        }
    }
}

