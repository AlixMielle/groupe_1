package com.example.groupe_1.servlet.log;

import com.example.groupe_1.dao.DaoFactory;
import com.example.groupe_1.entity.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    // Redirect to profile because there are a lot of user options
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        HttpSession session = req.getSession();
        boolean alreadyLoggedIn = (session != null && session.getAttribute("user") != null);
        if (alreadyLoggedIn) { //GOTO profile
            res.sendRedirect(req.getContextPath() + "/user/profile");
        } else {
            req.getRequestDispatcher("/WEB-INF/login.jsp").forward(req, res);
        }

    }

    // Same reason for redirection path
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        Map<String, String> indication = new HashMap<>();

        if (email == null || email.isEmpty()) {
            indication.put("username", "Entrez votre nom d'utilisateur");
        }

        if (password == null || password.isEmpty()) {
            indication.put("password", "Entrez votre mot de passe");
        }

        if (indication.isEmpty()) {

            Optional<User> userOptional = DaoFactory.getUserDAO().findByLogin(email, password);
            if (userOptional.isPresent()) {
                req.getSession().setAttribute("userId", userOptional.get().getId());
                res.sendRedirect((req.getContextPath() + "/user/profile"));
                return;
            } else {
                indication.put("login", "Connexion impossible, veuillez réessayer");
            }
        }
        req.setAttribute("indication", indication);
        req.getRequestDispatcher("/WEB-INF/login.jsp").forward(req, res);
    }

}
