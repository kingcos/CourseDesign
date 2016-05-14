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

public class ListMsAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// 存储执行结果
		String result = "Success";
		MessageDao messageDao = new MessageDao();
		List<MessageForm> list = messageDao.listMessages();
		request.getSession().setAttribute("msList", list);
		return mapping.findForward(result);
	}
}
