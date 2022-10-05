package com.example.groupe_1.entity;

import jakarta.persistence.*;

@Entity(name = "RecipeIngredient")
@Table(name = "recipe_ingredient")
public class RecipeIngredient {

    @EmbeddedId
    private RecipeIngredientId id;

    @ManyToOne(fetch = FetchType.EAGER)
    @MapsId("recipeId")
    private Recipe recipe;

    @ManyToOne(fetch = FetchType.EAGER)
    @MapsId("ingredientId")
    private Ingredient ingredient;

    @Column(name = "qte")
    private int qte;

    public RecipeIngredient() {
    }

    public RecipeIngredient(Recipe recipe, Ingredient ingredient) {
        this.recipe = recipe;
        this.ingredient = ingredient;
        this.id = new RecipeIngredientId(recipe.getId(), ingredient.getId());
    }
    public RecipeIngredient(Recipe recipe, Ingredient ingredient, int qte) {
        this.recipe = recipe;
        this.ingredient = ingredient;
        this.qte = qte;
        this.id = new RecipeIngredientId(recipe.getId(), ingredient.getId());
    }

    public RecipeIngredientId getId() {
        return id;
    }

    public void setId(RecipeIngredientId id) {
        this.id = id;
    }

    public Recipe getRecipe() {
        return recipe;
    }

    public void setRecipe(Recipe recipe) {
        this.recipe = recipe;
    }

    public Ingredient getIngredient() {
        return ingredient;
    }

    public void setIngredient(Ingredient ingredient) {
        this.ingredient = ingredient;
    }

    public int getQte() {
        return qte;
    }

    public void setQte(int qte) {
        this.qte = qte;
    }
}





