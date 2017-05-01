package com.training.controller;

import com.training.model.LoginBean;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created on 01.05.2017
 *
 * @author Roman Hayda
 */
public class LoginController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        String name=request.getParameter("name");
        String password=request.getParameter("password");

        LoginBean bean=new LoginBean();
        bean.setName(name);
        bean.setPassword(password);
        request.setAttribute("bean",bean);

        boolean status=bean.validate();

        if(status){
//            RequestDispatcher dispatcher = request.getRequestDispatcher("pages/mainpage.jsp");
//            dispatcher.forward(request, response);
            response.sendRedirect("pages/mainpage.jsp");
        }
        else{
//            RequestDispatcher dispatcher = request.getRequestDispatcher("pages/login-error.jsp");
//            dispatcher.forward(request, response);
            response.sendRedirect("pages/login-error.jsp");
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
