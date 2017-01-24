package com.smallsell.service.impl;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.smallsell.constant.MainConstant;
import com.smallsell.constant.ResultCodeConstant;
import com.smallsell.controller.BaseController;
import com.smallsell.entity.User;
import com.smallsell.service.UserService;

import net.sf.json.JSONObject;

@Service
public class UserServiceImpl extends BaseService implements UserService {
	private final Logger logger = Logger.getLogger(BaseController.class);  
	@Override
	public JSONObject login(String userName,String password,HttpSession session){
		logger.debug("登录  用户名:" + userName +"\n 密码:"+ password);
		String message = "";
		Boolean isCheck = true;
		if(!StringUtils.hasText(userName)){
			message = "用户名必须填写";
			isCheck = false;
		}
		if(!StringUtils.hasText(password) && isCheck){
			message = "密码必须填写";
			isCheck = false;
		}
		if(isCheck){
			User user = null;//userMapper.getUser(userName, password);
			if(user == null){
				isCheck = false;
				message = "不存在该用户或密码错误";
			}
			if(isCheck){
				
				session.setAttribute(MainConstant.LOGIN_KEY, user);
				logger.debug("login 登录成功");
			}
		}
		
		JSONObject result = new JSONObject();
		if(isCheck){
			result.put("code", ResultCodeConstant.SUCCESS);
		}else{
			result.put("code", ResultCodeConstant.error);
		}
		result.put("message", message);
		logger.debug("login result" + result);
		return result;
	}
}
