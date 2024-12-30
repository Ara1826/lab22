package servlets;

import beans.ResultsBean;
import com.google.gson.Gson;
import jakarta.servlet.ServletException;
import utils.AreaChecker;
import utils.CoordinatesValidator;
import utils.ErrorUtil;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.Duration;
import java.time.LocalDateTime;

@WebServlet("/check")
public class AreaCheckServlet extends HttpServlet {
    public static final int SC_UNPROCESSABLE_ENTITY = 422;
    public static final int SC_INTERNAL_SERVER_ERROR = 500;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        long time = System.nanoTime();
        double x ;
        double y ;
        double r ;
        try {
            x = ControllerServlet.getDouble(request, "x");
            y = ControllerServlet.getDouble(request, "y");
            r = ControllerServlet.getDouble(request, "r");

            CoordinatesValidator validator = new CoordinatesValidator(x, y, r);

            if (!validator.checkData()) {
                System.out.println("Validation haven't passed");
                ErrorUtil.sendError(response, SC_UNPROCESSABLE_ENTITY, "Data haven't passed validation");
                return;
            }

            ResultsBean bean = (ResultsBean) request.getSession().getAttribute("results");
            if (bean == null) {
                bean = new ResultsBean();
                request.getSession().setAttribute("results", bean);
            }
            // code for checking script evaluation time


            ResultsBean.Result result = new ResultsBean.Result(String.valueOf(x),
                    String.valueOf(y), String.valueOf(r), AreaChecker.isInArea(x, y, r), String.valueOf((System.nanoTime() - time)/1_000_000.0) );
            bean.addResult(result);

            // Respond with JSON
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(new Gson().toJson(result));
        } catch (NumberFormatException e) {
            ErrorUtil.sendError(response, SC_UNPROCESSABLE_ENTITY, "Invalid number format");
        } catch (Exception e) {
            e.printStackTrace();
            ErrorUtil.sendError(response, SC_INTERNAL_SERVER_ERROR, "Internal Server Error");
        }
    }
}