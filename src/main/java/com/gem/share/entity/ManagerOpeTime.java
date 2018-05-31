package com.gem.share.entity;

import java.util.Date;

public class ManagerOpeTime {
    private Integer managerId;

    private Integer manageroperateId;

    private Date manageroperatetime;

    public ManagerOpeTime() {
    }

    @Override
    public String toString() {
        return "ManagerOpeTime{" +
                "managerId=" + managerId +
                ", manageroperateId=" + manageroperateId +
                ", manageroperatetime=" + manageroperatetime +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ManagerOpeTime that = (ManagerOpeTime) o;

        if (managerId != null ? !managerId.equals(that.managerId) : that.managerId != null) return false;
        if (manageroperateId != null ? !manageroperateId.equals(that.manageroperateId) : that.manageroperateId != null)
            return false;
        return manageroperatetime != null ? manageroperatetime.equals(that.manageroperatetime) : that.manageroperatetime == null;
    }

    @Override
    public int hashCode() {
        int result = managerId != null ? managerId.hashCode() : 0;
        result = 31 * result + (manageroperateId != null ? manageroperateId.hashCode() : 0);
        result = 31 * result + (manageroperatetime != null ? manageroperatetime.hashCode() : 0);
        return result;
    }

    public Integer getManagerId() {
        return managerId;
    }

    public void setManagerId(Integer managerId) {
        this.managerId = managerId;
    }

    public Integer getManageroperateId() {
        return manageroperateId;
    }

    public void setManageroperateId(Integer manageroperateId) {
        this.manageroperateId = manageroperateId;
    }

    public Date getManageroperatetime() {
        return manageroperatetime;
    }

    public void setManageroperatetime(Date manageroperatetime) {
        this.manageroperatetime = manageroperatetime;
    }
}