package com.example.groupe_1.dao;

import com.example.groupe_1.entity.Difficulty;
import com.example.groupe_1.entity.Recipe;
import com.example.groupe_1.entity.Type;

import java.util.List;
import java.util.Optional;

public interface RecipeDao {
    List<Recipe> findAll();

    List<Recipe> findByPartialName(String searchWord);

    List<Recipe> findByType(Type type);

    List<Recipe> findByDifficulty(Difficulty difficulty);

    Optional<Recipe> findOne(int id);

    boolean create(Recipe recipe);

    boolean edit(Recipe recipe);

    boolean delete(int id);

}
