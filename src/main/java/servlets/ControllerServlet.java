package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


import utils.ErrorUtil;

import static servlets.AreaCheckServlet.SC_INTERNAL_SERVER_ERROR;

@WebServlet("/controller")
public class ControllerServlet extends HttpServlet {

    //    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    //        processRequest(request, response);
    //    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws  IOException {
        try {
            if (request.getParameter("x") != null && request.getParameter("y") != null && request.getParameter("r") != null) {
                request.getRequestDispatcher("./check").forward(request, response);
            } else {
                request.getRequestDispatcher("./index.jsp").forward(request, response);
            }

        } catch (ServletException | IOException e) {
            // Log the exception for debugging
            e.printStackTrace();
            ErrorUtil.sendError(response, SC_INTERNAL_SERVER_ERROR, "Internal Server Error");
        }
    }

    public static double getDouble(HttpServletRequest request, String parameter) {
        String param = request.getParameter(parameter);
        return Double.parseDouble(param.replace(",", "."));
    }
}