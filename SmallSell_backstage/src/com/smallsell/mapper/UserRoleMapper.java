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
	* @author ������
	* @Title: getUserRoleByUserId
	* @Description: TODO(�����û�id��ȡȨ��)
	* @param @param userId
	* @param @return    �趨�ļ�
	* @return List<UserRole>    ��������
	* @throws
	*/ 
	List<UserRole> getUserRoleByUserId(Integer userId);
}