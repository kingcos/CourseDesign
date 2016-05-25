package com.maimieng.Action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.maimieng.Bean.MessageForm;
import com.maimieng.Bean.ReplyForm;
import com.maimieng.Dao.MessageDao;
import com.maimieng.Dao.ReplyDao;

public class GetMessageAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String result = "Failure";
		
		MessageForm messageForm = (MessageForm) form;
		
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
		
		messageForm = messageDao.getMessage(msID);
		List<ReplyForm> list = replyDao.listReply(msID);
		
		if (messageForm != null) {
			result = "Success";
			request.getSession().setAttribute("reList", list);
			request.getSession().setAttribute("MessageForm", messageForm);
			request.getSession().setAttribute("MsID", messageForm.getMsID());
		}
		return mapping.findForward(result);
	}
}
