package com.maimieng.Action;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.maimieng.Bean.MessageForm;
import com.maimieng.Dao.MessageDao;

public class CreateMsAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		MessageForm messageForm = (MessageForm) form;
		
		String msUserName = (String) request.getSession().getAttribute("userName");
		String msTitle = messageForm.getMsTitle();
		String msContent = messageForm.getMsContent();
		Date msDate = new Date();
		
		MessageDao messageDao = new MessageDao();
		messageDao.saveMessage(msUserName, msDate, msTitle, msContent);
		return mapping.findForward("Success");
	}
}
