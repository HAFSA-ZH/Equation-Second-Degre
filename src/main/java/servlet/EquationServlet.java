package servlet;

import model.Equation;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;


@WebServlet("/calculer")
public class EquationServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            double a = Double.parseDouble(request.getParameter("a"));
            double b = Double.parseDouble(request.getParameter("b"));
            double c = Double.parseDouble(request.getParameter("c"));

            Equation equation = new Equation(a, b, c);
            double[] solutions = equation.getSolutions();

            request.setAttribute("equation", equation);
            request.setAttribute("solutions", solutions);
            
            request.getRequestDispatcher("resultat.jsp").forward(request, response);
        } catch (NumberFormatException e) {
            request.setAttribute("error", "Veuillez entrer des valeurs numériques valides.");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }
}

