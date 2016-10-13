package com.maimieng.interceptor;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

import static com.opensymphony.xwork2.Action.LOGIN;

/**
 * Created by kingcos on 13/10/2016.
 */
public class LoginValidate implements Interceptor {
    public void destroy() {}

    public void init() {}

    public String intercept(ActionInvocation invocation) throws Exception {
        String result = "";
        String username = (String)invocation.getInvocationContext().getSession().get("username");

        if (username == null || username.equals("")) {
            result = LOGIN;
        } else {
            result = invocation.invoke();
        }

        return result;
    }
}
