package com.smallsell.controller;

import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import net.sf.json.JSONObject;

@Controller
@RequestMapping("/login")
public class LoginController extends BaseController{
	 private final Logger logger = Logger.getLogger(BaseController.class);  
	public void login(HttpServletResponse response,String userName,String password){
		JSONObject result = 
		responseOutWithJson();
	}
}
