package com.lqsd.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

/**
 * 用户和门店登录认证及权限过滤
 * 
 * @author sulong
 * 
 */
public class SecurityFilter extends HttpServlet implements Filter {
	private static final Logger log = Logger.getLogger(SecurityFilter.class);
	private static final long serialVersionUID = 1L;

	public void init(FilterConfig filterConfig) throws ServletException {

	}
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		HttpSession session = ((HttpServletRequest) request).getSession(true);
		log.info("pass SecurityFilter");
		chain.doFilter(request, response);
	}

}
