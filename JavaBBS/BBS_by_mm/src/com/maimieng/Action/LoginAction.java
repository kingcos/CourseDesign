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

		UserForm user = (UserForm) form;

		String userName = user.getUserName();
		String userPassword = user.getUserPassword();
		// 返回结果
		String loginResult = null;
		//
		UserDao userDao = new UserDao();
		if (userDao.verifyLogin(userName, userPassword)) {
			//
			request.getSession().setAttribute("userName", userName);
			loginResult = "LoginSuccess";
		}
		// 用户 返回失败
		else {
			// request.setAttribute("failmessage", "该用户名已经存在");
			loginResult = "LoginFailure";
		}
		return mapping.findForward(loginResult);
	}

}
