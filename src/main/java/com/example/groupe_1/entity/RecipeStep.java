package com.example.groupe_1.entity;

import jakarta.persistence.*;

@Entity
public class RecipeStep {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private int step; //etape dans la recette: premiere etape, deuxième, etc... distinct de id parce que on va avoir plusieurs première etapes
    private String description;
    @ManyToOne
    @JoinColumn(name = "recipe_fk")
    private Recipe recipe;

    public RecipeStep(int id, int step, String description, Recipe recipe) {
        this.id = id;
        this.step = step;
        this.description = description;
        this.recipe = recipe;
    }

    public RecipeStep() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getStep() {
        return step;
    }

    public void setStep(int step) {
        this.step = step;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Recipe getRecipe() {
        return recipe;
    }

    public void setRecipe(Recipe recipe) {
        this.recipe = recipe;
    }
}
