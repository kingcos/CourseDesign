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
import com.maimieng.bbs.po.Reply;
import com.maimieng.bbs.service.MessageService;
import com.maimieng.bbs.service.ReplyService;

@Controller
public class MessageController {
	@Autowired
	private MessageService messageService;
	@Autowired
	private ReplyService replyService;

	@RequestMapping("/listms")
	public ModelAndView listms() throws Exception {
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
	public ModelAndView getms(Integer id) throws Exception {
		Message message = messageService.getMessage(id);
		List<Reply> list = replyService.listReply(id);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("message", message);
		modelAndView.addObject("replylist", list);
//		modelAndView.setViewName("MessageDetail");
		modelAndView.setViewName("single");
		
		return modelAndView;
	}
	
	@RequestMapping("/getabout")
	public ModelAndView getabout() throws Exception {
		Integer id = 1;
		List<Reply> list = replyService.listReply(id);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("replylist", list);
//		modelAndView.setViewName("MessageDetail");
		modelAndView.setViewName("single");
		
		return modelAndView;
	}
}
