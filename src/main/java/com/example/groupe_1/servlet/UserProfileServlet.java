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

@WebServlet ("/user/profile")
public class UserProfileServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try{
            int userId = (int)req.getSession().getAttribute("userId");
            Optional<User> userOptional = DaoFactory.getUserDAO().findOne(userId);
            if(userOptional.isPresent()){
                req.setAttribute("user", userOptional.get());
                req.getRequestDispatcher("/WEB-INF/userDetails.jsp").forward(req, resp);
            }
        } catch (Exception e){
            resp.sendRedirect(req.getContextPath() + "/login");
        }

    }

}
