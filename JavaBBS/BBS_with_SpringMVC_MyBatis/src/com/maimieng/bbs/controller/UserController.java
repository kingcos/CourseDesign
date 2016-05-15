package com.maimieng.bbs.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.maimieng.bbs.po.UserVo;
import com.maimieng.bbs.service.UserService;

@Controller
public class UserController {
	@Autowired
	UserService userService;

	@RequestMapping("/login")
	public String login(HttpServletRequest request, UserVo userVo) throws Exception {
		String flag = "Failure";
		String code = request.getParameter("rand");
		String rand = (String) request.getSession().getAttribute("rand");
		if (rand.equals(code)) {
			if (userService.verifyLogin(userVo)) {
				request.getSession().setAttribute("username", userVo.getUser().getUsername());
				flag = "redirect:listms.action";
			}
		}
		return flag;
	}

	@RequestMapping("/register")
	public String register(HttpServletRequest request, UserVo userVo) throws Exception {
		String flag = "Failure";
		if (userService.saveUser(userVo)) {
			request.getSession().setAttribute("username", userVo.getUser().getUsername());
			flag = "Success";
		}
		return flag;
	}
}
