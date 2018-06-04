package com.gem.share.dao;

import com.gem.share.entity.BlogZan;
import com.gem.share.entity.shuDong;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ShuDongMapper {

    //    获得所有树洞内容
    public List<shuDong> selectAllShuDongContent();

    //    根据用户id查询用户是否对该博客有点赞记录
    public List<BlogZan> selectZanRecordByUserId(@Param(value = "blogId") int blog_id, @Param(value = "userId") int user_id);

    //    删除用户点赞记录
    public boolean deleteZanRecordByZanId(int zan_id);

    //    得到该树洞的点赞数
    public int selectCountZan(int blog_id);

    //    增加用户点赞记录
    public boolean addZanRecord(BlogZan blogZan);

}
