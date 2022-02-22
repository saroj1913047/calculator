package com.org.personal.controller;

import com.org.personal.calculate.Calculation;
import com.org.personal.infixtoprifix.InfixToPreFix;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Controller", value = "/controller")
public class Controller extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String s = request.getParameter("screen");
        System.out.println(s);
        if(s == null){
            throw new RuntimeException("Please enter some numbers");
        }else {
            StringBuilder prefix = InfixToPreFix.infixToPreFix(s);
            System.out.println(prefix);
            Double d = Calculation.convert(prefix);
            System.out.println(d);
            request.setAttribute("results", Double.toString(d));
            RequestDispatcher dispatcher = request.getRequestDispatcher("index1.jsp");
            dispatcher.forward(request, response);
        }

    }
}
