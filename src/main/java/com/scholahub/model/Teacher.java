package com.scholahub.model;

public class Teacher extends User{

    private int teacherID;
//    private int userID;
    private String department;
    private String subject;
    private String profileImage; // VARCHAR(255)
    private String qualifications;


    public Teacher() {
    }

    public Teacher( int teacherID, String department, String subject, String profileImage, String qualifications) {
//        this.userID = userID;
        this.teacherID = teacherID;
        this.department = department;
        this.subject = subject;
        this.profileImage = profileImage;
        this.qualifications = qualifications;
    }

    public int getTeacherID() {
        return teacherID;
    }

    public void setTeacherID(int teacherID) {
        this.teacherID = teacherID;
    }

//    public int getUserID() {
//        return userID;
//    }

//    public void setUserID(int userID) {
//        this.userID = userID;
//    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getProfileImage() {
        return profileImage;
    }

    public void setProfileImage(String profileImage) {
        this.profileImage = profileImage;
    }

    public String getQualifications() {
        return qualifications;
    }

    public void setQualifications(String qualifications) {
        this.qualifications = qualifications;
    }

}
