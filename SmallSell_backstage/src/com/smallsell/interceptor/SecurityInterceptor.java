package com.smallsell.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.smallsell.constant.MainConstant;

public class SecurityInterceptor implements HandlerInterceptor{

	 private final Logger log = Logger.getLogger(SecurityInterceptor.class);  
	//���������ص�url
	private List<String> excludedUrls;
	public void setExcludedUrls(List<String> excludedUrls) {
		this.excludedUrls = excludedUrls;
	}
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		//����ǲ�������ֱ��ͨ��
		String requestUrl = request.getRequestURI();
		for(String excludedurl : excludedUrls){
			if(excludedurl.endsWith(requestUrl)){
				log.info("SecurityInterceptor url�ǲ�������Դֱ��ͨ��");
				return true;
			}
		}
		//�ж��û��Ƿ��¼
		Object user = request.getSession().getAttribute(MainConstant.LOGIN_KEY);
		if(user == null){
			request.getRequestDispatcher("/WEB-INF/view/login.jsp").forward(request, response);  
			log.info("SecurityInterceptor 	ȥ��¼ҳ��");
			return false;
		}
		
		//У���û��Ƿ�߱�Ȩ��
		
		log.info("SecurityInterceptor---ִ�е���󷵻�false");
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


}
