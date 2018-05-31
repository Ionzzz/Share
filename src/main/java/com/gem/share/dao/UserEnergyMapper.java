package com.gem.share.dao;

public interface UserEnergyMapper {

    //    根据用户id给用户添加能量
    public boolean addEnergyByUserId(int user_id, int energy);

    //    根据用户id给用户减少能量(被举报减能量)
    public boolean subtractEnergyByUserId(int user_id, int energy);

    //    查询用户能量
    public String selectUserEnergy(int user_id);

    //    查询能量等级的最低能量
    public int selectMinEnergyOfGrade(String energy);

    //    查询能量等级的最高能量
    public int selectMaxEnergyOfGrade(String energy);

}
