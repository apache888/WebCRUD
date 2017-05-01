package com.training.controller;

import com.training.dao.DeveloperDao;
import com.training.dao.DeveloperDaoImpl;

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
public class GetAllDevelopersController extends HttpServlet {
    private DeveloperDao developerDao = new DeveloperDaoImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        List<Developer> developers = developerDao.getAll();
        request.getServletContext().setAttribute("listDevelopers", this.developerDao.getAll());
        response.sendRedirect(request.getServletContext().getContextPath() + "/pages/developers.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
