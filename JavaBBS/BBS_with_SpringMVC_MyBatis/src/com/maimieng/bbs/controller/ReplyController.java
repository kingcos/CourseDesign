package com.maimieng.bbs.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.maimieng.bbs.po.ReplyVo;
import com.maimieng.bbs.service.ReplyService;

@Controller
public class ReplyController {
	@Autowired
	private ReplyService replyService;
	
	@RequestMapping("/createre")
	public String createre(HttpServletRequest request, Integer id, ReplyVo replyVo) throws Exception {
		String result = "Failure";
		Date redate = new Date();
		replyVo.getReply().setReusername((String) request.getSession().getAttribute("username"));
		replyVo.getReply().setRedate(redate);
		replyVo.getReply().setRemsid(id);
		if (replyService.saveReply(replyVo)) {
			result = "redirect:getms.action?id=" + id;
		}
		return result;
	}
}
