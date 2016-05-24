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
		// 拿到表单
		MessageForm messageForm = (MessageForm) form;
		// 取得表单信息
		// 表单中没有的 msUserName 从 Session 获取
		String msUserName = (String) request.getSession().getAttribute("userName");
		String msTitle = messageForm.getMsTitle();
		String msContent = messageForm.getMsContent();
		// 时间自动默认当前时间
		Date date = new Date();
		String formatDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date);
		Timestamp msDate = Timestamp.valueOf(formatDate);
		if (msTitle == null || msTitle.equals("") || msContent == null || msContent.equals("")) {
			request.setAttribute("ErrorMessage", "标题和内容不得为空！");
			result = "Failure";
		} else {
			// 调用 DAO
			MessageDao messageDao = new MessageDao();
			messageDao.saveMessage(msUserName, msDate, msTitle, msContent);
		}
		return mapping.findForward(result);
	}
}
