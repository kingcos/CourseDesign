package com.maimieng.Action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.maimieng.Bean.*;
import com.maimieng.Dao.*;

public class LoginAction extends Action {
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String result = "Failure";
		
		UserForm user = (UserForm) form;

		String userName = user.getUserName();
		String userPassword = user.getUserPassword();
		
		String code = request.getParameter("rand");
		String rand = (String)request.getSession().getAttribute("rand");
		if (!rand.equals(code)) {
			request.setAttribute("ErrorMessage", "验证码错误！");
			return mapping.findForward(result);
		}
		
		UserDao userDao = new UserDao();
		if (userDao.verifyLogin(userName, userPassword)) {
			request.getSession().setAttribute("userName", userName);
			result = "Success";
		}
		else {
			request.setAttribute("ErrorMessage", "用户名或密码错误！");
		}
		return mapping.findForward(result);
	}

}
