package com.example.groupe_1.servlet.log;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

// To ADD : filter auth/
@WebServlet("/logout")
public class LogoutServlet  extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/logout.jsp").forward(req, res);
    }
}
