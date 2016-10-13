package com.maimieng.action;

import com.opensymphony.xwork2.ActionSupport;

/**
 * Created by kingcos on 13/10/2016.
 */
public class TimerInterceptorDemo extends ActionSupport {
    @Override
    public String execute() throws Exception {
        System.out.println("TimerInterceptorDemo");

        return SUCCESS;
    }
}
