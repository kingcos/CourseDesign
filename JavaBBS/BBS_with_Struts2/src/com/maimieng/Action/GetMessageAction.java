package com.maimieng.Action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.maimieng.Bean.Message;
import com.maimieng.Bean.Reply;
import com.maimieng.Dao.MessageDao;
import com.maimieng.Dao.ReplyDao;
import com.opensymphony.xwork2.ActionSupport;

public class GetMessageAction extends ActionSupport implements ServletRequestAware {
	
	private static final long serialVersionUID = 1L;
	private HttpServletRequest request;
	private Message message;
	
	@Override
	public String execute() throws Exception {
		String result = "Failure";
		
		int msID;
		String temp = request.getParameter("msID");
		
		if ( temp == null || temp.equals("") ) {
			msID = (Integer) request.getSession().getAttribute("MsID");
		} else {
			msID = Integer.parseInt(request.getParameter("msID"));
			request.getSession().setAttribute("MsID", msID);
		}
		
		MessageDao messageDao = new MessageDao();
		
		
		ReplyDao replyDao = new ReplyDao();
		
		message = messageDao.getMessage(msID);
		List<Reply> list = replyDao.listReply(msID);
		
		if (message != null) {
			result = "Success";
			request.getSession().setAttribute("reList", list);
			request.getSession().setAttribute("MessageForm", message);
			request.getSession().setAttribute("MsID", message.getMsID());
		}
		return result;
	}

	public Message getMessage() {
		return message;
	}

	public void setMessage(Message message) {
		this.message = message;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
	
}
