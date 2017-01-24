package com.smallsell.service.impl;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.smallsell.constant.ResultCodeConstant;
import com.smallsell.controller.BaseController;
import com.smallsell.entity.User;
import com.smallsell.service.UserService;

import net.sf.json.JSONObject;

@Service
public class UserServiceImpl implements UserService{
	private final Logger logger = Logger.getLogger(BaseController.class);  
	@Override
	public JSONObject login(String userName,String password){
		logger.info("��¼  �û���:" + userName +"\n ����:"+ password);
		String message = "";
		Boolean isCheck = true;
		if(!StringUtils.hasText(userName)){
			message = "�û���������д";
			isCheck = false;
		}
		if(!StringUtils.hasText(password) && isCheck){
			message = "���������д";
			isCheck = false;
		}
		if(isCheck){
			User user = null;
			if(user == null){
				isCheck = false;
				message = "�����ڸ��û�";
			}
			if(isCheck){
				
			}
		}
		
		JSONObject result = new JSONObject();
		if(isCheck){
			result.put("code", ResultCodeConstant.SUCCESS);
		}else{
			result.put("code", ResultCodeConstant.error);
		}
		result.put("message", message);
		logger.info("login " + result);
		return result;
	}
}
