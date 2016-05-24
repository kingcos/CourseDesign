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

import com.maimieng.Bean.MessageForm;
import com.maimieng.Dao.MessageDao;

public class CreateMsAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String result = "ListMs";
		
		MessageForm messageForm = (MessageForm) form;
		
		String msUserName = (String) request.getSession().getAttribute("userName");
		String msTitle = messageForm.getMsTitle();
		String msContent = messageForm.getMsContent();
		
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
		return mapping.findForward(result);
	}
}
