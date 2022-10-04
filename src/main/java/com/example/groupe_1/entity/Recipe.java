package com.example.groupe_1.entity;

import jakarta.persistence.*;

import java.util.ArrayList;
import java.util.List;

@Entity
public class Recipe {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;
    private Type type; //en enum, on peut rajouter autant qu'on veut
    private int timePreparation; //temps de preparation en minutes (conversion en hh:mm dans le jsp?)
    private int timeRest;
    private int timeCooking;
    private Difficulty difficulty; //enum pareil
    private float price; //en euros

    @OneToMany(mappedBy = "recipe")
    private List<RecipeStep> steps; //etapes de recette

    @ManyToMany
    @JoinTable(name = "recipe_ingredient",
            joinColumns = {@JoinColumn(name = "recipe_id", referencedColumnName = "id")},
            inverseJoinColumns=
                    {@JoinColumn(name="ingredient-id", referencedColumnName="id")})
    private List<Ingredient> ingredientList = new ArrayList<>();

    public List<Ingredient> getIngredients() {
        return ingredientList;
    }

    public void setIngredients(List<Ingredient> ingredients) {
        this.ingredientList = ingredients;
    }

    //private List<Utensil> utensils; //on ajoute plus tard
    //private User creator; //user who created the recipe
    //private Date dateAdded; //date de creation de la recette


    public Recipe(int id, String name, Type type, int timePreparation, int timeRest, int timeCooking, Difficulty difficulty, float price) {
        this.id = id;
        this.name = name;
        this.type = type;
        this.timePreparation = timePreparation;
        this.timeRest = timeRest;
        this.timeCooking = timeCooking;
        this.difficulty = difficulty;
        this.price = price;
    }

    public Recipe() {
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

    public Type getType() {
        return type;
    }

    public void setType(Type type) {
        this.type = type;
    }

    public int getTimePreparation() {
        return timePreparation;
    }

    public void setTimePreparation(int timePreparation) {
        this.timePreparation = timePreparation;
    }

    public int getTimeRest() {
        return timeRest;
    }

    public void setTimeRest(int timeRest) {
        this.timeRest = timeRest;
    }

    public int getTimeCooking() {
        return timeCooking;
    }

    public void setTimeCooking(int timeCooking) {
        this.timeCooking = timeCooking;
    }

    public Difficulty getDifficulty() {
        return difficulty;
    }

    public void setDifficulty(Difficulty difficulty) {
        this.difficulty = difficulty;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }
    public void addIngredient(Ingredient ingredient){
        this.ingredientList.add(ingredient);
        ingredient.getRecipeList().add(this);
    }
}
