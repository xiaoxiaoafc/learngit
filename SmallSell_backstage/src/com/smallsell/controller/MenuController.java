package com.smallsell.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/menu")
public class MenuController extends BaseController{
	@RequestMapping("/list")
	public String list(){
		return "menu_list";
	}
}
