package com.maimieng.Action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.maimieng.Bean.Message;
import com.maimieng.Dao.MessageDao;
import com.maimieng.Dao.UserDao;
import com.opensymphony.xwork2.ActionSupport;

public class ListMsAction extends ActionSupport implements ServletRequestAware {
	private static final long serialVersionUID = 1L;
	private HttpServletRequest request;
	
	@Override
	public String execute() throws Exception {
		String result = "Success";
		
		MessageDao messageDao = new MessageDao();
		UserDao userDao = new UserDao();
		
		String keyword = request.getParameter("keyword");
		String currentPageStr = request.getParameter("pageNum");
		
		int currentPage;
		
		if (currentPageStr == null || currentPageStr.equals("")) {
			currentPage = 1;
		} else {
			currentPage = Integer.parseInt(currentPageStr);
		}
		
		request.getSession().setAttribute("userCount", userDao.countUsers());
		
		int messageCount = messageDao.countMessages(keyword);
		int startIndex = (currentPage - 1) * 5;
		
		request.getSession().setAttribute("messageCount", messageCount);
		
		List<Message> msList = messageDao.listMessages(keyword, startIndex, 5);
		
		request.getSession().setAttribute("msList", msList);
		return result;
	}
	
	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
}
