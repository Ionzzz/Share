package com.gem.share.entity;

public class Report {
    private Integer reportId;

    private Integer userId;

    private String reportreason;

    public Integer getReportId() {
        return reportId;
    }

    public Report() {
    }

    @Override
    public String toString() {
        return "Report{" +
                "reportId=" + reportId +
                ", userId=" + userId +
                ", reportreason='" + reportreason + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Report report = (Report) o;

        if (reportId != null ? !reportId.equals(report.reportId) : report.reportId != null) return false;
        if (userId != null ? !userId.equals(report.userId) : report.userId != null) return false;
        return reportreason != null ? reportreason.equals(report.reportreason) : report.reportreason == null;
    }

    @Override
    public int hashCode() {
        int result = reportId != null ? reportId.hashCode() : 0;
        result = 31 * result + (userId != null ? userId.hashCode() : 0);
        result = 31 * result + (reportreason != null ? reportreason.hashCode() : 0);
        return result;
    }

    public void setReportId(Integer reportId) {
        this.reportId = reportId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getReportreason() {
        return reportreason;
    }

    public void setReportreason(String reportreason) {
        this.reportreason = reportreason == null ? null : reportreason.trim();
    }
}