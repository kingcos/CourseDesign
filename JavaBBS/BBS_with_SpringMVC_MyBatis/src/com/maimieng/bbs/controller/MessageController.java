package com.maimieng.bbs.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.maimieng.bbs.po.Message;
import com.maimieng.bbs.service.MessageService;

@Controller
public class MessageController {
	@Autowired
	MessageService messageService;

	@RequestMapping("/listms")
	public ModelAndView listms(HttpServletRequest request) throws Exception {
		List<Message> list = messageService.listMessages();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("messagelist", list);
		modelAndView.setViewName("Listms");

		return modelAndView;
	}
}
