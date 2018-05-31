package com.gem.share.service;

import com.gem.share.entity.ManagerInfo;

public interface ManagerService {

    public ManagerInfo selectByManagerInfoId(int manager_id);

    public boolean deleteByManagerInfoId(int manager_id);

    public boolean insertManagerInfo(ManagerInfo managerInfo);

    public boolean updateByManagerInfoId(int manager_id);



}
