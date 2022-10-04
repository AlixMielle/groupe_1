package com.example.groupe_1.servlet;

import com.example.groupe_1.entity.User;
import com.example.groupe_1.dao.DaoFactory;
import com.example.groupe_1.dao.UserDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/user/add")
public class AddUserServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/createUserForm.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String idUserStr = req.getParameter("idUser");

        int id = Integer.parseInt(idUserStr);
        String firstname = req.getParameter("firstname");
        String lastname = req.getParameter("lastname");
        String username = req.getParameter("username");
        String email = req.getParameter("email");
        String pictureUrl = req.getParameter("pictureUrl");
        String password = req.getParameter("password");

        UserDao userDao = DaoFactory.getUserDAO();
        userDao.create(new User(id, firstname, lastname, username, email, pictureUrl, password));

        resp.sendRedirect(req.getContextPath() + "/user/profile");
    }
}
