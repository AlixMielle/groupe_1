package com.example.groupe_1.servlet.recipeCRUD;

import com.example.groupe_1.entity.Difficulty;
import com.example.groupe_1.entity.Recipe;
import com.example.groupe_1.entity.Type;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/recipe/all")
public class ReadAllRecipeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RecipeDao recipeDao = DaoFactory.getRecipeDao();
        List<Recipe> recipeList = recipeDao.findAll();
        req.setAttribute("recipes", recipeList);

        RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/readAllRecipe.jsp");
        rd.forward(req, resp);
    }

}
