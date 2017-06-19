package com.training.controller;

import com.training.dao.DeveloperDao;
import com.training.dao.DeveloperDaoImpl;
import com.training.model.Developer;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created on 01.05.2017
 *
 * @author Roman Hayda
 */
public class GetAllDevelopersController extends HttpServlet {
    private DeveloperDao developerDao = new DeveloperDaoImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        request.setCharacterEncoding("UTF-8");
        List<Developer> developers = developerDao.getAll();
        request.setAttribute("listDevelopers", developers);
        request.getRequestDispatcher("/pages/developers.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
