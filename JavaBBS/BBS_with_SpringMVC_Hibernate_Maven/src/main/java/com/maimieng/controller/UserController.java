package com.maimieng.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.maimieng.entity.User;
import com.maimieng.entity.UserManager;

@Controller
@RequestMapping("/jsp")
public class UserController {
	
	@Resource(name="userManager")
	private UserManager userManager;
	
	@RequestMapping("/login")
	public String login(User user) {
		System.out.println("------");
		userManager.login(user);
		return "Success";
	}
	
	@RequestMapping("/register")
	public String register(User user) {
		System.out.println("------");
		userManager.login(user);
		return "Success";
	}
}
