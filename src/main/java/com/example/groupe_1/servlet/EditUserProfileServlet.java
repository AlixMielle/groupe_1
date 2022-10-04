package com.example.groupe_1.servlet;

import com.example.groupe_1.dao.DaoFactory;
import com.example.groupe_1.entity.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.Optional;

@WebServlet("/user/edit")
public class EditUserProfileServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String idStr = req.getParameter("id");
        Optional<User> user = DaoFactory.getUserDAO().findOne(Integer.parseInt(idStr));
        if (user.isPresent()) {
            req.setAttribute("user", user.get());
            req.getRequestDispatcher("/WEB-INF/editUserForm.jsp").forward(req, resp);
        } else {
            resp.sendRedirect(req.getContextPath() + "/user/profile");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String idStr = req.getParameter("id");

        int id = Integer.parseInt(idStr);
        String firstname = req.getParameter("firstname");
        String lastname = req.getParameter("lastname");
        String username = req.getParameter("username");
        String email = req.getParameter("email");
        String pictureUrl = req.getParameter("pictureUrl");
        String password = req.getParameter("password");

        DaoFactory.getUserDAO().edit(new User(id, firstname, lastname, username, email, pictureUrl, password));

        resp.sendRedirect(req.getContextPath() + "/user/profile");
    }

}
