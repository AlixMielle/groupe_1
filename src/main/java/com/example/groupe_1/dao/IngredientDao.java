package com.example.groupe_1.dao;

import com.example.groupe_1.entity.Ingredient;

import java.util.List;
import java.util.Optional;

public interface IngredientDao {
        List<Ingredient> findAll();

        Optional<Ingredient> findOne(int id);

        boolean create(Ingredient ingredient);

        boolean edit(Ingredient ingredient);

        boolean delete(int id);
}
