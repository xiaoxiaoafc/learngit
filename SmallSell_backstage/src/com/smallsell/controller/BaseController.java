package com.smallsell.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.smallsell.interceptor.SecurityInterceptor;
import com.smallsell.service.MenuService;
import com.smallsell.service.UserService;

import net.sf.json.JSONObject;

@Controller
public class BaseController{
	 private final Logger logger = Logger.getLogger(BaseController.class);  
	 
	@Autowired protected UserService userService; 
	@Autowired protected MenuService menuService; 
	
	protected void responseOutWithJson(HttpServletResponse response,  
	        Object responseObject) {  
	    //将实体对象转换为JSON Object转换  
	    JSONObject responseJSONObject = JSONObject.fromObject(responseObject);  
	    response.setCharacterEncoding("UTF-8");  
	    response.setContentType("application/json; charset=utf-8");  
	    PrintWriter out = null;  
	    try {  
	        out = response.getWriter();  
	        out.append(responseJSONObject.toString());  
	        logger.debug("BaseController 返回是json 串");  
	        logger.debug(responseJSONObject.toString());  
	    } catch (IOException e) {  
	    	 logger.error("BaseController 返回是json串错误");  
	        e.printStackTrace();  
	    } finally {  
	        if (out != null) {  
	            out.close();  
	        }  
	    }  
	}  
}
