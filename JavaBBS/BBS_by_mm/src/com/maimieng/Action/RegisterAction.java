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
		String result = "Failure";
		
		UserForm user = (UserForm) form;

		String userName = user.getUserName();
		String userPassword = user.getUserPassword();
		String userEmail = user.getUserEmail();
		
		if (userName == null || userName.equals("") || userPassword == null || userPassword.equals("")) {
			request.setAttribute("ErrorMessage", "用户名和密码不得为空");
		} else {
			UserDao userDao = new UserDao();
			if (!userDao.verifyUserName(userName)) {
				userDao.saveUser(userName, userPassword, userEmail);
				request.getSession().setAttribute("userName", userName);
				result = "Success";
			}
			else {
				request.setAttribute("ErrorMessage", "该用户名已经存在");
			}
		}
		return mapping.findForward(result);
	}

}
