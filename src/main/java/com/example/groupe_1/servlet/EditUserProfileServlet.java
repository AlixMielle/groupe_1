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

@WebServlet("/auth/user/edit")
public class EditUserProfileServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try{
            int userId = (int)req.getSession().getAttribute("userId");
            Optional<User> userOptional = DaoFactory.getUserDAO().findOne(userId);
            if(userOptional.isPresent()){
                req.setAttribute("user", userOptional.get());
                req.getRequestDispatcher("/WEB-INF/editUserForm.jsp").forward(req, resp);
            }
        } catch (Exception e){
            resp.sendRedirect(req.getContextPath() + "/login");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int id = Integer.parseInt(req.getParameter("id"));
        String firstname = req.getParameter("firstname");
        String lastname = req.getParameter("lastname");
        String username = req.getParameter("username");
        String email = req.getParameter("email");
        String pictureUrl = req.getParameter("pictureUrl");
        String password = req.getParameter("password");

        DaoFactory.getUserDAO().edit(new User(id, firstname, lastname, username, email, pictureUrl, password));

        resp.sendRedirect(req.getContextPath() + "/auth/user/profile");
    }

}
