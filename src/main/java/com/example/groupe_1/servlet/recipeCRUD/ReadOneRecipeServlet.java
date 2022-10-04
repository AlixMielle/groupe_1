package com.example.groupe_1.servlet.recipeCRUD;

import com.example.groupe_1.dao.DaoFactory;
import com.example.groupe_1.dao.RecipeDao;
import com.example.groupe_1.entity.Recipe;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;
import java.util.Optional;

@WebServlet("/recipe")
public class ReadOneRecipeServlet extends HttpServlet {

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

        RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/readOneRecipe.jsp");
        rd.forward(req, resp);
    }
}
