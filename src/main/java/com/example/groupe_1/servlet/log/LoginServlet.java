package com.example.groupe_1.servlet.log;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    // Redirect to profile because there are a lot of user options
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        HttpSession session = req.getSession();
        boolean success = session != null && session.getAttribute("user") != null;
        if (success) {
            res.sendRedirect(req.getContextPath() + "/WEB-INF/userDetails.jsp");
        } else {
            req.getRequestDispatcher("/WEB-INF/login.jsp").forward(req, res);
        }

    }

    // Same reason for redirection path
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        Map<String, String> indication = new HashMap<>();

        if (username == null || username.isEmpty()) {
            indication.put("username", "Entrez votre nom d'utilisateur");
        }

        if (password == null || password.isEmpty()) {
            indication.put("password", "Entrez votre mot de passe");
        }

        if (indication.isEmpty()) {
            // Change username + password?
            if (username.equals("root") && password.equals("root")) {
                req.getSession().setAttribute("user", username);
                res.sendRedirect((req.getContextPath() + "/WEB-INF/userDetails.jsp"));
                return;
            } else {
                indication.put("login", "Connexion impossible, veuillez réessayer");
            }
        }
        req.setAttribute("indication", indication);
        req.getRequestDispatcher("/WEB-INF/login.jsp").forward(req, res);
    }

}
