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
		logger.debug("UserServiceImpl  ִ�е�¼---�û�����" + userName +"--- ����:"+ password);
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
		User user = new User();
		List<Menu> menus = null;
		if(isCheck){
			user.setPassword(Md5Utils.MD5(password));
			user.setUser_name(userName);
			List<User> users = userMapper.selectUser(user);
			if(users == null || users.size() < 1){
				isCheck = false;
				message = "�����ڸ��û����������";
			}else{
				user = users.get(0);
			}
			
		}
		if(isCheck){
			List<UserRole> roles = userRoleMapper.getUserRoleByUserId(user.getId());
			if(roles == null || roles.size() < 1){
				isCheck = false;
				message = "���û�û�а�Ȩ��";
			}else{
				List<Integer> roleIds = new ArrayList<>();
				for(UserRole userRole : roles){
					roleIds.add(userRole.getRole_id());
				}
				 menus = menuService.getMenuByRoleIds(roleIds);
				
			}
			
		}
		if(isCheck){
			//�����û���session��
			session.setAttribute(MainConstant.LOGIN_KEY, user);
			session.setAttribute(MainConstant.USER_MENU_KEY, menus);
			//�����û������н�ɫ��ȡ��Ӧ���еĲ˵�
			message = "��¼�ɹ�";
			logger.debug("UserServiceImpl  login ��¼�ɹ�");
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
