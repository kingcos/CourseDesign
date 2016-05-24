package com.maimieng.Action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.maimieng.Bean.ReplyForm;
import com.maimieng.Dao.ReplyDao;

public class ListReAction extends Action {
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String result = "Success";
		
		ReplyDao replyDao = new ReplyDao();
		
		int reMsID = (int) request.getSession().getAttribute("MsID");
		
		List<ReplyForm> list = replyDao.listReply(reMsID);
		
		request.getSession().setAttribute("reList", list);
		return mapping.findForward(result);
	}
}
