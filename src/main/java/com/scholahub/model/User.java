package com.scholahub.model;

public class User {

    private int userID;
    private String firstName;
    private String lastName;
    private String phoneNumber;
    private String userName;
    private String Password;
    private UserRole role;
    private String profileImage;
    private String Department;
    private String subjectsTeach;
    private String subjectsEnrolled;
    private String studentGrade;
    private String Bio;
    private String Qualifications;


    public User() {}

    public User(int userID, String firstName, String lastName, String phoneNumber, String userName, String password, UserRole role, String profileImage, String department, String subjectsTeach, String subjectsEnrolled, String studentGrade, String bio, String qualifications) {
        this.userID = userID;
        this.firstName = firstName;
        this.lastName = lastName;
        this.phoneNumber = phoneNumber;
        this.userName = userName;
        Password = password;
        this.role = role;
        this.profileImage = profileImage;
        Department = department;
        this.subjectsTeach = subjectsTeach;
        this.subjectsEnrolled = subjectsEnrolled;
        this.studentGrade = studentGrade;
        Bio = bio;
        this.Qualifications = qualifications;
    }

    //Setters

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public void setPassword(String password) {
        Password = password;
    }

    public void setRole(UserRole role) {
        this.role = role;
    }

    public void setProfileImage(String profileImage) {
        this.profileImage = profileImage;
    }

    public void setDepartment(String department) {
        Department = department;
    }

    public void setSubjectsTeach(String subjectsTeach) {
        this.subjectsTeach = subjectsTeach;
    }

    public void setSubjectsEnrolled(String subjectsEnrolled) {
        this.subjectsEnrolled = subjectsEnrolled;
    }

    public void setStudentGrade(String studentGrade) {
        this.studentGrade = studentGrade;
    }

    public void setBio(String bio) {
        Bio = bio;
    }

    public void setQualifications(String qualifications) {
        Qualifications = qualifications;
    }

    //Getters

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

    public String getProfileImage() {
        return profileImage;
    }

    public String getDepartment() {
        return Department;
    }

    public String getSubjectsTeach() {
        return subjectsTeach;
    }

    public String getSubjectsEnrolled() {
        return subjectsEnrolled;
    }

    public String getStudentGrade() {
        return studentGrade;
    }

    public String getBio() {
        return Bio;
    }

    public String getQualifications() {
        return Qualifications;
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
