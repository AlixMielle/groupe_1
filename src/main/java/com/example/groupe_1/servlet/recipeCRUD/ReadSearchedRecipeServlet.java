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
import java.util.List;

@WebServlet("/recipe/search")
public class ReadSearchedRecipeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String searchBy = req.getParameter("searchBy");
        String searchTerm = req.getParameter("searchTerm");

        RecipeDao recipeDao = DaoFactory.getRecipeDAO();
        List<Recipe> recipeList;

        switch (searchBy){
            case "name":
                recipeList = recipeDao.findByPartialName(searchTerm);
                break;
            case "type":
                try{
                    recipeList = recipeDao.findByType(Type.valueOf(searchTerm.toUpperCase()));
                } catch (Exception e){
                    recipeList = recipeDao.findAll();
                }
                break;
            case "difficulty":
                try{
                    recipeList = recipeDao.findByDifficulty(Difficulty.valueOf(searchTerm.toUpperCase()));
                } catch (Exception e){
                    recipeList = recipeDao.findAll();
                }
                break;
            default:
                recipeList = recipeDao.findAll();
                break;
        }
        req.setAttribute("recipes", recipeList);

        RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/readAllRecipe.jsp");
        rd.forward(req, resp);
    }

}
