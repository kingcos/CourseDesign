package com.maimieng.Action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.maimieng.Bean.*;
import com.maimieng.Dao.*;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport implements ServletRequestAware {

	private static final long serialVersionUID = 1L;
	private HttpServletRequest request;
	private User user;
	
	@Override
	public String execute() throws Exception {
		String result = "Failure";

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
		return result;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

}
