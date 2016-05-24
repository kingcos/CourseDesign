package com.maimieng.Filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginFilter implements Filter {

	@Override
	public void destroy() {}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest httpServletRequest = (HttpServletRequest) request;
		HttpServletResponse httpServletResponse = (HttpServletResponse) response;

		String path = httpServletRequest.getRequestURI().substring(httpServletRequest.getContextPath().length() + 1);

		String userName = (String) httpServletRequest.getSession().getAttribute("userName");

		if (path.equals("") || path.equals("jsp/Login/Image.jsp") || path.equals("login.do")
				|| path.equals("register.do") || path.equals("jsp/Register/Register.jsp")) {
			chain.doFilter(request, response);
			return;
		}

		if (userName == null || userName.equals("")) {
			httpServletResponse.sendRedirect("/BBS_by_mm/");
		}
		chain.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {}

}
