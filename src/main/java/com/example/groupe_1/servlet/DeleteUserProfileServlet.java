package com.example.groupe_1.servlet;

import com.example.groupe_1.dao.DaoFactory;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet ("/user/delete")
public class DeleteUserProfileServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String idUserStr = req.getParameter("idUser");

        DaoFactory.getUserDAO().delete(Integer.parseInt(idUserStr));

        resp.sendRedirect(req.getContextPath() + "/home");
    }
}
