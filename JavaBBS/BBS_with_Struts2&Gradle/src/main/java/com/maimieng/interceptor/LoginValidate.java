package com.maimieng.interceptor;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

import static com.opensymphony.xwork2.Action.LOGIN;

public class LoginValidate implements Interceptor {

    private static final long serialVersionUID = 1L;

    @Override
    public void destroy() {
    }

    @Override
    public void init() {
    }

    @Override
    public String intercept(ActionInvocation invocation) throws Exception {
        String result = "";
        String username = (String) invocation.getInvocationContext().getSession().get("userName");

        if (username == null || username.equals("")) {
            result = LOGIN;
        } else {
            result = invocation.invoke();
        }

        return result;
    }

}
