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

        String name = req.getParameter("name");
        String type = req.getParameter("type");
        String timePreparation = req.getParameter("timePreparation");
        String timeRest = req.getParameter("timeRest");
        String timeCooking = req.getParameter("timeCooking");
        String difficulty = req.getParameter("difficulty");
        String price = req.getParameter("price");

        try{
            RecipeDao recipeDao = DaoFactory.getRecipeDAO();
            recipeDao.create(new Recipe(
                    0, //c'est remplacé automatiquement par le persist donc ça peut être n'importe quoi
                    name,
                    Type.valueOf(type.toUpperCase()),
                    Integer.parseInt(timePreparation),
                    Integer.parseInt(timeRest),
                    Integer.parseInt(timeCooking),
                    Difficulty.valueOf(difficulty.toUpperCase()),
                    Float.parseFloat(price)
            ));
        }catch (Exception e){
            //if addition fail, reload the add page
            resp.sendRedirect(req.getContextPath() + "/recipe/add");
        }
        //if addition succeeds, send to the all recipes page. Could send to details but that might require some finagling
        resp.sendRedirect(req.getContextPath() + "/recipe/all");

    }
}
