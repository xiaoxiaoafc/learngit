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
		//����ǲ�������ֱ��ͨ��
		String requestUrl = request.getRequestURI();
		log.debug("SecurityInterceptor �����url��" + requestUrl);
		//�ж��û��Ƿ��¼
		Object userObj = request.getSession().getAttribute(MainConstant.LOGIN_KEY);
		if(userObj == null){
			response.sendRedirect(request.getContextPath() + "/user/loginIn");
			log.info("SecurityInterceptor 	ȥ��¼ҳ��");
			return false;
		}
		//�����ȥ��ҳ��ôֱ��ȥ
		if(requestUrl.endsWith("index/main")  || requestUrl.endsWith("/") ){
			log.debug("�Ѿ���¼ �������ҳֱ��ȥ��ҳ");
			return true;
		}
		//У���û��Ƿ�߱�Ȩ��
		List<Menu> menus =(List<Menu>) request.getSession().getAttribute(MainConstant.USER_MENU_KEY);
		Boolean isMenu = hasMeun(requestUrl, menus);
		if(isMenu){
			log.debug("�߱�Ȩ��ȥ���Է���" + requestUrl);
			//��ȡ������ʾ�ı����ͷ
			List<Menu> titleMeuns = MenuService.getMemuNames(getThisUrl(requestUrl, menus));
			request.setAttribute("titleMenus", titleMeuns);
			return true;
		}
		log.debug("SecurityInterceptor---ִ�е���󷵻�false");
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
