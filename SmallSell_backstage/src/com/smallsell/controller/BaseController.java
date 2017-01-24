package com.smallsell.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;

import com.smallsell.interceptor.SecurityInterceptor;

import net.sf.json.JSONObject;

@Controller
public class BaseController{
	 private final Logger logger = Logger.getLogger(BaseController.class);  
	protected void responseOutWithJson(HttpServletResponse response,  
	        Object responseObject) {  
	    //��ʵ�����ת��ΪJSON Objectת��  
	    JSONObject responseJSONObject = JSONObject.fromObject(responseObject);  
	    response.setCharacterEncoding("UTF-8");  
	    response.setContentType("application/json; charset=utf-8");  
	    PrintWriter out = null;  
	    try {  
	        out = response.getWriter();  
	        out.append(responseJSONObject.toString());  
	        logger.debug("BaseController ������json ��");  
	        logger.debug(responseJSONObject.toString());  
	    } catch (IOException e) {  
	    	 logger.error("BaseController ������json������");  
	        e.printStackTrace();  
	    } finally {  
	        if (out != null) {  
	            out.close();  
	        }  
	    }  
	}  
}
