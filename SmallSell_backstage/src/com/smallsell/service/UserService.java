package com.smallsell.service;

import net.sf.json.JSONObject;

public interface UserService {
	/**
	* @author 陈树彪
	* @Title: login
	* @Description: TODO(用户登录)
	* @param @param userName
	* @param @param password
	* @param @return    设定文件
	* @return JSONObject    返回类型
	* @throws
	*/ 
	public JSONObject login(String userName,String password);
}
