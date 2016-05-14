package com.maimieng.Action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.maimieng.Bean.MessageForm;
import com.maimieng.Dao.MessageDao;

public class GetMessageAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		MessageForm messageForm = (MessageForm) form;

		int msID = Integer.parseInt(request.getParameter("msID"));
		MessageDao messageDao = new MessageDao();
		messageForm = messageDao.getMessage(msID);
		request.getSession().setAttribute("MessageForm", messageForm);
		request.getSession().setAttribute("MsID", messageForm.getMsID());
		
		return mapping.findForward("Success");
	}
}
