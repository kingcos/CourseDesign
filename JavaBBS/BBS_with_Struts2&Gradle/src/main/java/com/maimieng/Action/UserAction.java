package com.maimieng.Action;

import com.maimieng.Bean.User;
import com.maimieng.Dao.UserDao;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {

    private static final long serialVersionUID = 1L;
    private User user;

    public String login() throws Exception {
        String userName = user.getUserName();
        String userPassword = user.getUserPassword();
        String result = "loginFailed";

        String code = "";
        if (ActionContext.getContext().getParameters().get("rand") != null) {
            code = ((String[]) ActionContext.getContext().getParameters().get("rand"))[0];
        }
        String rand = (String) ActionContext.getContext().getSession().get("rand");
        if (!rand.equals(code)) {
            ActionContext.getContext().put("ErrorMessage", "验证码错误！");
            return result;
        }

        UserDao userDao = new UserDao();
        if (userDao.verifyLogin(userName, userPassword)) {
            ActionContext.getContext().getSession().put("userName", userName);
            result = SUCCESS;
        } else {
            ActionContext.getContext().put("ErrorMessage", "用户名或密码错误！");
        }
        return result;
    }

    public String register() throws Exception {
        String result = "registerFailed";

        String userName = user.getUserName();
        String userPassword = user.getUserPassword();
        String userEmail = user.getUserEmail();

        if (userName == null || userName.equals("") || userPassword == null || userPassword.equals("")) {
            ActionContext.getContext().put("ErrorMessage", "用户名和密码不得为空");
        } else {
            UserDao userDao = new UserDao();
            if (!userDao.verifyUserName(userName)) {
                userDao.saveUser(userName, userPassword, userEmail);
                ActionContext.getContext().getSession().put("userName", userName);
                result = SUCCESS;
            } else {
                ActionContext.getContext().put("ErrorMessage", "该用户名已经存在");
            }
        }
        return result;
    }

    public void validateLogin() {
        if (this.user.getUserName() == null || this.user.getUserName().equals("")) {
            this.addFieldError("userName", "用户名不得为空");
        }
        if (this.user.getUserPassword() == null || this.user.getUserPassword().equals("")) {
            this.addFieldError("userPassword", "密码不得为空");
        }
    }

    public void validateRegister() {
        if (this.user.getUserName() == null || this.user.getUserName().equals("")) {
            this.addFieldError("userName", "用户名不得为空");
        }
        if (this.user.getUserPassword() == null || this.user.getUserPassword().equals("")) {
            this.addFieldError("userPassword", "密码不得为空");
        }
        if (this.user.getUserEmail() == null || this.user.getUserEmail().equals("")) {
            this.addFieldError("userEmail", "邮箱不得为空");
        }
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
