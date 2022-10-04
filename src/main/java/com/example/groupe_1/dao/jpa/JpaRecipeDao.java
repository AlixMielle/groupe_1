package com.example.groupe_1.dao.jpa;

import com.example.groupe_1.dao.RecipeDao;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

/**
 * implements the CRUD's methods of Recipe Class with JPA
 */
public class JpaRecipeDao implements RecipeDao {

    /**
     * A method to display all recipes.
     * @return recipeList : list of all recipes
     */
    @Override
    public List<Recipe> findAll() {
        List<Recipe> recipeList = new ArrayList<>();
        EntityManagerFactory emf = EMFManager.getEMF();
        EntityManager em = emf.createEntityManager();
        try {
            recipeList = em.createQuery("select r from Recipe r", Recipe.class)
                    .getResultList();
        } catch (RuntimeException re) {
            re.printStackTrace();
        } finally {
            em.close();
        }
        return recipeList;
    }

    /**
     * A method to display one recipe found by the id.
     * @return recipe : just one recipe
     */
    @Override
    public Optional<Recipe> findOne(int id) {
        EntityManagerFactory emf = EMFManager.getEMF();
        EntityManager em = emf.createEntityManager();
        EntityTransaction et = em.getTransaction();
        Recipe recipe = null;
        try {
            et.begin();
            recipe = em.find(Recipe.class, id);
            et.commit();
        } catch (RuntimeException re) {
            if (et.isActive())
                et.rollback();
        } finally {
            em.close();
        }
        return Optional.ofNullable(recipe);
    }

    /**
     * A method to create a recipe.
     * @return true if the recipe is created
     * @return false if the recipe is not created
     */
    @Override
    public boolean create(Recipe recipe) {
        EntityManagerFactory emf = EMFManager.getEMF();
        EntityManager em = emf.createEntityManager();
        EntityTransaction et = em.getTransaction();
        try {
            et.begin();
            em.persist(recipe);
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
     * A method to modify a recipe.
     * @return true if the recipe is modified
     * @return false if the recipe is not modified
     */
    @Override
    public boolean edit(Recipe recipe) {
        EntityManagerFactory emf = EMFManager.getEMF();
        EntityManager em = emf.createEntityManager();
        EntityTransaction et = em.getTransaction();
        try {
            et.begin();
            em.merge(recipe);
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
     * A method to delete a recipe.
     * @return true if the recipe is deleted
     * @return false if the recipe is not deleted
     */
    @Override
    public boolean delete(int id) {
        EntityManagerFactory emf = EMFManager.getEMF();
        EntityManager em = emf.createEntityManager();
        EntityTransaction et = em.getTransaction();
        try {
            et.begin();
            Recipe recipe = em.find(Recipe.class, id);
            em.remove(recipe);
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
