package com.gem.share.entity;

import java.util.Date;

public class ChatRecord {
    private Integer messageId;

    private String messagepost;

    private Date sendtime;

    private Integer userIdSend;

    private Integer userIdRecv;

    public ChatRecord() {
    }

    @Override
    public String toString() {
        return "ChatRecord{" +
                "messageId=" + messageId +
                ", messagepost='" + messagepost + '\'' +
                ", sendtime=" + sendtime +
                ", userIdSend=" + userIdSend +
                ", userIdRecv=" + userIdRecv +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ChatRecord that = (ChatRecord) o;

        if (messageId != null ? !messageId.equals(that.messageId) : that.messageId != null) return false;
        if (messagepost != null ? !messagepost.equals(that.messagepost) : that.messagepost != null) return false;
        if (sendtime != null ? !sendtime.equals(that.sendtime) : that.sendtime != null) return false;
        if (userIdSend != null ? !userIdSend.equals(that.userIdSend) : that.userIdSend != null) return false;
        return userIdRecv != null ? userIdRecv.equals(that.userIdRecv) : that.userIdRecv == null;
    }

    @Override
    public int hashCode() {
        int result = messageId != null ? messageId.hashCode() : 0;
        result = 31 * result + (messagepost != null ? messagepost.hashCode() : 0);
        result = 31 * result + (sendtime != null ? sendtime.hashCode() : 0);
        result = 31 * result + (userIdSend != null ? userIdSend.hashCode() : 0);
        result = 31 * result + (userIdRecv != null ? userIdRecv.hashCode() : 0);
        return result;
    }

    public Integer getMessageId() {
        return messageId;
    }

    public void setMessageId(Integer messageId) {
        this.messageId = messageId;
    }

    public String getMessagepost() {
        return messagepost;
    }

    public void setMessagepost(String messagepost) {
        this.messagepost = messagepost == null ? null : messagepost.trim();
    }

    public Date getSendtime() {
        return sendtime;
    }

    public void setSendtime(Date sendtime) {
        this.sendtime = sendtime;
    }

    public Integer getUserIdSend() {
        return userIdSend;
    }

    public void setUserIdSend(Integer userIdSend) {
        this.userIdSend = userIdSend;
    }

    public Integer getUserIdRecv() {
        return userIdRecv;
    }

    public void setUserIdRecv(Integer userIdRecv) {
        this.userIdRecv = userIdRecv;
    }
}