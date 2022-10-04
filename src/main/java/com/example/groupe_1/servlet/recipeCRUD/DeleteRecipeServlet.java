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
import java.util.Optional;

@WebServlet("/recipe/delete")
public class DeleteRecipeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RecipeDao recipeDao = DaoFactory.getRecipeDAO();
        Optional<Recipe> optionalRecipe = recipeDao.findOne(Integer.parseInt(req.getParameter("recipeId")));
        if (optionalRecipe.isPresent()) {
            Recipe recipe = optionalRecipe.get();
            req.setAttribute("recipe", recipe);
        } else {
            //on peut utiliser ça dans le .jsp pour faire un 404 custom
            req.setAttribute("itemNotFound", true);
        }

        RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/deleteRecipe.jsp");
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("recipeId"));
        if(req.getParameter("confirm").equals("true")){
            DaoFactory.getRecipeDAO().delete(id);
            resp.sendRedirect(req.getContextPath() + "/recipe/all");
        }
        else {
            resp.sendRedirect(req.getContextPath() + "/recipe?recipeId=" + id);
        }
    }
}
