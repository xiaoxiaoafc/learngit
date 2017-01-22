package com.app.controller;

import java.util.Date;
import java.util.List;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.app.constant.Constant;
import com.app.entity.User;
import com.app.service.UserService;
import com.app.util.CodeCaching;

@Controller
public class UserController extends BaseController{
	private UserService userService;
	@RequestMapping("/indexget")
	public void getUser(HttpServletResponse response){
		List<User> users = userService.findUsers();
		this.responseStr(response, JSONArray.fromObject(users).toString());
	}
	@RequestMapping("/sendMessage")
	public void sendMessage(HttpServletResponse response, String phone){
		String jsonStr = "";
		if(phone == null || phone.equals("")){
			 jsonStr = "{\"data\":\"\",\"code\":\""+Constant.FAILURE_CODE+"\",\"电话号码不能为空！\"}";
			 this.responseStr(response, jsonStr);
			 return ; 
		}
		Pattern p = Pattern.compile("^((13[0-9])|(15[^4,\\D])|(18[0,5-9]))\\d{8}$"); 
		Matcher m = p.matcher(phone);  
		if(!m.matches()){
			 jsonStr = "{\"data\":\"\",\"code\":\""+Constant.FAILURE_CODE+"\",\"请填写正确的手机号码！\"}";
			 this.responseStr(response, jsonStr);
			 return ; 
		}
		String code = "695613";
		String cookie = UUID.randomUUID().toString();
		CodeCaching.getCodeCachingMapString().put(cookie, new String []{code,System.currentTimeMillis()+""});
		System.out.println(CodeCaching.getCodeCachingMapString().size());
		jsonStr = "{\"data\":\""+code+"\",\"code\":\""+Constant.SUCCESS_CODE+"\",\"消息发送成功！\",\"cookie\":\""+cookie+"\"}";
		this.responseStr(response, jsonStr);
	}
	@Resource
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	public static void main(String[] args) {
		String str1 = new String("abc");
		String str2 = "abc";
		System.out.println(str1 == (str2)); //你们说一下输出什么
	}
}
