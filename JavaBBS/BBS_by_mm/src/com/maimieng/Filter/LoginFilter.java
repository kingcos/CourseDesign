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
	public void destroy() {
		// TODO Auto-generated method stub

	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest httpServletRequest = (HttpServletRequest) request;
		HttpServletResponse httpServletResponse = (HttpServletResponse) response;

		String path = httpServletRequest.getRequestURI();
		String userName = (String) httpServletRequest.getSession().getAttribute("userName");

		if (path.equals("/BBS_by_mm/") || path.equals("/BBS_by_mm/image.jsp") || path.equals("/BBS_by_mm/login.do")
				|| path.equals("/BBS_by_mm/register.do")) {
			chain.doFilter(request, response);
			return;
		}

		if (userName == null || userName.equals("")) {
			httpServletResponse.sendRedirect("/BBS_by_mm/");
		}
		chain.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub

	}

}
