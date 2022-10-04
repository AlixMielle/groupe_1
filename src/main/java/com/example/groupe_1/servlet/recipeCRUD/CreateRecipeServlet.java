package com.example.groupe_1.servlet.recipeCRUD;

import com.example.groupe_1.dao.DaoFactory;
import com.example.groupe_1.dao.RecipeDao;
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

@WebServlet("/recipe/add")
public class CreateRecipeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/createRecipe.jsp");
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String id = req.getParameter("id");
        String name = req.getParameter("name");
        String type = req.getParameter("type");
        String timePreparation = req.getParameter("timePreparation");
        String difficulty = req.getParameter("difficulty");
        String price = req.getParameter("price");

        try{
            RecipeDao recipeDao = DaoFactory.getRecipeDao();
            recipeDao.create(new Recipe(
                    Integer.parseInt(id),
                    name,
                    Type.valueOf(type.toUpperCase()),
                    Integer.parseInt(timePreparation),
                    Integer.parseInt(timePreparation),
                    Integer.parseInt(timePreparation),
                    Difficulty.valueOf(difficulty.toUpperCase()),
                    Float.parseFloat(price)
            ));
        }catch (Exception e){

        }

    }
}
