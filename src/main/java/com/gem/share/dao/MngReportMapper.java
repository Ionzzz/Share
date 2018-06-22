package com.gem.share.dao;

import com.gem.share.entity.Report;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MngReportMapper {
    List<Report> selectAll();
}
