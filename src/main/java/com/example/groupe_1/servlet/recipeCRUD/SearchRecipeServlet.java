package com.example.groupe_1.servlet.recipeCRUD;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/recipe/search")
public class SearchRecipeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/searchRecipeForm.jsp");
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String searchName = req.getParameter("searchName");
        String type = req.getParameter("type");
        String difficulty = req.getParameter("difficulty");

        String searchBy = "";
        String searchTerm = "";
        String searchParameters = "";

        if(searchName != null && !searchName.equals("")){
            searchBy = "name";
            searchTerm = searchName;
        } else if (type != null && !type.equals("")) {
            searchBy = "type";
            searchTerm = type;
        } else if (difficulty != null && !difficulty.equals("")) {
            searchBy = "difficulty";
            searchTerm = difficulty;
        }

        if(!searchBy.isEmpty() && !searchTerm.isEmpty()){
            searchParameters = "?searchBy=" + searchBy + "&searchTerm=" + searchTerm;
        }

        resp.sendRedirect(req.getContextPath() + "/recipe/search/results" + searchParameters);
    }

}
