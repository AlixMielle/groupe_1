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

@WebServlet("/recipe/add")
public class CreateRecipeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        IngredientDao ingredientDao = DaoFactory.getIngredientDAO();
        List<Ingredient> ingredientList = ingredientDao.findAll();

        req.setAttribute("ingredientList", ingredientList);

        RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/createRecipe.jsp");
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String name = req.getParameter("name");
        String nbPerson = req.getParameter("nbPerson");
        String type = req.getParameter("type");
        String timePreparation = req.getParameter("timePreparation");
        String timeRest = req.getParameter("timeRest");
        String timeCooking = req.getParameter("timeCooking");
        String difficulty = req.getParameter("difficulty");
        String price = req.getParameter("price");

        String ingredient1 = req.getParameter("ingredient1");
        String qte1 = req.getParameter("qte1");
        String ingredient2 = req.getParameter("ingredient2");
        String qte2 = req.getParameter("qte2");
        String ingredient3 = req.getParameter("ingredient3");
        String qte3 = req.getParameter("qte3");
        String ingredient4 = req.getParameter("ingredient4");
        String qte4 = req.getParameter("qte4");
        String ingredient5 = req.getParameter("ingredient5");
        String qte5 = req.getParameter("qte5");


        try{
            RecipeDao recipeDao = DaoFactory.getRecipeDAO();
            Recipe recipe = new Recipe(
                    0, //c'est remplacé automatiquement par le persist donc ça peut être n'importe quoi
                    name,
                    Integer.parseInt(nbPerson),
                    Type.valueOf(type.toUpperCase()),
                    Integer.parseInt(timePreparation),
                    Integer.parseInt(timeRest),
                    Integer.parseInt(timeCooking),
                    Difficulty.valueOf(difficulty.toUpperCase()),
                    Float.parseFloat(price)
            );

            if (ingredient1 != null && !qte1.equals("0") ){
                recipe.addIngredient(new Ingredient(0, ingredient1), Integer.parseInt(qte1));
            }
            if (ingredient2 != null && !qte2.equals("0")){
                recipe.addIngredient(new Ingredient(0, ingredient2), Integer.parseInt(qte2));
            }
            if (ingredient3 != null && !qte3.equals("0")){
                recipe.addIngredient(new Ingredient(0, ingredient3), Integer.parseInt(qte3));
            }
            if (ingredient4 != null && !qte4.equals("0")){
                recipe.addIngredient(new Ingredient(0, ingredient4), Integer.parseInt(qte4));
            }
            if (ingredient5 != null && !qte5.equals("0")){
                recipe.addIngredient(new Ingredient(0, ingredient5), Integer.parseInt(qte5));
            }
            recipeDao.create(recipe);

        }catch (Exception e){
            //if addition fail, reload the add page
            e.printStackTrace();
        }
        //if addition succeeds, send to the all recipes page. Could send to details but that might require some finagling
        resp.sendRedirect(req.getContextPath() + "/recipe/all");

    }
}
