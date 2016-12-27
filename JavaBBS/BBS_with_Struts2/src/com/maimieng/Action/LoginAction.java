package com.maimieng.Action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.maimieng.Bean.User;
import com.maimieng.Dao.UserDao;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements ServletRequestAware {
	private static final long serialVersionUID = 1L;
	private HttpServletRequest request;
	private User user;

	@Override
	public String execute() throws Exception {
		String userName = user.getUserName();
		String userPassword = user.getUserPassword();
		String result = "Failure";
		
		String code = request.getParameter("rand");
		String rand = (String)request.getSession().getAttribute("rand");
		if (!rand.equals(code)) {
			request.setAttribute("ErrorMessage", "验证码错误！");
			return result;
		}
		
		UserDao userDao = new UserDao();
		if (userDao.verifyLogin(userName, userPassword)) {
			request.getSession().setAttribute("userName", userName);
			result = "Success";
		} else {
			request.setAttribute("ErrorMessage", "用户名或密码错误！");
		}
		return result;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

}
