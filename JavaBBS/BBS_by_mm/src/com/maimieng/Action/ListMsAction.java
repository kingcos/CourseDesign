package com.maimieng.Action;

import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.maimieng.Dao.MessageDao;
import com.maimieng.Dao.UserDao;

public class ListMsAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// 存储执行结果
		String result = "Success";
		MessageDao messageDao = new MessageDao();
		UserDao userDao = new UserDao();
		request.getSession().setAttribute("userCount", userDao.countUsers());
		String keyword = request.getParameter("keyword");
//		List<MessageForm> list = messageDao.listMessages(keyword);
		ResultSet list = messageDao.listMessages(keyword);
		
		request.getSession().setAttribute("msList", list);
		return mapping.findForward(result);
	}
}
