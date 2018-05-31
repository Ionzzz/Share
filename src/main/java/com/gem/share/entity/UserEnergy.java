package com.gem.share.entity;

public class UserEnergy {
    private Integer energy;//能量值
    private Integer userId;//外键
    private Integer userenergy;//主键

    public UserEnergy() {
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        UserEnergy that = (UserEnergy) o;

        if (energy != null ? !energy.equals(that.energy) : that.energy != null) return false;
        if (userId != null ? !userId.equals(that.userId) : that.userId != null) return false;
        return userenergy != null ? userenergy.equals(that.userenergy) : that.userenergy == null;
    }

    @Override
    public int hashCode() {
        int result = energy != null ? energy.hashCode() : 0;
        result = 31 * result + (userId != null ? userId.hashCode() : 0);
        result = 31 * result + (userenergy != null ? userenergy.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "UserEnergy{" +
                "energy=" + energy +
                ", userId=" + userId +
                ", userenergy=" + userenergy +
                '}';
    }

    public Integer getEnergy() {
        return energy;
    }

    public void setEnergy(Integer energy) {
        this.energy = energy;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getUserenergy() {
        return userenergy;
    }

    public void setUserenergy(Integer userenergy) {
        this.userenergy = userenergy;
    }
}
