package com.gem.share.service;

public interface ReportService {

//    根据被举报用户id得到被举报原因
    public String selectReportReasonByUserId(int user_id);

}
