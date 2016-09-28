package com.maimieng.action;

import com.maimieng.entity.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * Created by kingcos on 28/09/2016.
 */
public class MainAction extends ActionSupport {

    private User user;
    private String failedMessage;

    public String register() {
        if (user != null) {
            if (!user.getUsername().equals("") && !user.getPassword().equals("")) {
                ActionContext.getContext().getSession().put("username", user.getUsername());
                ActionContext.getContext().getSession().put("password", user.getPassword());
                return LOGIN;
            }
        }

        failedMessage = "注册失败";
        return "register_failed";
    }

    public String login() {
        if (user != null) {
            if (!user.getUsername().equals("") && !user.getPassword().equals("")) {
                String un = (String)ActionContext.getContext().getSession().get("username");
                String pwd = (String)ActionContext.getContext().getSession().get("password");
                if (un.equals(user.getUsername()) && pwd.equals(user.getPassword())) {
                    return SUCCESS;
                }
            }
        }

        failedMessage = "登录失败";
        return LOGIN;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getFailedMessage() {
        return failedMessage;
    }

    public void setFailedMessage(String failedMessage) {
        this.failedMessage = failedMessage;
    }
}
