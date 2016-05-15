package com.maimieng.bbs.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.maimieng.bbs.po.Message;
import com.maimieng.bbs.po.MessageVo;
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
	
	@RequestMapping("/createms")
	public String createms(HttpServletRequest request, MessageVo messageVo) throws Exception {
		String result = "Failure";
		Date msDate = new Date();
		String msUsername = (String) request.getSession().getAttribute("username");
		messageVo.getMessage().setMsdate(msDate);
		messageVo.getMessage().setMsusername(msUsername);
		if (messageService.saveMessage(messageVo)) {
			result = "redirect:listms.action";
		}
		return result;
	}
	
	@RequestMapping("/getms")
	public ModelAndView getms(HttpServletRequest request, Integer id) throws Exception {
		Message message = messageService.getMessage(id);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("message", message);
		modelAndView.setViewName("MessageDetail");
		
		return modelAndView;
	}
}
