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
	* @author 陈树彪
	* @Title: index
	* @Description: TODO(去首页)
	* @param @return    设定文件
	* @return String    返回类型
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
