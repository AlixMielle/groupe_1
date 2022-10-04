package com.example.groupe_1.dao;

import java.util.List;
import java.util.Optional;

public interface RecipeDao {
    List<Recipe> findAll();

    Optional<Recipe> findOne(int id);

    boolean create(Recipe recipe);

    boolean edit(Recipe recipe);

    boolean delete(int id);

}
