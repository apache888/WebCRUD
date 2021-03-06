package com.training.controller;

import com.training.dao.DeveloperDao;
import com.training.dao.DeveloperDaoImpl;
import com.training.model.Developer;

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
public class AddDeveloperController extends HttpServlet {
    private DeveloperDao developerDao = new DeveloperDaoImpl();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Developer developer = new Developer();
        developer.setFirstName(request.getParameter("firstName"));
        developer.setLastName(request.getParameter("lastName"));
        developer.setSpecialty(request.getParameter("specialty"));
        developer.setExperience(Integer.parseInt(request.getParameter("experience")));
        developer.setSalary(Integer.parseInt(request.getParameter("salary")));

        developerDao.addDeveloper(developer);

        response.sendRedirect("/GetAllDevelopers");

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}
