package com.example.groupe_1.dao.jpa;

import com.example.groupe_1.dao.IngredientDao;
import com.example.groupe_1.entity.Ingredient;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

/**
 * implements the CRUD's methods of Ingredient Class with JPA
 */
public class JpaIngredientDao implements IngredientDao {

    /**
     * A method to display all ingredients.
     *
     * @return ingredientList : list of all ingredients
     */
    @Override
    public List<Ingredient> findAll() {
        List<Ingredient> ingredientList = new ArrayList<>();
        EntityManagerFactory emf = EMFManager.getEMF();
        EntityManager em = emf.createEntityManager();
        try {
            ingredientList = em.createQuery("select i from Ingredient i", Ingredient.class)
                    .getResultList();
        } catch (RuntimeException re) {
            re.printStackTrace();
        } finally {
            em.close();
        }
        return ingredientList;
    }

    /**
     * A method to display one ingredient found by the id.
     *
     * @return ingredient : just one ingredient
     */
    @Override
    public Optional<Ingredient> findOne(int id) {
        EntityManagerFactory emf = EMFManager.getEMF();
        EntityManager em = emf.createEntityManager();
        EntityTransaction et = em.getTransaction();
        Ingredient ingredient = null;
        try {
            et.begin();
            ingredient = em.find(Ingredient.class, id);
            et.commit();
        } catch (RuntimeException re) {
            if (et.isActive())
                et.rollback();
        } finally {
            em.close();
        }
        return Optional.ofNullable(ingredient);
    }

    /**
     * A method to create an ingredient.
     *
     * @return true if the ingredient is created
     * @return false if the ingredient is not created
     */
    @Override
    public boolean create(Ingredient ingredient) {
        EntityManagerFactory emf = EMFManager.getEMF();
        EntityManager em = emf.createEntityManager();
        EntityTransaction et = em.getTransaction();
        try {
            et.begin();
            em.persist(ingredient);
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
     * A method to modify an ingredient.
     *
     * @return true if the ingredient is deleted
     * @return false if the ingredient is not deleted
     */
    @Override
    public boolean edit(Ingredient ingredient) {
        EntityManagerFactory emf = EMFManager.getEMF();
        EntityManager em = emf.createEntityManager();
        EntityTransaction et = em.getTransaction();
        try {
            et.begin();
            em.merge(ingredient);
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
     * A method to delete an ingredient.
     *
     * @return true if the ingredient is deleted
     * @return false if the ingredient is not deleted
     */
    @Override
    public boolean delete(int id) {
        EntityManagerFactory emf = EMFManager.getEMF();
        EntityManager em = emf.createEntityManager();
        EntityTransaction et = em.getTransaction();
        try {
            et.begin();
            Ingredient ingredient = em.find(Ingredient.class, id);
            em.remove(ingredient);
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
