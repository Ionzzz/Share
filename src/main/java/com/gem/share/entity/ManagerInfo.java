package com.gem.share.entity;

public class ManagerInfo {
    private Integer managerId;

    private String manageraccount;

    private String managerpwd;

    private Integer managerlimit;

    public ManagerInfo() {
    }

    @Override
    public String toString() {
        return "ManagerInfo{" +
                "managerId=" + managerId +
                ", manageraccount='" + manageraccount + '\'' +
                ", managerpwd='" + managerpwd + '\'' +
                ", managerlimit=" + managerlimit +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ManagerInfo that = (ManagerInfo) o;

        if (managerId != null ? !managerId.equals(that.managerId) : that.managerId != null) return false;
        if (manageraccount != null ? !manageraccount.equals(that.manageraccount) : that.manageraccount != null)
            return false;
        if (managerpwd != null ? !managerpwd.equals(that.managerpwd) : that.managerpwd != null) return false;
        return managerlimit != null ? managerlimit.equals(that.managerlimit) : that.managerlimit == null;
    }

    @Override
    public int hashCode() {
        int result = managerId != null ? managerId.hashCode() : 0;
        result = 31 * result + (manageraccount != null ? manageraccount.hashCode() : 0);
        result = 31 * result + (managerpwd != null ? managerpwd.hashCode() : 0);
        result = 31 * result + (managerlimit != null ? managerlimit.hashCode() : 0);
        return result;
    }

    public Integer getManagerId() {
        return managerId;
    }

    public void setManagerId(Integer managerId) {
        this.managerId = managerId;
    }

    public String getManageraccount() {
        return manageraccount;
    }

    public void setManageraccount(String manageraccount) {
        this.manageraccount = manageraccount == null ? null : manageraccount.trim();
    }

    public String getManagerpwd() {
        return managerpwd;
    }

    public void setManagerpwd(String managerpwd) {
        this.managerpwd = managerpwd == null ? null : managerpwd.trim();
    }

    public Integer getManagerlimit() {
        return managerlimit;
    }

    public void setManagerlimit(Integer managerlimit) {
        this.managerlimit = managerlimit;
    }
}