package com.gem.share.entity;

public class UserGrade {
    private Integer usergradeId;

    private String gradename;

    private Integer minscore;

    private Integer maxscore;

    public UserGrade() {
    }

    @Override
    public String toString() {
        return "UserGrade{" +
                "usergradeId=" + usergradeId +
                ", gradename='" + gradename + '\'' +
                ", minscore=" + minscore +
                ", maxscore=" + maxscore +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        UserGrade userGrade = (UserGrade) o;

        if (usergradeId != null ? !usergradeId.equals(userGrade.usergradeId) : userGrade.usergradeId != null)
            return false;
        if (gradename != null ? !gradename.equals(userGrade.gradename) : userGrade.gradename != null) return false;
        if (minscore != null ? !minscore.equals(userGrade.minscore) : userGrade.minscore != null) return false;
        return maxscore != null ? maxscore.equals(userGrade.maxscore) : userGrade.maxscore == null;
    }

    @Override
    public int hashCode() {
        int result = usergradeId != null ? usergradeId.hashCode() : 0;
        result = 31 * result + (gradename != null ? gradename.hashCode() : 0);
        result = 31 * result + (minscore != null ? minscore.hashCode() : 0);
        result = 31 * result + (maxscore != null ? maxscore.hashCode() : 0);
        return result;
    }

    public Integer getUsergradeId() {
        return usergradeId;
    }

    public void setUsergradeId(Integer usergradeId) {
        this.usergradeId = usergradeId;
    }

    public String getGradename() {
        return gradename;
    }

    public void setGradename(String gradename) {
        this.gradename = gradename == null ? null : gradename.trim();
    }

    public Integer getMinscore() {
        return minscore;
    }

    public void setMinscore(Integer minscore) {
        this.minscore = minscore;
    }

    public Integer getMaxscore() {
        return maxscore;
    }

    public void setMaxscore(Integer maxscore) {
        this.maxscore = maxscore;
    }
}