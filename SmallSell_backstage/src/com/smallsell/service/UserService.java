package com.smallsell.service;

import net.sf.json.JSONObject;

public interface UserService {
	/**
	* @author ������
	* @Title: login
	* @Description: TODO(�û���¼)
	* @param @param userName
	* @param @param password
	* @param @return    �趨�ļ�
	* @return JSONObject    ��������
	* @throws
	*/ 
	public JSONObject login(String userName,String password);
}
