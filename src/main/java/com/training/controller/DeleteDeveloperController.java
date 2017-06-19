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
public class DeleteDeveloperController extends HttpServlet {
    private DeveloperDao developerDao = new DeveloperDaoImpl();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        developerDao.deleteDeveloper(Integer.parseInt(request.getParameter("id")));

        response.sendRedirect("GetAllDevelopers");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
