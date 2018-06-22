package com.gem.share.service;

import com.gem.share.entity.LabelInfo;
import com.gem.share.entity.ManagerInfo;
import com.gem.share.entity.UserInfo;

import java.util.List;
import java.util.Map;

public interface ManagerService {
    //Account
    ManagerInfo login(String name, String pass);
    List<ManagerInfo> showManagerInfos();
    ManagerInfo selectManagerById(int id);
    void addManagerInfo(ManagerInfo ManagerInfo);
    void updateManagerInfo(ManagerInfo ManagerInfo);
    void deleteManagerInfo(int id);
    //Blog
    List<Map<String,Object>> selectBlogInfos();
    void deleteBlog(int id);
    //Comment
    List<Map<String,Object>> showCommentInfos();
    void deleteComment(String id);
    //Label
    List<LabelInfo> showLabelInfos();
    LabelInfo selectLabelById(int id);
    void addLableInfo(LabelInfo labelInfo);
    void updateLabelInfo(LabelInfo labelInfo);
    void deleteLabelInfo(int id);
    //Ope
    List<Map<String,Object>> showOpeRecords();
    void insertOpeRecord(ManagerInfo manager, String message);
    //Pic
    List<Map<String,Object>> showPics();
    void deletePic(int id);
    //Report
    List<Map<String,Object>> showReportList();
    //User
    List<UserInfo> showUserInfos();
    void changeUserStatus(UserInfo userInfo);
    void changeUserEnergy(UserInfo userInfo);
    UserInfo selectById(int id);


}
