package com.example.groupe_1.dao.jpa;

import com.example.groupe_1.dao.UserDao;
import com.example.groupe_1.entity.User;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

/**
 * implements the CRUD's methods of User Class with JPA
 */
public class JpaUserDao implements UserDao {

    /**
     * A method to display all users.
     *
     * @return userList : list of all users
     */
    @Override
    public List<User> findAll() {
        List<User> userList = new ArrayList<>();
        EntityManagerFactory emf = EMFManager.getEMF();
        EntityManager em = emf.createEntityManager();
        try {
            userList = em.createQuery("select u from User u", User.class)
                    .getResultList();
        } catch (RuntimeException re) {
            re.printStackTrace();
        } finally {
            em.close();
        }
        return userList;
    }

    /**
     * A method to display one user found by the id.
     *
     * @return user : just one user
     */
    @Override
    public Optional<User> findOne(int id) {
        EntityManagerFactory emf = EMFManager.getEMF();
        EntityManager em = emf.createEntityManager();
        EntityTransaction et = em.getTransaction();
        User user = null;
        try {
            et.begin();
            user = em.find(User.class, id);
            et.commit();
        } catch (RuntimeException re) {
            if (et.isActive())
                et.rollback();
        } finally {
            em.close();
        }
        return Optional.ofNullable(user);
    }

    @Override
    public Optional<User> findByLogin(String email, String password){
        EntityManagerFactory emf = EMFManager.getEMF();
        EntityManager em = emf.createEntityManager();
        User user = null;
        try {
            return Optional.of(em.createQuery("SELECT u FROM User u WHERE u.email = :email AND u.password = :password", User.class)
                    .setParameter("email", email)
                    .setParameter("password", password)
                    .getSingleResult());
        } catch (RuntimeException re) {
            re.printStackTrace();
        } finally {
            em.close();
        }
        return Optional.ofNullable(user);
    }

    /**
     * A method to create a user.
     *
     * @return true if the user is created
     * @return false if the user is not created
     */
    @Override
    public boolean create(User user) {
        EntityManagerFactory emf = EMFManager.getEMF();
        EntityManager em = emf.createEntityManager();
        EntityTransaction et = em.getTransaction();
        try {
            et.begin();
            em.persist(user);
            et.commit();
            return true;
        } catch (RuntimeException re) {
            if (et.isActive())
                et.rollback();
        } finally {
            em.close();
        }
        return false;
    }

    /**
     * A method to modify a user.
     *
     * @return true if the user is modified
     * @return false if the user is not modified
     */
    @Override
    public boolean edit(User user) {
        EntityManagerFactory emf = EMFManager.getEMF();
        EntityManager em = emf.createEntityManager();
        EntityTransaction et = em.getTransaction();
        try {
            et.begin();
            em.merge(user);
            et.commit();
            return true;
        } catch (RuntimeException re) {
            if (et.isActive())
                et.rollback();
        } finally {
            em.close();
        }
        return false;
    }

    /**
     * A method to delete a user.
     *
     * @return true if the user is deleted
     * @return false if the user is not deleted
     */
    @Override
    public boolean delete(int id) {
        EntityManagerFactory emf = EMFManager.getEMF();
        EntityManager em = emf.createEntityManager();
        EntityTransaction et = em.getTransaction();
        try {
            et.begin();
            User user = em.find(User.class, id);
            em.remove(user);
            et.commit();
            return true;
        } catch (RuntimeException re) {
            if (et.isActive())
                et.rollback();
        } finally {
            em.close();
        }
        return false;
    }
}
