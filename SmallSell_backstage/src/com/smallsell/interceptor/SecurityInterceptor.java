package com.smallsell.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.smallsell.constant.MainConstant;
import com.smallsell.entity.Menu;
import com.smallsell.entity.User;
import com.smallsell.service.MenuService;

public class SecurityInterceptor implements HandlerInterceptor{

	 private final Logger log = Logger.getLogger(SecurityInterceptor.class);
	 @Autowired
	 private MenuService MenuService;
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		//如果是不需拦截直接通过
		String requestUrl = request.getRequestURI();
		log.debug("SecurityInterceptor 请求的url是" + requestUrl);
		//判断用户是否登录
		Object userObj = request.getSession().getAttribute(MainConstant.LOGIN_KEY);
		if(userObj == null){
			response.sendRedirect(request.getContextPath() + "/user/loginIn");
			log.info("SecurityInterceptor 	去登录页面");
			return false;
		}
		//如果是去首页那么直接去
		if(requestUrl.endsWith("index/main")  || requestUrl.endsWith("/") ){
			log.debug("已经登录 想访问首页直接去首页");
			return true;
		}
		//校验用户是否具备权限
		List<Menu> menus =(List<Menu>) request.getSession().getAttribute(MainConstant.USER_MENU_KEY);
		Boolean isMenu = hasMeun(requestUrl, menus);
		if(isMenu){
			log.debug("具备权限去可以访问" + requestUrl);
			//获取可以显示的标题的头
			List<Menu> titleMeuns = MenuService.getMemuNames(getThisUrl(requestUrl, menus));
			request.setAttribute("titleMenus", titleMeuns);
			return true;
		}
		log.debug("SecurityInterceptor---执行到最后返回false");
		return false;
	}
	
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception arg3)
			throws Exception {
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		
	}

	public Boolean hasMeun(String url, List<Menu> menus){
		for(Menu menu : menus){
			System.out.println(menu.getUrl());
			if(url.endsWith(menu.getUrl())){
				return true;
			}
		}
		return false; 
	}
	
	public String getThisUrl(String url, List<Menu> menus){
		for(Menu menu : menus){
			System.out.println(menu.getUrl());
			if(url.endsWith(menu.getUrl())){
				return menu.getUrl();
			}
		}
		return  null; 
	}
	public static void main(String[] args) {
		System.out.println("/SmallSell_backstage/index/main");
	}

}
