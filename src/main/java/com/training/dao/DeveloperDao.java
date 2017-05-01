package com.training.dao;

import com.training.model.Developer;

import java.util.List;

/**
 * Created on 30.04.2017
 *
 * @author Roman Hayda
 */
public interface DeveloperDao {
    void addDeveloper(Developer developer);

    Developer getById(int id);

    void updateDeveloper(Developer developer);

    void deleteDeveloper(int id);

    List<Developer> getAll();

}
