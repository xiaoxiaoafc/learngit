package com.smallsell.service;

import java.util.List;

import com.smallsell.entity.Menu;
import com.smallsell.entity.Role;
import com.smallsell.entity.UserRole;

public interface UserRoleService {
	/**
	* @author 陈树彪
	* @Title: getUserRoleByUserId
	* @Description: TODO(根据用户id获取用户权限)
	* @param @param userId 用户id
	* @param @return    设定文件
	* @return List<UserRole>    返回类型
	* @throws
	*/ 
	List<UserRole> getUserRoleByUserId(Integer userId);  
}
