package com.maimieng.Action;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
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
		String result = "Success";
		
		ReplyForm replyForm = (ReplyForm) form;
		
		int reMsID = (int) request.getSession().getAttribute("MsID");
		String reUserName = (String) request.getSession().getAttribute("userName");
		String reContent = replyForm.getReContent();
		
		Date date = new Date();
		String formatDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date);
		Timestamp reDate = Timestamp.valueOf(formatDate);
		
		if (reContent == null || reContent.equals("")) {
			request.setAttribute("ErrorMessage", "内容不得为空！");
			result = "Failure";
		} else {
			ReplyDao replyDao = new ReplyDao();
			replyDao.saveReply(reMsID, reUserName, reDate, reContent);
		}
		return mapping.findForward(result);
	}
}
