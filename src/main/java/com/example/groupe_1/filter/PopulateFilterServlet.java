package com.example.groupe_1.filter;

import com.example.groupe_1.dao.DaoFactory;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebFilter("/index.jsp")
public class PopulateFilterServlet implements Filter{

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) servletRequest;
        HttpServletResponse resp = (HttpServletResponse) servletResponse;

        if (DaoFactory.getRecipeDAO().findAll().isEmpty()) {
            resp.sendRedirect(req.getContextPath() + "/testServlet");
        } else {
            chain.doFilter(req, resp);
        }
    }
}

