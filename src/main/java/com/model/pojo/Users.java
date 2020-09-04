package com.model.pojo;

public class Users {
    private Integer userId;
    private Integer offId;
    private String userName;
    private String userPwd;
    private Integer userPrioId;
    private Office office;
    private Priority priority;

    public Users() {
    }

    public Users(Integer userId, Integer offId, String userName, String userPwd, Integer userPrioId, Office office, Priority priority) {
        this.userId = userId;
        this.offId = offId;
        this.userName = userName;
        this.userPwd = userPwd;
        this.userPrioId = userPrioId;
        this.office = office;
        this.priority = priority;
    }

    @Override
    public String toString() {
        return "Users{" +
                "userId=" + userId +
                ", offId=" + offId +
                ", userName='" + userName + '\'' +
                ", userPwd='" + userPwd + '\'' +
                ", userPrioId=" + userPrioId +
                ", office=" + office +
                ", priority=" + priority +
                '}';
    }

    public Office getOffice() {
        return office;
    }

    public void setOffice(Office office) {
        this.office = office;
    }

    public Priority getPriority() {
        return priority;
    }

    public void setPriority(Priority priority) {
        this.priority = priority;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getOffId() {
        return offId;
    }

    public void setOffId(Integer offId) {
        this.offId = offId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPwd() {
        return userPwd;
    }

    public void setUserPwd(String userPwd) {
        this.userPwd = userPwd;
    }

    public Integer getUserPrioId() {
        return userPrioId;
    }

    public void setUserPrioId(Integer userPrioId) {
        this.userPrioId = userPrioId;
    }
}
