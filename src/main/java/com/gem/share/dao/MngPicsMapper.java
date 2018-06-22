package com.gem.share.dao;

import com.gem.share.entity.BlogPics;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MngPicsMapper {
    List<BlogPics> showPics();
    //获取博客Id
    int selectBlogByPic(int picid);
    //选择某博客下所有图片
    List<Integer> selectPicsByBlogId(int blogId);
    //更新博客图片外键
    void updatePic(@Param("blogid") int blogid, @Param("picid") int blogPicsId);
    //无图片时更新博客图片外键为null
    void updatePicToNull(int blogid);
    //删除图片
    void deletePic(int id);

}
