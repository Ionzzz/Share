package com.gem.share.entity;

public class ManagerOpeContent {
    private Integer manageroperateId;

    private Integer managerId;

    private String manageroperate;

    public ManagerOpeContent() {
    }

    @Override
    public String toString() {
        return "ManagerOpeContent{" +
                "manageroperateId=" + manageroperateId +
                ", managerId=" + managerId +
                ", manageroperate='" + manageroperate + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ManagerOpeContent that = (ManagerOpeContent) o;

        if (manageroperateId != null ? !manageroperateId.equals(that.manageroperateId) : that.manageroperateId != null)
            return false;
        if (managerId != null ? !managerId.equals(that.managerId) : that.managerId != null) return false;
        return manageroperate != null ? manageroperate.equals(that.manageroperate) : that.manageroperate == null;
    }

    @Override
    public int hashCode() {
        int result = manageroperateId != null ? manageroperateId.hashCode() : 0;
        result = 31 * result + (managerId != null ? managerId.hashCode() : 0);
        result = 31 * result + (manageroperate != null ? manageroperate.hashCode() : 0);
        return result;
    }

    public Integer getManageroperateId() {
        return manageroperateId;
    }

    public void setManageroperateId(Integer manageroperateId) {
        this.manageroperateId = manageroperateId;
    }

    public Integer getManagerId() {
        return managerId;
    }

    public void setManagerId(Integer managerId) {
        this.managerId = managerId;
    }

    public String getManageroperate() {
        return manageroperate;
    }

    public void setManageroperate(String manageroperate) {
        this.manageroperate = manageroperate == null ? null : manageroperate.trim();
    }
}