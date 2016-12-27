package com.maimieng.Action;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.maimieng.Bean.Reply;
import com.maimieng.Dao.ReplyDao;
import com.opensymphony.xwork2.ActionSupport;

public class ReplyMsAction extends ActionSupport implements ServletRequestAware {
	
	private static final long serialVersionUID = 1L;
	private HttpServletRequest request;
	private Reply reply;
	
	public Reply getReply() {
		return reply;
	}

	public void setReply(Reply reply) {
		this.reply = reply;
	}

	@Override
	public String execute() throws Exception {
		String result = "Success";
		
		int reMsID = (Integer) request.getSession().getAttribute("MsID");
		String reUserName = (String) request.getSession().getAttribute("userName");
		String reContent = reply.getReContent();
		
		Date date = new Date();
		String formatDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date);
		Timestamp reDate = Timestamp.valueOf(formatDate);
		
		if (reContent == null || reContent.equals("")) {
			request.setAttribute("ErrorMessage", "内容不得为空！");
			result = "Failure";
		} else {
			ReplyDao replyDao = new ReplyDao();
			replyDao.saveReply(reMsID, reUserName, reDate, reContent);
		}
		return result;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
	
}