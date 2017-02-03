package com.smallsell.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.aspectj.weaver.reflect.ReflectionBasedResolvedMemberImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.smallsell.constant.MainConstant;
import com.smallsell.entity.Menu;
import com.smallsell.entity.User;
import com.smallsell.vo.ShowMenuVo;
@Controller
@RequestMapping("/index")
public class IndexController extends BaseController{
	
	/**
	* @author ������
	* @Title: index
	* @Description: TODO(ȥ��ҳ)
	* @param @return    �趨�ļ�
	* @return String    ��������
	* @throws
	*/ 
	@RequestMapping("/main")
	public String index(HttpSession session,Map<String, Object> resultMap){
		User user = (User) session.getAttribute(MainConstant.LOGIN_KEY);
	    List<ShowMenuVo> showMenuVos = menuService.getUserShowMenus(user.getId());
	    resultMap.put("showMenuVos", showMenuVos);
		return "index";
	}
	
	

}
