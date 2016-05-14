package com.maimieng.Action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.maimieng.Bean.*;
import com.maimieng.Dao.*;

public class RegisterAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		UserForm user = (UserForm) form;

		String userName = user.getUserName();
		String userPassword = user.getUserPassword();
		String userEmail = user.getUserEmail();
		// 返回结果
		String registerResult = null;
		// 判断用户是否存在
		UserDao userDao = new UserDao();
		if (!userDao.verifyUserName(userName)) {
			// 保存用户
			userDao.saveUser(userName, userPassword, userEmail);
			request.getSession().setAttribute("userName", userName);
			registerResult = "RegisterSuccess";
		}
		// 用户已经存在 返回失败
		else {
			request.setAttribute("ErrorMessage", "该用户名已经存在");
			registerResult = "RegisterFailure";
		}
		return mapping.findForward(registerResult);
	}

}
