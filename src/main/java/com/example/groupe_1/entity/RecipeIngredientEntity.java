package com.example.groupe_1.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "recipe_ingredient", schema = "recette_groupe_1")
public class RecipeIngredientEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private int qte; //mesure en grammes
    @Basic
    @Column(name = "recipe_id")
    private int recipeId;
    @Basic
    @Column(name = "ingredient-id")
    private int ingredientId;

    public RecipeIngredientEntity() {
    }

    public RecipeIngredientEntity(int id, int qte, int recipeId, int ingredientId) {
        this.id = id;
        this.qte = qte;
        this.recipeId = recipeId;
        this.ingredientId = ingredientId;
    }

    public int getRecipeId() {
        return recipeId;
    }

    public void setRecipeId(int recipeId) {
        this.recipeId = recipeId;
    }

    public int getIngredientId() {
        return ingredientId;
    }

    public void setIngredientId(int ingredientId) {
        this.ingredientId = ingredientId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getQte() {
        return qte;
    }

    public void setQte(int qte) {
        this.qte = qte;
    }
}
