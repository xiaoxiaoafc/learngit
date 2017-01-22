package com.app.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.app.entity.User;
import com.app.mapper.UserMapper;
import com.app.service.UserService;
@Service
public class UserServiceImpl implements UserService {
	public List<User> findUsers(){
		return userMapper.findUsers();
	}
	
	@Resource
	private UserMapper userMapper;
}
