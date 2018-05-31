package com.gem.share.service;

import com.gem.share.entity.Notice;

public interface UserNoticeService {
    //    通知
    public Notice selectAllNotice(int user_id);
}
