package com.example.groupe_1.servlet;

import com.example.groupe_1.dao.DaoFactory;
import com.example.groupe_1.entity.Difficulty;
import com.example.groupe_1.entity.Ingredient;
import com.example.groupe_1.entity.Recipe;
import com.example.groupe_1.entity.Type;
import jakarta.persistence.EntityManager;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet("/testServlet")
public class TestServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Recipe recipe = new Recipe(0, "pates", Type.PLAT, 23, 3, 9, Difficulty.HARD, 23);
        Ingredient banane = new Ingredient(0, "banane");
        Ingredient tomate = new Ingredient(0, "tomate");
        Ingredient fromage = new Ingredient(0, "fromage");
        recipe.addIngredient(banane, 200);
        recipe.addIngredient(tomate, 300);
        recipe.addIngredient(fromage, 600);

        Recipe recipe1 = new Recipe(0, "glace", Type.DESSERT, 3, 37, 0, Difficulty.EASY, 10);
        Ingredient pistache = new Ingredient(0, "pistache");
        Ingredient fraise = new Ingredient(0, "fraise");
        recipe.addIngredient(pistache, 100);
        recipe.addIngredient(fraise, 100);


        DaoFactory.getRecipeDAO().create(recipe);
        DaoFactory.getRecipeDAO().create(recipe1);

        response.sendRedirect(request.getContextPath() + "/recipe/all");
    }

}