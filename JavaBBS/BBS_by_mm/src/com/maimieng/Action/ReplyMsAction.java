package com.maimieng.Action;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.maimieng.Bean.ReplyForm;
import com.maimieng.Dao.ReplyDao;

public class ReplyMsAction extends Action {
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		ReplyForm replyForm = (ReplyForm) form;
		int reMsID = (int) request.getSession().getAttribute("MsID");
		String reUserName = (String) request.getSession().getAttribute("userName");
		Date reDate = new Date();
		String reContent = replyForm.getReContent();
		
		ReplyDao replyDao = new ReplyDao();
		replyDao.saveReply(reMsID, reUserName, reDate, reContent);
		
		return mapping.findForward("Success");
	}
}
