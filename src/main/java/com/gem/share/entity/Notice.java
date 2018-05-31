package com.gem.share.entity;

public class Notice {
    private Integer noticeId;

    private Integer userId;

    private String noticecontent;

    private Integer noticestatus;

    public Notice() {
    }

    @Override
    public String toString() {
        return "Notice{" +
                "noticeId=" + noticeId +
                ", userId=" + userId +
                ", noticecontent='" + noticecontent + '\'' +
                ", noticestatus=" + noticestatus +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Notice notice = (Notice) o;

        if (noticeId != null ? !noticeId.equals(notice.noticeId) : notice.noticeId != null) return false;
        if (userId != null ? !userId.equals(notice.userId) : notice.userId != null) return false;
        if (noticecontent != null ? !noticecontent.equals(notice.noticecontent) : notice.noticecontent != null)
            return false;
        return noticestatus != null ? noticestatus.equals(notice.noticestatus) : notice.noticestatus == null;
    }

    @Override
    public int hashCode() {
        int result = noticeId != null ? noticeId.hashCode() : 0;
        result = 31 * result + (userId != null ? userId.hashCode() : 0);
        result = 31 * result + (noticecontent != null ? noticecontent.hashCode() : 0);
        result = 31 * result + (noticestatus != null ? noticestatus.hashCode() : 0);
        return result;
    }

    public Integer getNoticeId() {
        return noticeId;
    }

    public void setNoticeId(Integer noticeId) {
        this.noticeId = noticeId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getNoticecontent() {
        return noticecontent;
    }

    public void setNoticecontent(String noticecontent) {
        this.noticecontent = noticecontent == null ? null : noticecontent.trim();
    }

    public Integer getNoticestatus() {
        return noticestatus;
    }

    public void setNoticestatus(Integer noticestatus) {
        this.noticestatus = noticestatus;
    }
}