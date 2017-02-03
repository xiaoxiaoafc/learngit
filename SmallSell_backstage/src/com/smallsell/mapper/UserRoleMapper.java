package com.smallsell.mapper;

import java.util.List;

import com.smallsell.entity.UserRole;

public interface UserRoleMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(UserRole record);

    int insertSelective(UserRole record);

    UserRole selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(UserRole record);

    int updateByPrimaryKey(UserRole record);

	/**
	* @author 陈树彪
	* @Title: getUserRoleByUserId
	* @Description: TODO(根据用户id获取权限)
	* @param @param userId
	* @param @return    设定文件
	* @return List<UserRole>    返回类型
	* @throws
	*/ 
	List<UserRole> getUserRoleByUserId(Integer userId);
}