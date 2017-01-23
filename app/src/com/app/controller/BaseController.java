package com.app.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;

@Controller
public class BaseController {
	public static final  Logger logger = Logger.getLogger(BaseController.class);
	//输出文本参数	ww
public  void responseStr(HttpServletResponse response,String str){
		response.setHeader("Content-type", "text/html;charset=UTF-8"); 
		response.setCharacterEncoding("utf-8");
		try {
			response.getWriter().write(str);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}

