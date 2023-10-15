package com.rubinho.second_lab;

import java.io.*;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "controllerServlet", value = "/control")
public class ControllerServlet extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");
        if (request.getParameter("x") != null && request.getParameter("y") != null && request.getParameter("R") != null) {
            getServletContext().getNamedDispatcher("AreaCheckServlet").forward(request, response);
        } else if (request.getParameter("clear") != null) {
            ServletContext context = getServletContext();
            context.removeAttribute("rows");
            getServletContext().getNamedDispatcher("ForwardServlet").forward(request, response);

        } else {
            response.sendRedirect("/index.jsp");
        }

    }

}