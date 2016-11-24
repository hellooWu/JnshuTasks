package mapper;

import pojo.StuInfo;

public interface StuInfoMapper {
    int deleteByPrimaryKey(Long id);

    int insert(StuInfo record);

    int insertSelective(StuInfo record);

    StuInfo selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(StuInfo record);

    int updateByPrimaryKeyWithBLOBs(StuInfo record);

    int updateByPrimaryKey(StuInfo record);
}