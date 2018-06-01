package com.gem.share.service.Impl;

import com.gem.share.dao.ShuDongMapper;
import com.gem.share.entity.BlogContent;
import com.gem.share.service.ShuDongService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ShuDongServiceImpl implements ShuDongService {

    @Autowired
    private ShuDongMapper shuDongMapper;

    @Override
    public List<BlogContent> selectAllShuDongContent() {
        //System.out.println("shudongserviceImpl========="+shuDongMapper.selectAllShuDongContent());
        return shuDongMapper.selectAllShuDongContent();
    }

}

