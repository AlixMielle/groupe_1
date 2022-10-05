package com.example.groupe_1.entity;

import jakarta.persistence.*;
import org.hibernate.annotations.CacheConcurrencyStrategy;
import org.hibernate.annotations.NaturalIdCache;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

@Entity(name = "Ingredient")
@Table(name = "ingredient")
public class Ingredient {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;

    @OneToMany(
            mappedBy = "ingredient",
            fetch = FetchType.EAGER,
            cascade = {CascadeType.PERSIST, CascadeType.MERGE},
            orphanRemoval = true)
    private List<RecipeIngredient> recipes = new ArrayList();

    public Ingredient(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public Ingredient(String name) {
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

    public List<RecipeIngredient> getRecipes() {
        return recipes;
    }

    public void setRecipes(List<RecipeIngredient> recipes) {
        this.recipes = recipes;
    }
}
