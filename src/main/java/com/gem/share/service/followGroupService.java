package com.gem.share.service;

import java.util.List;

public interface followGroupService {

//    根据用户id得到关注分组名
    public List<String> selectGroupNameByUserId(int user_id);

}
