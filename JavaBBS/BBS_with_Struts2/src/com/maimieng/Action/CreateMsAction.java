package com.maimieng.Action;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.maimieng.Bean.Message;
import com.maimieng.Dao.MessageDao;
import com.opensymphony.xwork2.ActionSupport;

public class CreateMsAction extends ActionSupport implements ServletRequestAware {

	private static final long serialVersionUID = 1L;
	private HttpServletRequest request;
	private Message message;
	
	@Override
	public String execute() throws Exception {
		String result = "Success";
		
		String msUserName = (String) request.getSession().getAttribute("userName");
		String msTitle = message.getMsTitle();
		String msContent = message.getMsContent();
		
		Date date = new Date();
		String formatDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date);
		Timestamp msDate = Timestamp.valueOf(formatDate);
		
		if (msTitle == null || msTitle.equals("") || msContent == null || msContent.equals("")) {
			request.setAttribute("ErrorMessage", "标题和内容不得为空！");
			result = "Failure";
		} else {
			MessageDao messageDao = new MessageDao();
			messageDao.saveMessage(msUserName, msDate, msTitle, msContent);
		}
		return result;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	public Message getMessage() {
		return message;
	}

	public void setMessage(Message message) {
		this.message = message;
	}
	
}
