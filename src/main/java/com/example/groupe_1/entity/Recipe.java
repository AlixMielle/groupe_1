package com.example.groupe_1.entity;

import jakarta.persistence.*;

import java.util.ArrayList;
import java.util.List;

@Entity(name = "Recipe")
@Table(name = "recipe")
public class Recipe {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String name;

    private String pictureUrl;
    private Type type; //en enum, on peut rajouter autant qu'on veut
    private int timePreparation; //temps de preparation en minutes (conversion en hh:mm dans le jsp?)
    private int timeRest;
    private int timeCooking;
    private Difficulty difficulty; //enum pareil
    private float price; //en euros

    private int nbPerson;

    @OneToMany(mappedBy = "recipe",
            fetch = FetchType.EAGER,
            cascade = CascadeType.ALL,
            orphanRemoval = true)
    private List<RecipeStep> steps = new ArrayList<>(); //etapes de recette

    @OneToMany(
            mappedBy = "recipe",
            fetch = FetchType.EAGER,
            cascade = {CascadeType.PERSIST, CascadeType.MERGE},
            orphanRemoval = true)
    private List<RecipeIngredient> ingredients = new ArrayList<>();



    //private List<Utensil> utensils; //on ajoute plus tard
    //private User creator; //user who created the recipe
    //private Date dateAdded; //date de creation de la recette


    public Recipe(int id, String name, String pictureUrl, int nbPerson, Type type, int timePreparation, int timeRest, int timeCooking, Difficulty difficulty, float price) {
        this.id = id;
        this.name = name;
        this.pictureUrl = pictureUrl;
        this.nbPerson = nbPerson;
        this.type = type;
        this.timePreparation = timePreparation;
        this.timeRest = timeRest;
        this.timeCooking = timeCooking;
        this.difficulty = difficulty;
        this.price = price;
    }

    public Recipe(String name) {
        this.name = name;
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

    public String getPictureUrl() {
        return pictureUrl;
    }

    public void setPictureUrl(String pictureUrl) {
        this.pictureUrl = pictureUrl;
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

    public int getNbPerson() {
        return nbPerson;
    }

    public void setNbPerson(int nbPerson) {
        this.nbPerson = nbPerson;
    }

    public List<RecipeStep> getSteps() {
        return steps;
    }

    public void setSteps(List<RecipeStep> steps) {
        this.steps = steps;
    }

    public void addStep(RecipeStep step){
        this.steps.add(step);
        step.setRecipe(this);
    }

    public List<RecipeIngredient> getIngredients() {
        return ingredients;
    }

    public void setIngredients(List<RecipeIngredient> ingredients) {
        this.ingredients = ingredients;
    }

    public void addIngredient(Ingredient ingredient, int qte){
        RecipeIngredient recipeIngredient = new RecipeIngredient(this, ingredient, qte);
        ingredients.add(recipeIngredient);
        ingredient.getRecipes().add(recipeIngredient);
    }




}
