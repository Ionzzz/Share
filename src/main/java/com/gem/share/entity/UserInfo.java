package com.gem.share.entity;

import java.util.Date;

public class UserInfo {
    private Integer userId;

    private String useraccount;

    private String userpwd;

    private String usersex;

    private Integer userage;

    private String usereducate;

    private String usergraduate;

    private String userintroduce;

    private String usernickname;

    private String userimg;

    private String useremail;

    private Integer addresssId;

    private String userphone;

    private String userenergy;

    private String useridnumber;

    private String userstatus;

    private String username;

    private Date usercreatetime;

    private Date logintime;

    public UserInfo() {
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        UserInfo userInfo = (UserInfo) o;

        if (userId != null ? !userId.equals(userInfo.userId) : userInfo.userId != null) return false;
        if (useraccount != null ? !useraccount.equals(userInfo.useraccount) : userInfo.useraccount != null)
            return false;
        if (userpwd != null ? !userpwd.equals(userInfo.userpwd) : userInfo.userpwd != null) return false;
        if (usersex != null ? !usersex.equals(userInfo.usersex) : userInfo.usersex != null) return false;
        if (userage != null ? !userage.equals(userInfo.userage) : userInfo.userage != null) return false;
        if (usereducate != null ? !usereducate.equals(userInfo.usereducate) : userInfo.usereducate != null)
            return false;
        if (usergraduate != null ? !usergraduate.equals(userInfo.usergraduate) : userInfo.usergraduate != null)
            return false;
        if (userintroduce != null ? !userintroduce.equals(userInfo.userintroduce) : userInfo.userintroduce != null)
            return false;
        if (usernickname != null ? !usernickname.equals(userInfo.usernickname) : userInfo.usernickname != null)
            return false;
        if (userimg != null ? !userimg.equals(userInfo.userimg) : userInfo.userimg != null) return false;
        if (useremail != null ? !useremail.equals(userInfo.useremail) : userInfo.useremail != null) return false;
        if (addresssId != null ? !addresssId.equals(userInfo.addresssId) : userInfo.addresssId != null) return false;
        if (userphone != null ? !userphone.equals(userInfo.userphone) : userInfo.userphone != null) return false;
        if (userenergy != null ? !userenergy.equals(userInfo.userenergy) : userInfo.userenergy != null) return false;
        if (useridnumber != null ? !useridnumber.equals(userInfo.useridnumber) : userInfo.useridnumber != null)
            return false;
        if (userstatus != null ? !userstatus.equals(userInfo.userstatus) : userInfo.userstatus != null) return false;
        if (username != null ? !username.equals(userInfo.username) : userInfo.username != null) return false;
        if (usercreatetime != null ? !usercreatetime.equals(userInfo.usercreatetime) : userInfo.usercreatetime != null)
            return false;
        return logintime != null ? logintime.equals(userInfo.logintime) : userInfo.logintime == null;
    }

