package com.smallsell.service.impl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.smallsell.constant.MainConstant;
import com.smallsell.constant.ResultCodeConstant;
import com.smallsell.controller.BaseController;
import com.smallsell.entity.Menu;
import com.smallsell.entity.User;
import com.smallsell.entity.UserRole;
import com.smallsell.service.MenuService;
import com.smallsell.service.UserService;
import com.smallsell.util.Md5Utils;

import net.sf.json.JSONObject;

@Service
public class UserServiceImpl extends BaseService implements UserService {
	private final Logger logger = Logger.getLogger(BaseController.class);  
	@Autowired
	MenuService menuService;
	@Override
	public JSONObject login(String userName,String password,HttpSession session){
		logger.debug("UserServiceImpl  执行登录---用户名：" + userName +"--- 密码:"+ password);
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
		User user = new User();
		List<Menu> menus = null;
		if(isCheck){
			user.setPassword(Md5Utils.MD5(password));
			user.setUser_name(userName);
			List<User> users = userMapper.selectUser(user);
			if(users == null || users.size() < 1){
				isCheck = false;
				message = "不存在该用户或密码错误";
			}else{
				user = users.get(0);
			}
			
		}
		if(isCheck){
			List<UserRole> roles = userRoleMapper.getUserRoleByUserId(user.getId());
			if(roles == null || roles.size() < 1){
				isCheck = false;
				message = "该用户没有绑定权限";
			}else{
				List<Integer> roleIds = new ArrayList<>();
				for(UserRole userRole : roles){
					roleIds.add(userRole.getRole_id());
				}
				 menus = menuService.getMenuByRoleIds(roleIds);
				
			}
			
		}
		if(isCheck){
			//保存用户到session中
			session.setAttribute(MainConstant.LOGIN_KEY, user);
			session.setAttribute(MainConstant.USER_MENU_KEY, menus);
			//根据用户的所有角色获取对应所有的菜单
			message = "登录成功";
			logger.debug("UserServiceImpl  login 登录成功");
		}
		
		JSONObject result = new JSONObject();
		if(isCheck){
			result.put("code", ResultCodeConstant.SUCCESS);
		}else{
			result.put("code", ResultCodeConstant.error);
		}
		result.put("message", message);
		logger.debug("UserServiceImpl   loginresult" + result);
		return result;
	}
}
