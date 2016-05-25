package com.maimieng.Action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.maimieng.Bean.MessageForm;
import com.maimieng.Dao.MessageDao;
import com.maimieng.Dao.UserDao;

public class ListMsAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
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
		
		List<MessageForm> msList = messageDao.listMessages(keyword, startIndex, 5);
		
		request.getSession().setAttribute("msList", msList);
		return mapping.findForward(result);
	}
}