    @Override
    public int hashCode() {
        int result = userId != null ? userId.hashCode() : 0;
        result = 31 * result + (useraccount != null ? useraccount.hashCode() : 0);
        result = 31 * result + (userpwd != null ? userpwd.hashCode() : 0);
        result = 31 * result + (usersex != null ? usersex.hashCode() : 0);
        result = 31 * result + (userage != null ? userage.hashCode() : 0);
        result = 31 * result + (usereducate != null ? usereducate.hashCode() : 0);
        result = 31 * result + (usergraduate != null ? usergraduate.hashCode() : 0);
        result = 31 * result + (userintroduce != null ? userintroduce.hashCode() : 0);
        result = 31 * result + (usernickname != null ? usernickname.hashCode() : 0);
        result = 31 * result + (userimg != null ? userimg.hashCode() : 0);
        result = 31 * result + (useremail != null ? useremail.hashCode() : 0);
        result = 31 * result + (addresssId != null ? addresssId.hashCode() : 0);
        result = 31 * result + (userphone != null ? userphone.hashCode() : 0);
        result = 31 * result + (userenergy != null ? userenergy.hashCode() : 0);
        result = 31 * result + (useridnumber != null ? useridnumber.hashCode() : 0);
        result = 31 * result + (userstatus != null ? userstatus.hashCode() : 0);
        result = 31 * result + (username != null ? username.hashCode() : 0);
        result = 31 * result + (usercreatetime != null ? usercreatetime.hashCode() : 0);
        result = 31 * result + (logintime != null ? logintime.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "UserInfo{" +
                "userId=" + userId +
                ", useraccount='" + useraccount + '\'' +
                ", userpwd='" + userpwd + '\'' +
                ", usersex='" + usersex + '\'' +
                ", userage=" + userage +
                ", usereducate='" + usereducate + '\'' +
                ", usergraduate='" + usergraduate + '\'' +
                ", userintroduce='" + userintroduce + '\'' +
                ", usernickname='" + usernickname + '\'' +
                ", userimg='" + userimg + '\'' +
                ", useremail='" + useremail + '\'' +
                ", addresssId=" + addresssId +
                ", userphone='" + userphone + '\'' +
                ", userenergy='" + userenergy + '\'' +
                ", useridnumber='" + useridnumber + '\'' +
                ", userstatus='" + userstatus + '\'' +
                ", username='" + username + '\'' +
                ", usercreatetime=" + usercreatetime +
                ", logintime=" + logintime +
                '}';
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Date getUsercreatetime() {
        return usercreatetime;
    }

    public void setUsercreatetime(Date usercreatetime) {
        this.usercreatetime = usercreatetime;
    }

    public Date getLogintime() {
        return logintime;
    }

    public void setLogintime(Date logintime) {
        this.logintime = logintime;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUseraccount() {
        return useraccount;
    }

    public void setUseraccount(String useraccount) {
        this.useraccount = useraccount == null ? null : useraccount.trim();
    }

    public String getUserpwd() {
        return userpwd;
    }

    public void setUserpwd(String userpwd) {
        this.userpwd = userpwd == null ? null : userpwd.trim();
    }

    public String getUsersex() {
        return usersex;
    }

    public void setUsersex(String usersex) {
        this.usersex = usersex == null ? null : usersex.trim();
    }

    public Integer getUserage() {
        return userage;
    }

    public void setUserage(Integer userage) {
        this.userage = userage;
    }

    public String getUsereducate() {
        return usereducate;
    }

    public void setUsereducate(String usereducate) {
        this.usereducate = usereducate == null ? null : usereducate.trim();
    }

    public String getUsergraduate() {
        return usergraduate;
    }

    public void setUsergraduate(String usergraduate) {
        this.usergraduate = usergraduate == null ? null : usergraduate.trim();
    }

    public String getUserintroduce() {
        return userintroduce;
    }

    public void setUserintroduce(String userintroduce) {
        this.userintroduce = userintroduce == null ? null : userintroduce.trim();
    }

    public String getUsernickname() {
        return usernickname;
    }

    public void setUsernickname(String usernickname) {
        this.usernickname = usernickname == null ? null : usernickname.trim();
    }

    public String getUserimg() {
        return userimg;
    }

    public void setUserimg(String userimg) {
        this.userimg = userimg == null ? null : userimg.trim();
    }

    public String getUseremail() {
        return useremail;
    }

    public void setUseremail(String useremail) {
        this.useremail = useremail == null ? null : useremail.trim();
    }

    public Integer getAddresssId() {
        return addresssId;
    }

    public void setAddresssId(Integer addresssId) {
        this.addresssId = addresssId;
    }

    public String getUserphone() {
        return userphone;
    }

    public void setUserphone(String userphone) {
        this.userphone = userphone == null ? null : userphone.trim();
    }

    public String getUserenergy() {
        return userenergy;
    }

    public void setUserenergy(String userenergy) {
        this.userenergy = userenergy == null ? null : userenergy.trim();
    }

    public String getUseridnumber() {
        return useridnumber;
    }

    public void setUseridnumber(String useridnumber) {
        this.useridnumber = useridnumber == null ? null : useridnumber.trim();
    }

    public String getUserstatus() {
        return userstatus;
    }

    public void setUserstatus(String userstatus) {
        this.userstatus = userstatus == null ? null : userstatus.trim();
    }
}