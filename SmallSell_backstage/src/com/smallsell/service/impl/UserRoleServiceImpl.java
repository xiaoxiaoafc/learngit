package com.smallsell.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.smallsell.entity.UserRole;
import com.smallsell.service.UserRoleService;
@Service
public class UserRoleServiceImpl extends BaseService implements UserRoleService{

	@Override
	public List<UserRole> getUserRoleByUserId(Integer userId) {
		List<UserRole> userRoles = userRoleMapper.getUserRoleByUserId(userId);
		return userRoles;
	}

}
