package com.training.controller;

import com.training.dao.DeveloperDao;
import com.training.dao.DeveloperDaoImpl;
import com.training.model.Developer;

import javax.servlet.RequestDispatcher;
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
public class DeveloperDataController extends HttpServlet {
    private DeveloperDao developerDao = new DeveloperDaoImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Developer developer = developerDao.getById(Integer.parseInt(request.getParameter("id")));
        request.setAttribute("developer", developer);
        RequestDispatcher dispatcher = request.getRequestDispatcher(request.getServletContext().getContextPath() + "/pages/developerdata.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }
}
