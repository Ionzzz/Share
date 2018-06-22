package com.gem.share.service.Impl;

import com.gem.share.dao.*;
import com.gem.share.entity.*;
import com.gem.share.service.ManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class ManagerServiceImpl implements ManagerService{
    @Autowired
    ManagerInfoMapper managerInfoMapper;
    @Autowired
    MngBlogMapper mngBlogMapper;
    @Autowired
    MngCommentMapper mngCommentMapper;
    @Autowired
    MngUserInfoMapper mngUserInfoMapper;
    @Autowired
    MngLabelInfoMapper mngLabelInfoMapper;
    @Autowired
    MngOpeMapper mngOpeMapper;
    @Autowired
    MngPicsMapper mngPicsMapper;
    @Autowired
    MngReportMapper mngReportMapper;

//Account
    @Override
    public ManagerInfo login(String name, String pass) {
        List<ManagerInfo> managerInfos = managerInfoMapper.selectAllManagerInfos();
        for(ManagerInfo m:managerInfos){
            if(name.equals(m.getManageraccount()) && pass.equals(m.getManagerpwd())){
                return m;
            }
        }
        return null;
    }

    @Override
    public List<ManagerInfo> showManagerInfos() {
        return managerInfoMapper.selectAllManagerInfos();
    }

    @Override
    public ManagerInfo selectManagerById(int id) {
        return managerInfoMapper.selectManagerInfoById(id);
    }

    @Override
    public void addManagerInfo(ManagerInfo ManagerInfo) {
        managerInfoMapper.insertManagerInfo(ManagerInfo);
    }

    @Override
    public void updateManagerInfo(ManagerInfo ManagerInfo) {
        managerInfoMapper.updateManagerInfo(ManagerInfo);
    }

    @Override
    public void deleteManagerInfo(int id) {
        managerInfoMapper.deleteManagerInfo(id);
    }

//Blog
    @Override
    public List<Map<String,Object>> selectBlogInfos() {
    List<BlogContent> blogContents = mngBlogMapper.showBlogInfos();
    List<Map<String,Object>> mapList = new ArrayList<>();
    for(BlogContent b:blogContents){
        Map map = new HashMap<String,Object>();
        map.put("blogId",b.getBlogId());
        map.put("blogContent",b.getBlogcontent());
        map.put("blogCreateTime",b.getBlogcreatetime());
        map.put("blogBrowseCount",mngBlogMapper.selectBrowseCountByBlogId(b.getBlogId()));

        mapList.add(map);
    }
    return mapList;
}

    @Override
    public void deleteBlog(int blogid) {
        List<Integer> comments = mngBlogMapper.selectCommentByBlogId(blogid);
        for(Integer cmtid:comments){
            String cmt="c_"+cmtid;
            deleteComment(cmt);
        }
        mngBlogMapper.deleteBlog(blogid);
    }

//Comment
    @Override
    public List<Map<String, Object>> showCommentInfos() {
        List<BlogComment> blogComments = mngCommentMapper.selectCommentInfos();
        List<ReplyComment> replyComments = mngCommentMapper.selectReplyInfos();

        List<Map<String, Object>> mapList = new ArrayList<>();
        for (BlogComment c : blogComments) {
            Map<String, Object> map = new HashMap<>();
            UserInfo user = mngUserInfoMapper.selectUserById(c.getCommentuserId());
            map.put("content", c.getCommentcontent());
            map.put("commenter", user.getUsername());
            map.put("commentTime", c.getCommenttime());
            map.put("commentid", "c" + "_" + c.getCommentId());//加一个前缀c，表示一级评论，删除时会用到

            mapList.add(map);
        }
        for (ReplyComment r : replyComments) {
            Map<String, Object> map = new HashMap<>();
            UserInfo user = mngUserInfoMapper.selectUserById(r.getUserId());
            map.put("content", r.getReplycommentcontent());
            map.put("commenter", user.getUsername());
            map.put("commentTime", r.getReplycommenttime());
            map.put("commentid", "r" + "_" + r.getReplycommentId());//加一个前缀r，表示评论回复，删除时会用到

            mapList.add(map);
        }
        return mapList;
    }

    @Override
    public void deleteComment(String id) {
        String[] idInfo = id.split("_");
        //字符串id前缀c表示comment，r表示reply
        // 后缀表示相应表中的主键id
        //详见上边showCommentInfos方法的注释
        switch (idInfo[0]) {
            case "c":     //先删回复，再删评论
                List<Integer> replyList=mngCommentMapper.selectReply(Integer.parseInt(idInfo[1]));
                for(Integer i:replyList){
                    deleteReply(i);
                }
                mngCommentMapper.deleteCommentZan(Integer.parseInt(idInfo[1]));
                mngCommentMapper.deleteComment(Integer.parseInt(idInfo[1]));
                break;
            case "r":
                deleteReply(Integer.parseInt(idInfo[1]));
                break;
        }
    }

    protected void deleteReply(int reply_id){
        List<Integer> list=new ArrayList<>();
        list.add(reply_id);
        boolean notNull=true;//判断是否不再存在子回复
        while(notNull){
            List<Integer> subList=new ArrayList<>();
            for(Integer id:list){     //遍历次级的回复
                System.out.println(id);
                for (Integer subid:mngCommentMapper.selectSubReply(id)) {
                    subList.add(subid);
                }
                mngCommentMapper.deleteReply(id);  //删除当前级的回复
            }
            list=subList;  //用下一级回复迭代
            notNull=list.size()!=0?true:false;
        }
    }

//Label
    @Override
    public List<LabelInfo> showLabelInfos() {
        return mngLabelInfoMapper.selectAllLabelInfos();
    }

    @Override
    public LabelInfo selectLabelById(int id) {
        return mngLabelInfoMapper.selectLabelById(id);
    }

    @Override
    public void addLableInfo(LabelInfo labelInfo) {
        mngLabelInfoMapper.insertLableInfo(labelInfo);
    }

    @Override
    public void updateLabelInfo(LabelInfo labelInfo) {
        mngLabelInfoMapper.updateLabelInfo(labelInfo);
    }

    @Override
    public void deleteLabelInfo(int id) {
        mngLabelInfoMapper.deleteLabelInfo(id);
    }

//Ope
    @Override
    public List<Map<String, Object>> showOpeRecords() {
        List<Map<String, Object>> mapList = new ArrayList<>();
        List<ManagerOpeContent> opeContents = mngOpeMapper.selectOpeContents();
        for(ManagerOpeContent o:opeContents){
            Map<String, Object> map = new HashMap<>();
            ManagerInfo mng = managerInfoMapper.selectManagerInfoById(o.getManagerId());
            map.put("operator",mng.getManageraccount());
            map.put("opeContent",o.getManageroperate());
            map.put("opeTime",mngOpeMapper.selectOpeTime(o.getManageroperateId()).getManageroperatetime());

            mapList.add(map);
        }
        return mapList;
    }

    @Override
    public void insertOpeRecord(ManagerInfo manager,String message) {
        mngOpeMapper.insertOpeRecord(manager.getManagerId(),message);
    }

//Pic
    @Override
    public List<Map<String,Object>> showPics() {
        List<Map<String, Object>> mapList = new ArrayList<>();
        List<BlogPics> pics = mngPicsMapper.showPics();
        for(BlogPics pic:pics){
            Map<String, Object> map = new HashMap<>();
            BlogContent blog = mngBlogMapper.selectBlogById(pic.getBlogId());
            map.put("blog",blog.getBlogcontent());
            map.put("pic",pic.getPic());
            map.put("createTime",blog.getBlogcreatetime());
            map.put("picid",pic.getBlogpicsId());

            mapList.add(map);
        }
        return mapList;
    }

    @Override
    public void deletePic(int id) {
        resetBlogPic(id);
        mngPicsMapper.deletePic(id);
    }

    //重设对应博客的blogpic外键关联
    private void resetBlogPic(int picid){
        int blogid = mngPicsMapper.selectBlogByPic(picid);
        List<Integer> pics = mngPicsMapper.selectPicsByBlogId(blogid);
        Iterator<Integer> ite=pics.iterator();
        while (ite.hasNext()) {
            if (ite.next() == picid) {
                ite.remove();   //从博客所有图片中剔除欲删除的那张
            }
        }
        if(pics.isEmpty()){
            mngPicsMapper.updatePicToNull(blogid);
        }else{
            int newPic= Collections.max(pics);  //选择新图片列表中id最大的那张
            mngPicsMapper.updatePic(blogid,newPic);
        }
    }

//Report
    @Override
    public List<Map<String, Object>> showReportList() {
        List<Map<String, Object>> mapList = new ArrayList<>();
        List<Report> reports = mngReportMapper.selectAll();
        for(Report r:reports){
            Map<String, Object> map = new HashMap<>();
            map.put("reportedUser",mngUserInfoMapper.selectUserById(r.getUserId()).getUsername());
            map.put("reportContent",r.getReportreason());

            mapList.add(map);
        }
        return mapList;
    }

//User
    @Override
    public List<UserInfo> showUserInfos() {
        return mngUserInfoMapper.showUserInfos();
    }

    @Override
    public void changeUserStatus(UserInfo userInfo) {
        mngUserInfoMapper.changeUserStatus(userInfo);
    }

    @Override
    public void changeUserEnergy(UserInfo userInfo) {
        mngUserInfoMapper.changeUserEnergy(userInfo);
    }

    @Override
    public UserInfo selectById(int id) {
        return mngUserInfoMapper.selectUserById(id);
    }

}
