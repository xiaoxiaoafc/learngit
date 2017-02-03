package com.smallsell.controller;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import net.sf.json.JSONObject;

@Controller
@RequestMapping("/user")
public class LoginController extends BaseController{
	 private final Logger logger = Logger.getLogger(BaseController.class); 
	 @RequestMapping("/login")
	public void login(HttpServletResponse response,String userName,String password, HttpSession session){
		JSONObject result = userService.login(userName, password, session);
		responseOutWithJson(response, result);
	}
	 @RequestMapping("/loginIn")
		public String loginIn(){
			return "login";
	}
}
