package com.training.filter;

import com.training.model.LoginBean;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created on 05.05.2017
 *
 * @author Roman Hayda
 */
public class LoginFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;

        if (request.getAttribute("loginBean") == null) {
            LoginBean loginBean = new LoginBean();
            loginBean.setName("test");
            loginBean.setPassword("test");
            request.getSession().setAttribute("loginBean", loginBean);

        }
        String name = request.getParameter("name").isEmpty()? "name" : request.getParameter("name");
        String password = request.getParameter("password").isEmpty()? "pass" : request.getParameter("name");

        if (name.equalsIgnoreCase(((LoginBean) request.getAttribute("loginBean")).getName()) &&
                password.equalsIgnoreCase(((LoginBean) request.getAttribute("loginBean")).getPassword())) {

            filterChain.doFilter(request, response);
        } else response.sendRedirect("pages/login-error.jsp");

    }

    @Override
    public void destroy() {

    }
}
