package com.example.groupe_1.dao;

import com.example.groupe_1.dao.jpa.JpaIngredientDao;
import com.example.groupe_1.dao.jpa.JpaRecipeDao;
import com.example.groupe_1.dao.jpa.JpaUserDao;

public final class DaoFactory {

    private DaoFactory() {
    }

    public static UserDao getUserDAO() {
        return new JpaUserDao();
    }
    public static RecipeDao getRecipeDAO() {
        return new JpaRecipeDao();
    }
    public static IngredientDao getIngredientDAO() {
        return new JpaIngredientDao();
    }
}
