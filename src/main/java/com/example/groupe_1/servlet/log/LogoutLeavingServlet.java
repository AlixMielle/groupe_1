package com.example.groupe_1.servlet.log;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

// To ADD: auth filter
@WebServlet("/leave")
public class LogoutLeavingServlet  extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String exit = req.getParameter("exit");
        boolean exitSuccess = Boolean.parseBoolean(exit);
        if (exitSuccess) {
            req.getSession().invalidate();
        }
        res.sendRedirect(req.getContextPath() + "/login");
    }
}
