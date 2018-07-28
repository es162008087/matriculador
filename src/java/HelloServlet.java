/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author alvaro.toriz
 */
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/hello")
public class HelloServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Preprocess request: we actually don't need to do any business stuff, so just display JSP.
        request.getRequestDispatcher("/hello.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Postprocess request: gather and validate submitted data and display the result in the same JSP.

        // Prepare messages.
        Map<String, String> messages = new HashMap<String, String>();
        request.setAttribute("messages", messages);

        // Get and validate name.
        String name = request.getParameter("name");
        if (name == null || name.trim().isEmpty()) {
            messages.put("name", "Por favor, escriba su nombre");
        } else if (!name.matches("\\p{Alnum}+")) {
            messages.put("name", "Por favor, escriba solamente carácteres alfanuméricos");
        }

        // Get and validate age.
        String age = request.getParameter("age");
        if (age == null || age.trim().isEmpty()) {
            messages.put("age", "Por favor, escriba su edad");
        } else if (!age.matches("\\d+")) {
            messages.put("age", "Por favor, escriba solamente dígitos");
        }

        // No validation errors? Do the business job!
        if (messages.isEmpty()) {
            messages.put("success", String.format("Hola, tu nombre es: %s y tu edad es: %s!", name, age));
        }

        request.getRequestDispatcher("/hello.jsp").forward(request, response);
    }

}
