package com.example.groupe_1.servlet;

import com.example.groupe_1.dao.DaoFactory;
import com.example.groupe_1.dao.RecipeDao;
import com.example.groupe_1.entity.*;
import jakarta.persistence.EntityManager;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet("/testServlet")
public class TestServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        if(DaoFactory.getRecipeDAO().findAll().isEmpty()) {

            Recipe recipe = new Recipe(0, "pates", "https://images.unsplash.com/photo-1664969417440-c73804d60277?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80", 3, Type.PLAT, 23, 3, 9, Difficulty.MEDIUM, 23);
            Ingredient banane = new Ingredient(0, "pates");
            Ingredient tomate = new Ingredient(0, "sauce tomate");
            Ingredient fromage = new Ingredient(0, "fromage");
            recipe.addIngredient(banane, 600);
            recipe.addIngredient(tomate, 200);
            recipe.addIngredient(fromage, 100);
            RecipeStep step01 = new RecipeStep(0, 1, "Placer les pâtes dans de l'eau bouillante jusqu'à ce qu'elles soient al dente.", recipe);
            RecipeStep step02 = new RecipeStep(0, 2, "Egouter les pâtes et verser la sauce tomate dessus.", recipe);
            RecipeStep step03 = new RecipeStep(0, 3, "Saupoudrer de fromage.", recipe);
            recipe.addStep(step01);
            recipe.addStep(step02);
            recipe.addStep(step03);

            Recipe recipe1 = new Recipe(0, "glace", "https://images.unsplash.com/photo-1657299170950-9da95993c9ad?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80", 2, Type.DESSERT, 3, 37, 0, Difficulty.EASY, 10);
            Ingredient pistache = new Ingredient(0, "pistache");
            Ingredient fraise = new Ingredient(0, "fraise");
            recipe.addIngredient(pistache, 100);
            recipe.addIngredient(fraise, 100);
            RecipeStep step11 = new RecipeStep(0, 1, "Pour être honnête je ne sais pas ce qui se passe sur cette image.", recipe1);
            RecipeStep step12 = new RecipeStep(0, 2, "Mettez juste tout dans une coupe et dégustez.", recipe1);
            recipe1.addStep(step11);
            recipe1.addStep(step12);

            Recipe courgettesFarcies = new Recipe(0, "Courgettes farcies", "https://assets.afcdn.com/recipe/20130823/10317_w1024h768c1cx1424cy2144.jpg", 4, Type.PLAT, 20, 0, 30, Difficulty.MEDIUM, 40);
            Ingredient courgette = new Ingredient(0, "courgette");
            Ingredient oignon = new Ingredient(0, "oignon");
            Ingredient ail = new Ingredient(0, "ail");
            Ingredient boeufHache = new Ingredient(0, "boeuf haché");
            courgettesFarcies.addIngredient(courgette, 300);
            courgettesFarcies.addIngredient(oignon, 50);
            courgettesFarcies.addIngredient(ail, 100);
            courgettesFarcies.addIngredient(boeufHache, 400);
            RecipeStep step21 = new RecipeStep(0, 1, "Couper la courgette dans le sens de la longueur, la creuser, découper la chair.", courgettesFarcies);
            RecipeStep step22 = new RecipeStep(0, 2, "Faire cuire le boeuf avec l'oignon dans une casserole.", courgettesFarcies);
            RecipeStep step23 = new RecipeStep(0, 3, "Assaisoner et ajouter la chair de courgette.", courgettesFarcies);
            RecipeStep step24 = new RecipeStep(0, 4, "Remplir les courgettes évidées de la préparation et mettre au four.", courgettesFarcies);
            courgettesFarcies.addStep(step21);
            courgettesFarcies.addStep(step22);
            courgettesFarcies.addStep(step23);
            courgettesFarcies.addStep(step24);

            Recipe sushis = new Recipe(0, "Sushis", "https://funsushis.fr/wp-content/uploads/2022/09/plateau-sushi-nice.jpg", 4, Type.PLAT, 25, 0, 15, Difficulty.EASY, 35);
            Ingredient riz = new Ingredient(0, "riz");
            Ingredient nori = new Ingredient(0, "nori");
            Ingredient saumon = new Ingredient(0, "saumon");
            sushis.addIngredient(riz, 180);
            sushis.addIngredient(nori, 50);
            sushis.addIngredient(saumon, 70);
            RecipeStep step31 = new RecipeStep(0, 1, "Faire cuire le riz.", sushis);
            RecipeStep step32 = new RecipeStep(0, 2, "Déposer le riz puis le saumon sur une feuille de nori.", sushis);
            RecipeStep step33 = new RecipeStep(0, 3, "Rouler le tout et couper en petites bouchées.", sushis);
            sushis.addStep(step31);
            sushis.addStep(step32);
            sushis.addStep(step33);

            Recipe carbonade = new Recipe(0, "Carbonade Flamande", "https://www.cookomix.com/wp-content/uploads/2017/03/carbonade-flamande-thermomix.jpg", 3, Type.PLAT, 30, 0, 120, Difficulty.EASY, 57);
            Ingredient boeuf = new Ingredient(0, "boeuf");
            Ingredient painEpice = new Ingredient(0, "pain d'épices");
            carbonade.addIngredient(boeuf, 500);
            carbonade.addIngredient(painEpice, 120);
            carbonade.addIngredient(oignon, 100);
            RecipeStep step41 = new RecipeStep(0, 1, "Faire revenir le boeuf dans une casserolle. Lorsque les morceaux sont saisis, ajouter les oignons en lamelle.", carbonade);
            RecipeStep step42 = new RecipeStep(0, 2, "Laisser mijoter à couvert pendant 30 minutes. Ensuite, ajouter le pain d'épice et laisser mijoter pendant 1h30 minimum.", carbonade);
            carbonade.addStep(step41);
            carbonade.addStep(step42);

            RecipeDao recipeDao = DaoFactory.getRecipeDAO();
            recipeDao.create(recipe);
            recipeDao.create(recipe1);
            recipeDao.create(courgettesFarcies);
            recipeDao.create(sushis);
            recipeDao.create(carbonade);
        }

        RequestDispatcher rd = req.getRequestDispatcher("/index.jsp");
        rd.forward(req, resp);
        //response.sendRedirect(request.getContextPath() + "/recipe/all");
    }

}
