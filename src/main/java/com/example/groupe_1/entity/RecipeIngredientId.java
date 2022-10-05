package com.example.groupe_1.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;

import java.io.Serializable;

@Embeddable
public class RecipeIngredientId implements Serializable {

        @Column(name = "recipe_id")
        private int recipeId;

        @Column(name = "ingredient_id")
        private int ingredientId;

        public RecipeIngredientId() {
        }

        public RecipeIngredientId(int recipeId, int ingredientid) {
            this.recipeId = recipeId;
            this.ingredientId = ingredientid;
        }
}
