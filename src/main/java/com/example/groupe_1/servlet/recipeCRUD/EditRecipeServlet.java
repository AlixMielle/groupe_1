package com.example.groupe_1.servlet.recipeCRUD;

import com.example.groupe_1.dao.DaoFactory;
import com.example.groupe_1.dao.IngredientDao;
import com.example.groupe_1.dao.RecipeDao;
import com.example.groupe_1.entity.Difficulty;
import com.example.groupe_1.entity.Ingredient;
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
import java.util.Optional;

@WebServlet("/auth/recipe/edit")
public class EditRecipeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        RecipeDao recipeDao = DaoFactory.getRecipeDAO();
        Optional<Recipe> optionalRecipe = recipeDao.findOne(Integer.parseInt(req.getParameter("recipeId")));
        if(optionalRecipe.isPresent()){
            Recipe recipe = optionalRecipe.get();
            req.setAttribute("recipe", recipe);
        }
        else{
            //on peut utiliser ça dans le .jsp pour faire un 404 custom
            req.setAttribute("itemNotFound", true);
        }

        RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/editRecipe.jsp");
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String id = req.getParameter("recipeId"); //must be the id passed on originally
        String name = req.getParameter("name");
        String pictureUrl = req.getParameter("pictureUrl");
        String nbPerson = req.getParameter("nbPerson");
        String type = req.getParameter("type");
        String timePreparation = req.getParameter("timePreparation");
        String difficulty = req.getParameter("difficulty");
        String price = req.getParameter("price");


        try{
            RecipeDao recipeDao = DaoFactory.getRecipeDAO();
            recipeDao.edit(new Recipe(
                    Integer.parseInt(id),
                    name,
                    pictureUrl,
                    Integer.parseInt(nbPerson),
                    Type.valueOf(type.toUpperCase()),
                    Integer.parseInt(timePreparation),
                    Integer.parseInt(timePreparation),
                    Integer.parseInt(timePreparation),
                    Difficulty.valueOf(difficulty.toUpperCase()),
                    Float.parseFloat(price)
            ));

        }catch (Exception e){
            //if edit fails, send back to the edit page for the same recipe (will reload DB data)
            e.printStackTrace();
        }
        resp.sendRedirect(req.getContextPath() + "/recipe/all");
    }
}
