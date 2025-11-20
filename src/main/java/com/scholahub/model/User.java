package com.scholahub.model;

public class User {

    private int userID;
    private String firstName;
    private String lastName;
    private String phoneNumber;
    private String userName;
    private String Password;
    private UserRole role;
    private int studentID;
    private int teacherID;
    private int adminID;


    public User() {}

    public User(int userID, String firstName, String lastName, String phoneNumber, String userName, String password, UserRole role, int studentID, int teacherID, int adminID) {
        this.userID = userID;
        this.firstName = firstName;
        this.lastName = lastName;
        this.phoneNumber = phoneNumber;
        this.userName = userName;
        Password = password;
        this.role = role;
        this.studentID = studentID;
        this.teacherID = teacherID;
        this.adminID = adminID;
    }

    public int getUserID() {
        return userID;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public String getUserName() {
        return userName;
    }

    public String getPassword() {
        return Password;
    }

    public UserRole getRole() {
        return role;
    }

    public int getStudentID() {
        return studentID;
    }

    public int getTeacherID() {
        return teacherID;
    }

    public int getAdminID() {
        return adminID;
    }

    //Setters

    public void setAdminID(int adminID) {
        this.adminID = adminID;
    }

    public void setTeacherID(int teacherID) {
        this.teacherID = teacherID;
    }

    public void setStudentID(int studentID) {
        this.studentID = studentID;
    }

    public void setRole(UserRole role) {
        this.role = role;
    }

    public void setPassword(String password) {
        Password = password;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    // --- Utility Methods for Role Checking ---

    public boolean isTeacher() {
        return this.role == UserRole.TEACHER;
    }

    public boolean isAdmin() {
        return this.role == UserRole.ADMIN;
    }

    public boolean isStudent() {
        return this.role == UserRole.STUDENT;
    }
}
