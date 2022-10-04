package com.example.groupe_1.entity;

import jakarta.persistence.*;

import java.util.List;

@Entity
public class Ingredient {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
    @ManyToMany
    @JoinTable(name = "recipe_ingredients")
    private List<Recipe> recipeList;

    public Ingredient(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public Ingredient() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
