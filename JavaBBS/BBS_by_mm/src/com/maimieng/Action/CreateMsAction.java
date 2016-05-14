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
		// 存储执行结果
		String result = "Failure";
		// 拿到表单
		MessageForm messageForm = (MessageForm) form;
		// 取得表单信息
		// 表单中没有的 msUserName 从 Session 获取
		String msUserName = (String) request.getSession().getAttribute("userName");
		String msTitle = messageForm.getMsTitle();
		String msContent = messageForm.getMsContent();
		// 时间自动默认当前时间
		Date msDate = new Date();
		// 调用 DAO
		MessageDao messageDao = new MessageDao();
		if (messageDao.saveMessage(msUserName, msDate, msTitle, msContent)) {
			result = "Success";
		}
		// 返回结果
		return mapping.findForward(result);
	}
}
