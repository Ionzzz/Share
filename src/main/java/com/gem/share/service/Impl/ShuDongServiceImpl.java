package com.gem.share.service.Impl;

import com.gem.share.dao.ShuDongMapper;
import com.gem.share.entity.BlogZan;
import com.gem.share.entity.shuDong;
import com.gem.share.service.ShuDongService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ShuDongServiceImpl implements ShuDongService {

    @Autowired
    private ShuDongMapper shuDongMapper;

    @Override
    public List<shuDong> selectAllShuDongContent() {
//        System.out.println("shudongserviceImpl========="+shuDongMapper.selectAllShuDongContent());
        return shuDongMapper.selectAllShuDongContent();
    }

    @Override
    public List<BlogZan> selectZanRecordByUserId(int blog_id,int user_id) {
        return shuDongMapper.selectZanRecordByUserId(blog_id,user_id);
    }

    @Override
    public boolean deleteZanRecordByZanId(int zan_id) {
        return shuDongMapper.deleteZanRecordByZanId(zan_id);
    }

    @Override
    public int selectCountZan(int blog_id) {
        return shuDongMapper.selectCountZan(blog_id);
    }

    @Override
    public boolean addZanRecord(BlogZan blogZan) {
        return shuDongMapper.addZanRecord(blogZan);
    }

}

