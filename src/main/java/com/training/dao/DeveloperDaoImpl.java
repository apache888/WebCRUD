package com.training.dao;

import com.training.model.Developer;
import org.hibernate.Session;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.List;

/**
 * Created on 30.04.2017
 *
 * @author Roman Hayda
 */
public class DeveloperDaoImpl implements DeveloperDao {
    private static final Logger logger = LoggerFactory.getLogger(DeveloperDaoImpl.class);

    @Override
    public void addDeveloper(Developer developer) {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        session.save(developer);
        session.flush();
        session.getTransaction().commit();
        logger.info("Developer successfully added. Details: " + developer);
    }

    @Override
    public Developer getById(int id) {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        Developer developer = session.get(Developer.class, id);
        if (developer != null) {
            session.getTransaction().commit();
        }
        session.getTransaction().rollback();
        logger.info("Developer successfully loaded. Details: " + developer);

        return developer;
    }

    @Override
    public void updateDeveloper(Developer developer) {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();

        session.update(developer);
        session.getTransaction().commit();
        logger.info("Developer successfully updated. Details: " + developer);
    }

    @Override
    public void deleteDeveloper(int id) {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        Developer developer = session.get(Developer.class, id);
        if (developer != null) {
            session.delete(developer);
            session.getTransaction().commit();
        }
        session.getTransaction().rollback();
        logger.info("Developer successfully deleted. Details: " + developer);
    }

    @Override
    public List<Developer> getAll() {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        List<Developer> list = session.createQuery("from Developer", Developer.class).list();
        for (Developer developer : list) {
            logger.info("Developer list: " + developer);
        }
        return list;
    }
}
