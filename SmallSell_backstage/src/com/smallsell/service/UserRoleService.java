package com.smallsell.service;

import java.util.List;

import com.smallsell.entity.Menu;
import com.smallsell.entity.Role;
import com.smallsell.entity.UserRole;

public interface UserRoleService {
	/**
	* @author ������
	* @Title: getUserRoleByUserId
	* @Description: TODO(�����û�id��ȡ�û�Ȩ��)
	* @param @param userId �û�id
	* @param @return    �趨�ļ�
	* @return List<UserRole>    ��������
	* @throws
	*/ 
	List<UserRole> getUserRoleByUserId(Integer userId);  
}
